#!/usr/bin/env python

#This script is meant for testing the nodes. Some random string are published in the '/adapted_message' topic and then the process is suspended.

import rospy
import random 

#import msgs type
from std_msgs.msg import String
from geometry_msgs.msg import Pose, PoseStamped
from semantical_slam.msg import SemanticalPoint

#import service
from semantical_slam.srv import CreateSemMsg

def test():
	#Initialization of the publisher to the topic named '/adapted_message' and the node named 'test'
	pub = rospy.Publisher('/adapted_message', String, queue_size=10)
	rospy.init_node('test')
	#Set the frequency of the published msg
	rate = rospy.Rate(0.1)
	#Possible simulated messages to be published as semantic information (string type) hypotetically acquired from beacons or object recognition module
	detected_places_or_interesting_objects = ["kitchen", "person", "ball", "sofa", "laptop", "restroom", "book", "mug", "diego milito", "television", "chair"]
	
	while not rospy.is_shutdown():
		index = random.randint(0, len(detected_places_or_interesting_objects) - 1)
		pub.publish(detected_places_or_interesting_objects[index])
		rate.sleep()

#main
if __name__ == '__main__':
    try:
        test()
    except rospy.ROSInterruptException:
        pass
