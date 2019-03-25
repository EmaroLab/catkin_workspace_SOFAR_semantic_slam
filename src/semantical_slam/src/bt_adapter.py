#!/usr/bin/env python
import rospy

#import msgs type
from std_msgs.msg import String
#from chissa dove importa messsagio loro

#when a msg arrive we filter it in order to obtain just a string
def callback(msg):
	actual_place=String()
	actual_place=msg.string
	pub.publsh(actual_place)
	

#main
def main():
	rospy.init_node('bt_adapter')
	pub=rospy.Publisher('/adapted_message', String)
	sub=rospy.Subscriber('/topic su cui pubblica bt ', loro cose, callback,)
	rospy.spin()

if __name__== "__main__":
  main()
