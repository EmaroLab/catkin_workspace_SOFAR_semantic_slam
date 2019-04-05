#!/usr/bin/env python

################################################################

import rospy
from std_msgs.msg import String, Int32
from sensor_msgs.msg import Image,CompressedImage,Range,Imu
from geometry_msgs.msg import Twist,Pose2D

import miro_msgs
from miro_msgs.msg import platform_config,platform_sensors,platform_state,platform_mics,platform_control,core_state,core_control,core_config,bridge_config,bridge_stream

from math import pow, atan2, sqrt
import numpy
import time
import sys
from miro_constants import miro

from datetime import datetime

## \file gb_miro.py
## \brief The node gb_miro.py subscribes to the pose of MiRo and of the goal to know their position and publishes a platform_control message.
## @n A platform_control message contains linear and angular velocities necessary to reach the goal.
## @n More in details:
## @n Subscribe to the topic /world/pose
## @n Read from that topic MiRo's position
## @n Subscribe to the topic /goal_position
## @n Read from that topic the goal position
## @n Computes the trajectory necessary to reach the goal
## @n Publish on /gb a platform_control message containing MiRo's linear and angular body velocities


##\brief The class miroBOT_miro implements the Goal behaviour

class miroBOT_miro():
	def __init__(self):
		## Topic root
		self.robot_name = rospy.get_param ( '/robot_name', 'miro_robot')
		topic_root = "/miro/" + self.robot_name
		print "topic_root", topic_root

    def __init__(self):

	## Topic root
        self.robot_name = rospy.get_param ( '/robot_name', 'miro_robot')
        topic_root = "/miro/" + self.robot_name
        print "topic_root", topic_root

		## Linear and Angular velocities that will be part of the platform_control message
		self.body_vel = Twist()
		## Publisher on the topic /gb a message of type platform_control which corresponds to the Goal behaviour
		self.pub_platform_control = rospy.Publisher('/gb', platform_control, queue_size=0)
		## Publisher on the topic /goal_reached a message when MiRo has reached the goal
		self.pub_goal_reached = rospy.Publisher('/goal_reached', Int32, queue_size=0)
		## Subscriber to the topic /world/pose to know the position and orientation of MiRo
		self.pose_subscriber = rospy.Subscriber(topic_root + "/world/pose", Pose2D, self.update_pose)
		## Subscriber to the topic /goal_position to know the position of the goal
		self.goal_subscriber = rospy.Subscriber("/goal_position", Pose2D, self.move2goal)
		self.pose=Pose2D()
		## Node rate
		self.rate=rospy.Rate(50)
 
    	def update_pose(self, data):
    	        ## Callback function which is called when a new message of type Pose is received by the subscriber
   		self.pose = data
        	self.pose.x = round(self.pose.x, 4)
        	self.pose.y = round(self.pose.y, 4)

    	def euclidean_distance(self, goal_pose):
    	    ## Euclidean distance between current pose and the goal
    	    return sqrt(pow((goal_pose.x - self.pose.x), 2) +
                    pow((goal_pose.y - self.pose.y), 2))

    	def linear_vel(self, goal_pose, constant=29):
    	    ## Linear velocity
    	    return constant * self.euclidean_distance(goal_pose)

    	def steering_angle(self, goal_pose):
		## Steering angle 
		return atan2(goal_pose.y - self.pose.y, goal_pose.x - self.pose.x)

    	def angular_vel(self, goal_pose, constant=1):
		## Angular velocity
    	        angle = self.steering_angle(goal_pose) - self.pose.theta

		## If the angle is bigger than pi, it's more conveninet to turn left
	  	if angle < -3.14:
			angle = 6.28 + (self.steering_angle(goal_pose) - self.pose.theta)
		return constant * (angle)
     
    	def move2goal(self, data):
		## Callback function that receives the position of the goal and construct the platform_control message to publish

		## Setting the goal position
		self.goal = Pose2D()
		self.goal.x = data.x
		self.goal.y = data.y
		goal_pose = self.goal
		
		q = platform_control()
			
		distance_tolerance = 0.1

		while self.euclidean_distance(goal_pose) >= distance_tolerance:

			## Linear velocity in the x-axis
			self.body_vel.linear.x = self.linear_vel(goal_pose)
			self.body_vel.linear.y = 0
			self.body_vel.linear.z = 0

			## Angular velocity in the z-axis
			self.body_vel.angular.x = 0
			self.body_vel.angular.y = 0
			self.body_vel.angular.z = self.angular_vel(goal_pose)
			     
			## Publishing the message
			q.body_vel = self.body_vel
			self.pub_platform_control.publish(q)
			self.rate.sleep()

		print "Goal reached"

		## Publishing '1' on /goal_reached 
    	   	self.pub_goal_reached.publish(1)

		## Stopping MiRo when the goal is reached
		self.body_vel.linear.x = 0
		self.body_vel.angular.z = 0
		q.body_vel = self.body_vel
		self.pub_platform_control.publish(q)

    	def main (self):
          rospy.spin()
	

if __name__== '__main__':
        rospy.init_node('gb_miro')
    
	x = miroBOT_miro()
	x.main()
  
