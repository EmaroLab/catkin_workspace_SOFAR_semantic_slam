#!/usr/bin/env python
import rospy
import math

#import msgs type
from std_msgs.msg import String
import tf 
from geometry_msgs.msg import PoseStamped, Pose	

#main
def main():
	rospy.init_node('tf_to_pose_adapter')
	
	miro_pose_stamp=PoseStamped()
	adapted_pose=Pose()
	
	miro_pose_stamp.pose.position=[0,0,0]
	miro_pose_stamp.pose.orientation=[0,0,0,1]
	
	listener = tf.TransformListener()

	pub=rospy.Publisher('/adapted_pose', Pose, queue_size=10)
	
	rate = rospy.Rate(10.0)
	while not rospy.is_shutdown():
		if listener.frameExists('map') and listener.frameExists('camera_link'):
			try:	
				now = rospy.Time.now()
				listener.waitForTransform('map', 'camera_link', now, rospy.Duration(4.0))
		    		adapted_pose_stamped = listener.transformPose('map', miro_pose_stamp)
				adapted_pose=adapted_pose_stamped.pose
				pub.publish(adapted_pose)
			except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException):
				continue
	rate.sleep()

if __name__== "__main__":
  main()
