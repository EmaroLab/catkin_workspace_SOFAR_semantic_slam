#!/usr/bin/env python

################################################################

import rospy
from std_msgs.msg import String
from sensor_msgs.msg import Image,CompressedImage,Range,Imu
from geometry_msgs.msg import Twist,Pose2D

import miro_msgs
from miro_msgs.msg import platform_config,platform_sensors,platform_state,platform_mics,platform_control,core_state,core_control,core_config,bridge_config,bridge_stream

from math import pow, atan2, sqrt
import numpy
import time
import sys
from miro_constants import miro

from datetime import datetime

## \file gb_miro.py
## \brief The node gb_miro.py subscribes to the pose of miro to know his position, read from user's input the goal position and publish a platform_control message
## @n A platform_control message contains linear and angular velocities necessary to reach the goal, the lightening pattern of miro's body and other tipes of messages @n.
## @n More in details:
## @n Subscribe to the topic /miro/'robot_name'/world/pose
## @n Read from that topic the miro's position
## @n Read from user's input the goal position and compute the trajectory necessary to reach the goal
## @n Publish on /gb a platform_control msg containing miro body velocity and a lightening pattern


##\brief The class miroBOT_miro implements the Goal based behavior

class miroBOT_miro():
    ## Constructor
    def __init__(self):
        
        ## Linear and Angular velocities that will be part of the platform_control message
        self.body_vel=Twist()
	## Publisher on the topic /gb a message of type platform_control which corresponds to the Goal Based Behavior
        self.pub_platform_control = rospy.Publisher('/gb', platform_control, queue_size=0)
	## Subscriber to the topic /world/pose to know the position and orientation of miro
        self.pose_subscriver=rospy.Subscriber('/miro/miro_robot/world/pose',Pose2D,self.update_pose)
	self.pose=Pose2D()
        ## Node rate
	self.rate=rospy.Rate(100)

    def update_pose(self, data):
        #Callback function which is called when a new message of type Pose is received by the subscriber.
        self.pose = data
        self.pose.x = round(self.pose.x, 4)
        self.pose.y = round(self.pose.y, 4)

    def euclidean_distance(self, goal_pose):
        #Euclidean distance between current pose and the goal.
        return sqrt(pow((goal_pose.x - self.pose.x), 2) +
                    pow((goal_pose.y - self.pose.y), 2))

    def linear_vel(self, goal_pose, constant=29):
       
        return constant * self.euclidean_distance(goal_pose)

    def steering_angle(self, goal_pose):
	angolo= atan2(goal_pose.y - self.pose.y, goal_pose.x - self.pose.x)
        
	return angolo

    def angular_vel(self, goal_pose, constant=1):
        angle=self.steering_angle(goal_pose)-self.pose.theta
	if angle<-3.15:
		angle=6.28+(self.steering_angle(goal_pose)-self.pose.theta)
		
		print "bbkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk"
		vel=constant * (angle)
	else:
		vel=constant * (angle)
	print "angle: "
	print angle
        return  vel
     
    def move2goal(self):
	## Function that asks the goal position and construct the platform_control message to publish
   
        q=platform_control()
        goal_pose = Pose2D()
	# Get the input from the user.
        goal_pose.x = input("Set your x goal: ")
        goal_pose.y = input("Set your y goal: ")

        # Please, insert a number slightly greater than 0 (e.g. 0.01).
        distance_tolerance = input("Set your tolerance: ")

       
	while self.euclidean_distance(goal_pose) >= distance_tolerance:

            # Linear velocity in the x-axis.
            self.body_vel.linear.x = self.linear_vel(goal_pose)
            self.body_vel.linear.y = 0
            self.body_vel.linear.z = 0

            # Angular velocity in the z-axis.
            self.body_vel.angular.x = 0
            self.body_vel.angular.y = 0
	    
            self.body_vel.angular.z = (self.angular_vel(goal_pose))
	    print self.body_vel.angular.z
	      
	    #print  self.body_vel.angular.z
	    q.body_vel = self.body_vel
            self.pub_platform_control.publish(q)
            self.rate.sleep()
        self.body_vel.linear.x = 0
	self.body_vel.angular.z =0
	q.body_vel = self.body_vel
        self.pub_platform_control.publish(q)
        rospy.spin()
	

if __name__== '__main__':
        rospy.init_node('miroBOT_miro')
    
	x= miroBOT_miro()
	x.move2goal()
  
