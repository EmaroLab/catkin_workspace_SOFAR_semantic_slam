#!/usr/bin/env python

################################################################

import rospy
from std_msgs.msg import String
from sensor_msgs.msg import Image,CompressedImage,Range,Imu
from geometry_msgs.msg import Twist,Pose

import miro_msgs
from miro_msgs.msg import platform_config,platform_sensors,platform_state,platform_mics,platform_control,core_state,core_control,core_config,bridge_config,bridge_stream


import math
import numpy
import time
import sys
from miro_constants import miro

from datetime import datetime


## \file oab_miro.py
## \brief The node oab_miro.py subscribes to the sonar and check the presence of an obstacle
## @n If the obstacle is present the strategy is to start turning right until no obstacle is present anymore; if the obstacle is detected for more than two times in a row it changes the direction of rotation.
## @n More in details: 
## @n Subscribe to the topic /platform/sensors
## @n Read the value from the sonar and check the presence of an obstacle
## @n if there is an obstacle implement the obstacle avoidance behaviour 
## @n The obstacle avoidance behavior:
## @n When Miro detects an obstacle it starts turning right of 1.9 radians and go straight for a little bit
## @n until there is no obstacle anymore. If the obstacle is detected for more than two times in a row it starts turning 
## @n left  with the same strategy of before.

##The class ObstacleAvoidance implements the obstacle Avoidance Behavior

class ObstacleAvoidance():

        
    def __init__(self):

        ## Topic root
        self.robot_name = rospy.get_param ( '/robot_name', 'miro_robot')
        topic_root = "/miro/" + self.robot_name
        print "topic_root", topic_root
	
        ## Signal if there is an obstacle or not
        self.obstacle = False
        ## Counter that increase the each time the same obstacle is encoutered
        self.counter=0
        ## Sonar theshold below which an obstacle is encountered
        self.danger_threshold = rospy.get_param ('sonar_threshold',1)
        ## Linear and Angular velocities that will be part of the platform_control message
        self.body_vel=Twist()
	## Subscriber to the topic /platform/sensors a message of type platform_sensors that cointains the sonar readings
        self.sub_sonar_data = rospy.Subscriber(topic_root + "/platform/sensors", platform_sensors, self.callback_oab,queue_size=1)
        ## Publisher to the topic /oab a message of type platform_control which corresponds to the Obstacle Avoidance Behavior
        self.pub_platform_control = rospy.Publisher('/oab', platform_control, queue_size=1)
        ## Node rate
        self.rate = rospy.get_param('rate',1)

	global i
	i=1
   
    
    def callback_oab(self,sonar_data):
   	## Callback that receives the data from the robot sensors, and uses the information given by the sonar sensor to evaluate the presence 	
	## of an obstacle.

        q=platform_control()
        sonar_value = sonar_data.sonar_range.range

        self.obstacle =  sonar_value < self.danger_threshold
	
        if self.obstacle:
	    global i
            r = rospy.Rate(self.rate)

	    ## Counter of how many times the obstacle is encountered
            self.counter=self.counter+1
	
            ## Linear velocity in the x-axis.
            self.body_vel.linear.x=400
	    self.body_vel.linear.y=0
	    self.body_vel.linear.z=0
            
            ## Angular velocity in the z-axis.
	    self.body_vel.angular.x=0
	    self.body_vel.angular.y=0
            self.body_vel.angular.z=-1.9*i

            q.body_vel = self.body_vel

	    self.pub_platform_control.publish(q)

	    self.pub_platform_control.publish(q)

	    ## If the obstacle is encountered more than two times
	    if self.counter == 3:
		i=i*-1 #change right/left
	    
	    r.sleep()

	## There is no more obstacle
        else:
            self.counter=0
        

    def main (self):
        rospy.spin()

if __name__== '__main__':
    rospy.init_node('oab_miro')
    oab = ObstacleAvoidance()
    oab.main()
