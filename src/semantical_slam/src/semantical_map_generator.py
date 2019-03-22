#!/usr/bin/env python
import rospy

from std_msgs.msg import string
from geometry_msg.msg import geometry_msgs/Pose
from semantical_slam.msg import SemanticalPoint

rom semantical_slam.srv import CreateSemMsg


rospy.init_node('semantical_map_genrator')
acual_pose=pose()
#when arrives a smessage from beacon o image reconiction store the string and
#calls service to create the SemanticalPoint  to ben published

def callback0(msg_from_adapter, args):
	actual_pose=args[0]
	actual_place=string()
	final_ponint=SemanticalPoint()
	actual_place.data=msg_from_adapter.data 
	rospy.wait_for_service('create_sem_msg')
	creator_sem_msg = rospy.ServiceProxy('create_sem_msg',CreateSemMsg)
	final_point=create_sem_msg(actual_place, actual_pose)
	pub.publish(final_point)


#when arrives a message from wordl pose store it in actual_pose
def callback1(msg_from_miro):
	actual_pose=geometry_msgs/Pose()
	actual_pose.position=msg_from_miro.position
	actual_pose.quternion=msg_from_miro.quaternion
	return actual_pose
	
#main
def main():
	sub1=rospy.Subscriber('adapted_message', string, callback0,(actual_pose))
	sub2=rospy.Subscriber('miro/rob01/wordl/pose',geometry_msgs/Pose,callback1)#wordlpose

	pub=rospy.Publisher('semantical_loci', SemanticalPoint)

	rospy.spin()

if __name__== "__main__":
  main()
