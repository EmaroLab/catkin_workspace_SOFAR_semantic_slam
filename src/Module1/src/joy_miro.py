#!/usr/bin/env python2

################################################################

import rospy
from geometry_msgs.msg import Twist
from sensor_msgs.msg import Joy

import sys, select, termios, tty
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

## \file joy_miro.py
## \brief The node joy_miro.py node converts Joystick inputs into commands for MiRo.
## @n More in details: 
## @n Subscribe to the topic /modalities
## @n Read the modality of navigation chosen
## @n Subscribe to the topic /joy
## @n Converts the joysick inputs into Twist commands
## @n Axis 1 aka left stick vertical controls linear speed
## @n Axis 2 aka right stick horizonal controls angular speed
## @n If the manual modality has been chosen publish on /control/cmd_vel a Twist message containing MiRo's linear and angular body velocities


def start():


    ## Publisher on the topic /control/cmd_vel a message of type Twist
    global pub
    pub = rospy.Publisher('/miro/miro_robot/platform/control', platform_control, queue_size = 5)
    ## Subscriber to the topic /modalities a message of type Int32 that rapresents the modality of navigation chosen
    rospy.Subscriber("/modalities", Int32, callback_mod)
    ## Subscriber to the topic /joy to joystick inputs
    rospy.Subscriber("joy", Joy, callback)
    
    global i
    i = 2

    rospy.spin()


def callback_mod( data):
    ## Callback function that receives the modality of navigation chosen
    global i
    if data.data == 1:
	## Manual modality
	i = 1
	
    else:
	## Autonomous modality
	i = 0 
		 

def callback(data):
    ## Callback function that receives the data from the joystick and based on the value of the variable i, that represent
    ## the modality of navigation chosen, publishes the velocity commands
    global i
    q = platform_control()

    ## Vertical left stick axis = linear rate
    q.body_vel.linear.x = 100 * data.axes[1]
    ## Horizontal right stick axis = turn rate
    q.body_vel.angular.z = 100 * data.axes[2]

    if i == 1:
	## If the modality is manual

    	## Publishing the message
    	pub.publish(q)

if __name__ == '__main__':
	rospy.init_node('joy_miro')
        start()
