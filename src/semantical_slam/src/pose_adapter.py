#!/usr/bin/env python

import rospy
import math

# import msgs type
from geometry_msgs.msg import PoseStamped, Pose2D


#callback
def callback(msg):
    adapted_pose2D = Pose2D()
    adapted_pose2D.x = msg.pose.position.x
    adapted_pose2D.y = msg.pose.position.y

    x = msg.pose.orientation.x
    y = msg.pose.orientation.y
    z = msg.pose.orientation.z
    w = msg.pose.orientation.w

    adapted_pose.theta = math.asin(2*(x*z - w*y))

    pub.publish(adapted_pose)


# main
def main():
    rospy.init_node('pose_adapter')
    sub = rospy.Subscriber('/publish_pose', PoseStamped, callback)
    pub = rospy.Publisher('/adapted_pose2D', Pose2D)
    rospy.spin()


if __name__ == "__main__":
    main()
