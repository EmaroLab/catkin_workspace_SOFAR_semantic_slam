#!/usr/bin/env python
import rospy

#import needed fr the creation of the server-user 
from semantical_slam.srv import CreateSemMsg, CreateSemMsgResponse

#import msgs type
from std_msgs.msg import String
from geometry_msg.msg import Pose
from semantical_slam.msg import SemanticalPoint

#assemble the msg from the two msgs in input pose and string. We keep just
# x y from the pose and the string. We use just x and y for compatibility reason
# navigation use 2d points. The message is stored in SemanticalPoint custom msg

def create_sem_msg(request)
	final_message=SemanticalPoint()
	final_message.x=actual_pose.position.x
	final_message.y=actualpose.position.y
	final_message.place_name=actual_place.data
	return CreateSemMsgResponse(final_message)	

#inizialize both node and service
rospy.init('semantical_assembler_server')
service = rospy.Service('create_sem_msg',CreateSemMsg, create_sem_msg)
rospy.spin()
