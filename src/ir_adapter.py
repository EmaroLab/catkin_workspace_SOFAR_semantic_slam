#!/usr/bin/env python
import rospy

#import msg type
from std_msgs.msg import String, Float32
from cob_perception_msgs.msg import DetectionArray, Detection

#when a msg arrive we filter it in order to get just a string
def callback(msg):
	mes = String()
	threshold = Float32()
	pub=rospy.Publisher('/adapted_message', String, queue_size = 100)

	for i in range (len(msg.detections)):
		obj = Detection()
		obj = msg.detections[i]
		mes.data = obj.label
		threshold.data = obj.score

		if threshold.data > 0.8:
			pub.publish(mes)

#main
def main():
	rospy.init_node('ir_adapter')
	sub=rospy.Subscriber('/object_detection/detections', DetectionArray, callback)


	rospy.spin()

if __name__== "__main__":
  main()
