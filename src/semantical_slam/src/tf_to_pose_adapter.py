#!/usr/bin/env python
import rospy

#import msgs type
from std_msgs.msg import String
from tf import tfMessage
from geometry_msgs.msg import Pose

#when a msg arrive we filter it in order to obtain just a string
def callback(msg):
	adapted_pose=Pose()
	adpted_pose.position.x=msg.translation.x
	adpted_pose.position.y=msg.translation.y
	adpted_pose.position.z=msg.translation.z
	adpted_pose.orientation=msg.rotation
	pub.publish(adapted_pose)
	

#main
def main():
	rospy.init_node('tf_to_pose_adapter')
	pub=rospy.Publisher('/adapted_pose', Pose)
	sub=rospy.Subscriber('/tf ', tfMessage, callback,)
	rospy.spin()

if __name__== "__main__":
  main()
