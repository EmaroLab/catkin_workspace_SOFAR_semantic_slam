#!/usr/bin/env python
import rospy

from semantical_slam.srv import CreateSemMsg, CreateSemMsgResponse

from std_msgs.msg import String
from geometry_msg.msg import Pose
from semantical_slam.msg import SemanticalPoint

def create_sem_msg(request)
	final_message=SemanticalPoint()
	final_message.x=actual_pose.position.x
	final_message.y=actualpose.position.y
	final_message.place_name=actual_place.data
	return CreateSemMsgResponse(final_message)	

rospy.init('semantical_assembler_server')
service = rospy.Service('create_sem_msg',CreateSemMsg, create_sem_msg)
rospy.spin()
