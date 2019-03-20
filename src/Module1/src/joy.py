#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Twist
from sensor_msgs.msg import Joy

import sys, select, termios, tty
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

## \file joy.py
## \brief This ROS Node converts Joystick inputs from the joy node into commands for Miro
## @n More in details: 
## @n Subscribe to the topic joy
## @n Then converts the joysick inputs into Twist commands
## @n Axis 1 aka left stick vertical controls linear speed
## @n Axis 2 aka right stick horizonal controls angular speed

## Intializes everything
def start():
    ## publishing to ".../cmd_vel" to control miro
    global pub
    pub = rospy.Publisher('/miro/miro_robot/control/cmd_vel', Twist, queue_size = 1)
    ## subscribed to joystick inputs on topic "joy"
    rospy.Subscriber("joy", Joy, callback)
    ## starts the node
    
    rospy.spin()
def callback(data):
    twist = Twist()
    ## vertical left stick axis = linear rate
    twist.linear.x = 4*data.axes[1]
    ## horizontal right stick axis = turn rate
    twist.angular.z = 4*data.axes[2]
    pub.publish(twist)

if __name__ == '__main__':
	rospy.init_node('Joy')
        start()
