#it subscribes to '/orb_slam2_mono/pose' topic: 
#from the read messages it extracts the instance '.orientation'.
#Suddenly it publics the orientation data in the '/adapted_pose2D' topic.

#!/usr/bin/env python

import rospy
import math

# import msgs type
from geometry_msgs.msg import PoseStamped, Pose2D


#callback
def callback(msg, args):
    adapted_pose2D = Pose2D()
    adapted_pose2D.x = msg.pose.position.x
    adapted_pose2D.y = msg.pose.position.y

    x = msg.pose.orientation.x
    y = msg.pose.orientation.y
    z = msg.pose.orientation.z
    w = msg.pose.orientation.w

    adapted_pose2D.theta = math.asin(2*(x*z - w*y))
    #pub.publish(adapted_pose2D)
    return 0
# main
def main():
    sub = rospy.Subscriber('/orb_slam2_mono/pose', PoseStamped, callback, (pub))
    pub = rospy.Publisher('/adapted_pose2D', Pose2D, queue_size=10)
    rospy.init_node('pose_adapter')
    rospy.spin()


if __name__ == "__main__":
    main()
