#!/usr/bin/env python

#The node corresponding to this function subscribes to '/orb_slam2_mono/pose' topic: 
#from the read 3D pose it extracts the instance '.position' (x and y coordinates) and the instance '.orientation' needed for the computations of the theta angle.
#Once theta has been computed it suddenly publishes the new message in the '/adapted_pose2D' topic.
#This new pose is computed in order to be sent to Module 1 due to the structure of its implementation

import rospy
import math

# import msgs type
from geometry_msgs.msg import PoseStamped, Pose2D


#callback
def callback(msg, args):
    #Initialization of the variable used for the adapted pose
    adapted_pose2D = Pose2D()
    #Extraction of the instance '.position' (x, y) from the PoseStamped message
    adapted_pose2D.x = msg.pose.position.x
    adapted_pose2D.y = msg.pose.position.y
    
    #Extraction of the instance '.orientation' from the PoseStamped message
    x = msg.pose.orientation.x
    y = msg.pose.orientation.y
    z = msg.pose.orientation.z
    w = msg.pose.orientation.w

    #Compute the theta angle exploiting the orientation variable
    adapted_pose2D.theta = math.asin(2*(x*z - w*y))
    #pub.publish(adapted_pose2D)
    return 0

# main
def main():
    #Initialization of the subscriber to the topic named '/orb_slam2_mono/pose'
    sub = rospy.Subscriber('/orb_slam2_mono/pose', PoseStamped, callback, (pub))
    #Initialization of the publisher to the topic named '/adapted_pose2D'
    pub = rospy.Publisher('/adapted_pose2D', Pose2D, queue_size=10)
    #Initialization of the node named 'pose_adapter'
    rospy.init_node('pose_adapter')
    rospy.spin()


if __name__ == "__main__":
    main()
