#!/usr/bin/env python
import rospy
import random 

#import msgs type
from std_msgs.msg import String
from geometry_msgs.msg import Pose, PoseStamped
from semantical_slam.msg import SemanticalPoint

#import service
from semantical_slam.srv import CreateSemMsg

def test():
	pub = rospy.Publisher('/adapted_message', String, queue_size=10)
	rospy.init_node('test')
	rate = rospy.Rate(0.1)
	detected_places_or_interesting_objects = ["kitchen", "person", "ball", "sofa", "laptop", "restroom", "book", "mug", "diego milito", "television", "chair"]
	

	while not rospy.is_shutdown():
		index = random.randint(0, len(detected_places_or_interesting_objects) - 1)
		pub.publish(detected_places_or_interesting_objects[index])
		rate.sleep()

if __name__ == '__main__':
    try:
        test()
    except rospy.ROSInterruptException:
        pass
