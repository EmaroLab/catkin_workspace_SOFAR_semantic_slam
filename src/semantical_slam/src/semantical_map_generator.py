#!/usr/bin/env python

#The node corresponding to this function receives the pose of the robot and the semantical information. 
#It merges the two received data in an SemanticalPoint type message
#The customized new message is then published on a topic named '/semantical_loci'

import rospy

#import msgs type
from std_msgs.msg import String
from geometry_msgs.msg import Pose, PoseStamped
from semantical_slam.msg import SemanticalPoint

#Initialization of the Pose variable in which the current 3D pose of the robot is stored
actual_pose = Pose()

#Every time a message from the "beacon" or the "image recognition" module is received the callback stores the string in a variable and
#calls the service in order to create the SemanticalPoint to be published
def callback0(msg_from_adapter):
	
	#initialization of the variables for the label and the final message
	actual_place=String()
	final_point=SemanticalPoint()

	#Create the customized message
 	final_point.x=actual_pose.position.x
 	final_point.y=actual_pose.position.y
 	final_point.place_name=msg_from_adapter.data

# 	publish the semantic message
	pub.publish(final_point)
	return 0


#Once a message with the world pose is received the callback stores it in the actual_pose variable
def callback1(msg_from_miro):
	#Extraction of the position and orientation of the robot
	actual_pose.position=msg_from_miro.pose.position
	actual_pose.orientation=msg_from_miro.pose.orientation
	return 0


#main
def main():
	#Initialization of the node named 'semantical_map_generator'
	rospy.init_node('semantical_map_generator')
	#Initialization of both the subscribers to the topic named '/adapted_message' and to the one named '/orb_slam2_mono/pose'
	sub1=rospy.Subscriber('/adapted_message', String, callback0)
	sub2=rospy.Subscriber('/orb_slam2_mono/pose',PoseStamped,callback1) #world referenced pose
	
	#Initialization of the publisher to the topic named '/semantical_loci' 
	pub=rospy.Publisher('/semantical_loci', SemanticalPoint,queue_size=1)
	
	rospy.spin()

if __name__== "__main__":
  main()
