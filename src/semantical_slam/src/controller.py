#!/usr/bin/env python
import rospy

#import msgs type
from std_msgs.msg import String
from sensor_msgs.msg import Pointcloud2


def callback():
	
	system("roslaunch semantical_slam tf_listener.launch")
	system("rosnode kill controller");


def main():
	
	rospy.init_node('controller')
	sub = rospy.Subscriber('/map_points', Pointcloud2, callback)
