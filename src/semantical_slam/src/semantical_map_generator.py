#!/usr/bin/env python
import rospy

#import msgs type
from std_msgs.msg import String
from geometry_msgs.msg import Pose
from semantical_slam.msg import SemanticalPoint

#import service
from semantical_slam.srv import CreateSemMsg


#when arrives a smessage from beacon o image reconiction store the string and
#calls service to create the SemanticalPoint  to ben published

def callback0(msg_from_adapter, args):
	actual_pose=args[0]
	actual_place=String()
	final_ponint=SemanticalPoint()
	actual_place.data=msg_from_adapter.data 
	rospy.wait_for_service('create_sem_msg')
	creator_sem_msg = rospy.ServiceProxy('create_sem_msg',CreateSemMsg)
	final_point=create_sem_msg(actual_place, actual_pose)
	pub.publish(final_point)


#when arrives a message from wordl pose store it in actual_pose
def callback1(msg_from_miro):
	actual_pose=Pose()
	actual_pose.position=msg_from_miro.position
	actual_pose.orientation=msg_from_miro.orientation
	return actual_pose
	
#main
def main():
	#initialize node
	rospy.init_node('semantical_map_genrator')
	
	#inizialize actual pose
	actual_pose=Pose()
	
	#publish the point
	pub=rospy.Publisher('/semantical_loci', SemanticalPoint,queue_size=1)
	
	#subscribe both to string and to pose topics
	sub1=rospy.Subscriber('/adapted_message', String, callback0,(actual_pose))
	sub2=rospy.Subscriber('/adapted_pose',Pose,callback1)#wordlpose

	rospy.spin()

if __name__== "__main__":
  main()
