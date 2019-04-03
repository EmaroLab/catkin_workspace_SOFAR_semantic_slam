#!/usr/bin/env python2

################################################################

import rospy
from std_msgs.msg import String, Bool
from sensor_msgs.msg import Image,CompressedImage,Range,Imu
from geometry_msgs.msg import Twist

import miro_msgs
from miro_msgs.msg import platform_config,platform_sensors,platform_state,platform_mics,platform_control,core_state,core_control,core_config,bridge_config,bridge_stream

import math
import numpy
import time
import sys
from miro_constants import miro

from datetime import datetime

## \file switching_behaviour_miro.py
## \brief The node switching_behaviour_miro.py allows to switch from the Goal behaviour published by gb_miro.py to the Obstacle Avoidance behaviour published by oab_miro.py.
## @n The switch depends on the presence of an obstacle. 
## @n More in details:
## @n Subscribe to the topic /platform/sensors
## @n Read the value from the sonar and check the presence of an obstacle
## @n Subscribe to the topic /gb 
## @n Subscribe to the topic /oab
## @n Publish the Goal behaviour on MiRo platform/control
## @n When an obstacle is encountered publish the Obstacle Avoidance behaviour on MiRo platform/control

##\brief The class Switchingbehaviour allows to switch between the two possible behaviours based on the presence of an obstacle

class Switchingbehaviour():

    def __init__(self):

        ## Topic root
        self.robot_name = rospy.get_param ( '/robot_name', 'miro_robot')
        topic_root = "/miro/" + self.robot_name
        print "topic_root", topic_root

	## Node rate
        self.rate = rospy.get_param('rate',2)
        ## Linear and Angular velocities that will be part of the platform_control message
        self.body_vel=Twist()
        ## Sonar theshold below which an obstacle is encountered
        self.danger_threshold = rospy.get_param ('sonar_threshold',1)
	## Signal if there is an obstacle or not
        self.safe = True
        ## Subscriber to the topic /platform/sensors a message of type platform_sensors that cointains the sonar readings
        self.sub_sonar_data = rospy.Subscriber(topic_root + "/platform/sensors", platform_sensors, self.callback_switching_condition,queue_size=1)
        ## platform_control object that rapresents the Goal behaviour
        self.q_miroBOT = platform_control()
	## Subscriber to the topic /gb a message of type platform_control that rapresents the Goal behaviour
        self.sub_miroBOT = rospy.Subscriber('/gb', platform_control, self.callback_miroBOT, queue_size=1)
	## platform_control object that rapresents the Obstacle Avoidance behaviour
        self.q_oab = platform_control()
	## Subscriber to the topic /oab a message of type platform_control that rapresents the Obstacle Avoidance behaviour
        self.sub_oab = rospy.Subscriber('/oab', platform_control, self.callback_oab, queue_size=1)
	## Publisher to the topic /platform/control on the robot a message of type platform_control that represents the selected behaviour
        self.pub_behaviour = rospy.Publisher(topic_root + "/platform/control", platform_control, queue_size=0)


    def callback_switching_condition(self,sonar_data):
   	## Callback that receives the data from the robot sensors and uses the information given by the sonar sensor to evaluate the presence 
	## of an obstacle

        sonar_value = sonar_data.sonar_range.range
        if  sonar_value < self.danger_threshold:

            self.safe = False
            print "OBSTACLE DETECTED"

        else:
            self.safe = True
            print "NO OBSTACLE"

    def callback_miroBOT( self, gb):
    	## Callback that receives the Goal behaviour as a platform_control message
	self.q_miroBOT = gb

   
    def callback_oab( self, oab):
 	## Callback that receives the Obstacle Avoidance behaviour as a platform_control message
	self.q_oab = oab

    def switching_behaviour( self):
 	## Function that based on the value of the variable safe, that represent the presence of the obstacle, publish the behaviour selected 
	## on MiRo

        q = platform_control()
	p = platform_control()
        r = rospy.Rate(self.rate)

        while not rospy.is_shutdown():

            if self.safe:
		## If there is not an obstacle
                print "goal"
		
		## Selecting Goal behaviour
                q = self.q_miroBOT

		## Publishing platform_control message
		self.pub_behaviour.publish(q)

            elif not self.safe:
		## If there is an obstacle
                print "obstacle"

		## Selecting Obstacle Avoidance behaviour
                q = self.q_oab

		## Publishing platform_control message
                self.pub_behaviour.publish(q)
		time.sleep(1.3)

            	self.body_vel.linear.x=500
		p.body_vel = self.body_vel
		self.pub_behaviour.publish(p)
		time.sleep(0.5)
		

            time.sleep(0.3)

if __name__== '__main__':

    rospy.init_node('switching_behaviour_miro')
    sb = Switchingbehaviour()
    sb.switching_behaviour()
        
