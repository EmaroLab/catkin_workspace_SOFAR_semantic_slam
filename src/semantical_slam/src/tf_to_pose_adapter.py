#!/usr/bin/env python
import rospy
import math

#import msgs type
from std_msgs.msg import String
import tf
#import tf2_ros
#import tf2_geometry_msgs
from geometry_msgs.msg import PoseStamped, Pose	

#main
def main():
	rospy.init_node('tf_to_pose_adapter')
	
	miro_pose_stamp=PoseStamped()
	adapted_pose=Pose()
	
	miro_pose_stamp.pose.position=[0,0,0]
	miro_pose_stamp.pose.orientation=[0,0,0,1]

	rospy.loginfo("#############################################################")
	rospy.loginfo(miro_pose_stamp)
	
	listener = tf.TransformListener()
	#print("We are here:")
	#print(listener)
	#tfBuffer = tf2_ros.Buffer()
	#listener = tf2_ros.TransformListener(tfBuffer)

	pub=rospy.Publisher('/adapted_pose', Pose, queue_size=10)
	
	rate = rospy.Rate(10.0)
	while not rospy.is_shutdown():
		#print (listener.frameExists('map'))
		if listener.frameExists('map') and listener.frameExists('camera_link'):
			try:	
				now = rospy.Time.now()
				#listener.waitForTransform('map', 'camera_link', now, rospy.Duration(4.0))
		    		adapted_pose_stamped = listener.transformPose('map', miro_pose_stamp)
				#print("We are here 2:")
				#print(adapted_pose_stamped)
				adapted_pose=adapted_pose_stamped.pose
				pub.publish(adapted_pose)
			except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException):
				continue
	rate.sleep()

if __name__== "__main__":
  main()
