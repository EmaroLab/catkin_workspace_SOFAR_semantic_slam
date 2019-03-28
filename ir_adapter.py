#!/usr/bin/env python
import rospy

#import msg type
from std_msgs.msg import String
from cob_perception_msgs.msg import DetectionArray, Detection

#when a msg arrive we filter it in order to get just a string
def callback(msg):
	actual_place=String()
	actual_place=msg.detections.label
	pub.publsh(actual_place)
	

#main
def main():
	rospy.init_node('ir_adapter')
	pub=rospy.Publisher('/adapted_message', String)
	sub=rospy.Subscriber('/object_detection/detections ', DetectionArray, callback)
	rospy.spin()

if __name__== "__main__":
  main()
