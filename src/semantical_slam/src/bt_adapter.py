#!/usr/bin/env python
import rospy
from std_msgs.msg import string


rospy.init_node('bt_adapter')


def callback(msg_from_adapter):
	actual_place=string()
	actual_place=loromsg.namedtupl
	pub.publsh(actual_place)
	

	
#main
def main():
	sub=rospy.Subscriber('topic su cui pubblica bt ', loro cose, callback,)
	pub=rospy.Publisher('adapted_message', string)
	rospy.spin()

if __name__== "__main__":
  main()
