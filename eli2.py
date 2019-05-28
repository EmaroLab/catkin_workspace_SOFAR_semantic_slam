#!/usr/bin/env python
import rospy
from std_msgs.msg import String
import subprocess
import sys



def talker():

  pub = rospy.Publisher('/chatter', String, queue_size=10)
  rospy.init_node('eli2', anonymous=True)
  rate = rospy.Rate(10) # 10hz
  while not rospy.is_shutdown():
    q = "[beacons ID,RSSI] %s" % rospy.get_time()
    rospy.loginfo(q)
    pub.publish(q)
    rate.sleep()
   

    ###################################################################################################################3
    subprocess.call("bluetoothctl")
   # print "this is my code"
    p = subprocess.Popen("bluetoothctl", stdout=subprocess.PIPE, shell=True)  
    (output, err) = p.communicate()
    out = output.decode()
    len1 = len(out)
    print len1
    print out
    print "RSSI", output
    
   ###################################################################################################################
if __name__ == '__main__':
  try:
    talker()
  except rospy.ROSInterruptException:
    pass
	

