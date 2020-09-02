#the node receives the pose of the robot and the semantical information. 
#It merges the two received data in an SemanticalPoint type message; 
#the new message is then published on '/semantical_loci' topic.

#!/usr/bin/env python
import rospy

#import msgs type
from std_msgs.msg import String
from geometry_msgs.msg import Pose, PoseStamped
from semantical_slam.msg import SemanticalPoint

#import service
from semantical_slam.srv import CreateSemMsg

actual_pose = Pose()

#when arrives a smessage from beacon o image reconiction store the string and
#calls service to create the SemanticalPoint  to ben published

def callback0(msg_from_adapter):
	#publisher
	pub=rospy.Publisher('/semantical_loci', SemanticalPoint,queue_size=1)
	
	#init of variables
	actual_place=String()
	final_point=SemanticalPoint()

	#actual_place.data=msg_from_adapter.data 
	#rospy.wait_for_service('create_sem_msg')
	#creator_sem_msg = rospy.ServiceProxy('create_sem_msg',CreateSemMsg)
	#service call to assemble message
	#final_point=create_sem_msg(actual_place, actual_pose)
	#publish the semantic message
	
	final_point.x=actual_pose.position.x
	final_point.y=actual_pose.position.y

	final_point.place_name=msg_from_adapter.data

	pub.publish(final_point)
	return 0


#when arrives a message from wordl pose store it in actual_pose
def callback1(msg_from_miro):

	actual_pose.position=msg_from_miro.pose.position
	actual_pose.orientation=msg_from_miro.pose.orientation
	return 0
	
#main
def main():

	#initialize node
	rospy.init_node('semantical_map_generator')


	#subscribe both to string and to pose topics
	sub1=rospy.Subscriber('/adapted_message', String, callback0)
	sub2=rospy.Subscriber('/orb_slam2_mono/pose',PoseStamped,callback1)#world pose

	rospy.spin()

if __name__== "__main__":
  main()
