#!/usr/bin/env python
import rospy

#import msg type
from std_msgs.msg import String
#from chissa dove importa msgs ir

#when a msg arrive we filter it in order to get just a string
def callback(msg):
	actual_place=String()
	actual_place=masg.string
	pub.publsh(actual_place)
	

#main
def main():
	rospy.init_node('ir_adapter')
	pub=rospy.Publisher('/adapted_message', String)
	sub=rospy.Subscriber('/topic su cui pubblicano i tizi ', loro cose, callback,)
	rospy.spin()

if __name__== "__main__":
  main()
