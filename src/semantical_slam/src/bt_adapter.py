#!/usr/bin/env python
import rospy

#import msgs type
from std_msgs.msg import string


#when a msg arrive we filter it in order to obtain just a string
def callback(msg_from_adapter):
	actual_place=String()
	actual_place=loromsg.namedtupl
	pub.publsh(actual_place)
	

	
#main
def main():
	rospy.init_node('bt_adapter')
	sub=rospy.Subscriber('topic su cui pubblica bt ', loro cose, callback,)
	pub=rospy.Publisher('adapted_message', String)
	rospy.spin()

if __name__== "__main__":
  main()
