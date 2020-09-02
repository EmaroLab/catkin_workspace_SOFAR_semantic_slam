#!/usr/bin/env python

#The node corresponding to this function assembles the two msgs that it recieves as input: a pose and a string. 
#This service is activated each time a label is recived from another node.
#Regarding the position only the x and y coordinates are extracted from the pose and then the string received is merged with it in a customized message.
#This new message is stored in SemanticalPoint custom msg

import rospy

#import needed for the creation of the server-user 
from semantical_slam.srv import CreateSemMsg, CreateSemMsgResponse

#import msgs type
from std_msgs.msg import String
from geometry_msg.msg import Pose
from semantical_slam.msg import SemanticalPoint


#Service function
def create_sem_msg(request)
	#Initialization of the variable
	final_message=SemanticalPoint()
	#Extraction of the 2D pose from the received message
	final_message.x=actual_pose.position.x
	final_message.y=actualpose.position.y
	#Extraction of the label from the other message received
	final_message.place_name=actual_place.data
	
	return CreateSemMsgResponse(final_message)	

#Inizialization of both the node 'semantical_assembler_server' and the service 'create_sem_msg'
rospy.init('semantical_assembler_server')
service = rospy.Service('create_sem_msg',CreateSemMsg, create_sem_msg)
rospy.spin()
