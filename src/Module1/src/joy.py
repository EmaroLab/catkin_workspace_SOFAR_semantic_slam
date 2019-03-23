#!/usr/bin/env python2

################################################################

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
## \brief The node joy.py node converts Joystick inputs into commands for MiRo.
## @n More in details: 
## @n Subscribe to the topic /joy
## @n Converts the joysick inputs into Twist commands
## @n Axis 1 aka left stick vertical controls linear speed
## @n Axis 2 aka right stick horizonal controls angular speed
## @n Publish on /control/cmd_vel a Twist message containing MiRo's linear and angular body velocities


def start():
    ## Publisher on the topic /control/cmd_vel a message of type Twist
    global pub
    pub = rospy.Publisher('/miro/miro_robot/control/cmd_vel', Twist, queue_size = 1)
    ## Subscriber to the topic /joy to joystick inputs
    rospy.Subscriber("joy", Joy, callback)
    
    rospy.spin()

def callback(data):
    twist = Twist()
    ## Vertical left stick axis = linear rate
    twist.linear.x = 4*data.axes[1]
    ## Horizontal right stick axis = turn rate
    twist.angular.z = 4*data.axes[2]

    ## Publishing the message
    pub.publish(twist)

if __name__ == '__main__':
	rospy.init_node('Joy')
        start()
