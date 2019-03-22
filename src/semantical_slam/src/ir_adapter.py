#!/usr/bin/env python
import rospy

#import msg type
from std_msgs.msg import String
#from chissa dove importa msgs ir

#when a msg arrive we filter it in order to get just a string
def callback(msg_from_adapter, args):
	actual_place=String()
	actual_place=loromsg.namedtupl
	pub.publsh(actual_place)
	

	
#main
def main():
	rospy.init_node('ir_adapter')
	sub=rospy.Subscriber('topic su cui pubblicano i tizi ', loro cose, callback,)
	pub=rospy.Publisher('adapted_message', String)
	rospy.spin()

if __name__== "__main__":
  main()
