#!/usr/bin/env python
import rospy
from std_msgs.msg import String


rospy.init_node('ir_adapter')


def callback(msg_from_adapter, args):
	actual_place=String()
	actual_place=loromsg.namedtupl
	pub.publsh(actual_place)
	

	
#main
def main():
	sub=rospy.Subscriber('topic su cui pubblicano i tizi ', loro cose, callback,)
	pub=rospy.Publisher('adapted_message', String)
	rospy.spin()

if __name__== "__main__":
  main()
