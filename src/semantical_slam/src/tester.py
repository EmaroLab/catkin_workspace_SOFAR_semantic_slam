#This script is meant for testing the nodes. 
#Some random string are published in the '/adapted_message' topic and then the process is suspended.
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
	#publisher and node are initialized
	pub = rospy.Publisher('/adapted_message', String, queue_size=10)
	rospy.init_node('test')
	#frequecy of published msg is set
	rate = rospy.Rate(0.1)
	#we simulate to publish a semantic information (string type) hypotetically acquired from beacons
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
