#!/usr/bin/env python

################################################################

import rospy
from std_msgs.msg import String,Int32
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

class select_modalities():

        
    def __init__(self):
	goal_pose=Pose2D()
        ## Topic root
        self.robot_name = rospy.get_param ( '/robot_name', 'miro_robot')
        topic_root = "/miro/" + self.robot_name
        print "topic_root", topic_root
	self.rate=rospy.Rate(10)
	pub_mod = rospy.Publisher('/modalities', Int32,queue_size=1)
	pub_goal = rospy.Publisher('/goal_position', Pose2D,queue_size=1)
	while(1):  	 
		goal_pose=Pose2D()     
		x = input("Insert 1 for manual or 0 for automatic: ")
		goal_pose.x = input("Set your x goal: ")
       		goal_pose.y = input("Set your y goal: ")
		
		pub_goal.publish(goal_pose)
		
		pub_mod.publish(x)


    def main (self):
        rospy.spin()


if __name__== '__main__':
    rospy.init_node('module_5')
    mod = select_modalities()
    mod.main()
