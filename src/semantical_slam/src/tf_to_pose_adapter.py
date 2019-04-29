#!/usr/bin/env python
import rospy

#import msgs type
from std_msgs.msg import String
import tf 
from geometry_msgs.msg import PoseStamped, Pose	

#main
def main():
	rospy.init_node('tf_to_pose_adapter')
	
	miro_pose_stamp=PoseStamped()
	
	miro_pose_stamp.pose.position=[0,0,0]
	miro_pose_stamp.pose.orientation=[0,0,0,1]
	
	listener = tf.TransformListener()	
	
	pub=rospy.Publisher('/adapted_pose', Pose, queue_size=10)
	
	rate = rospy.Rate(10.0)
	while not rospy.is_shutdown():
        	try:	
			now = rospy.Time.now()
			listener.waitForTransform('map', 'camera_link', now, rospy.Duration(4.0))
            		adapted_pose_stamped = listener.transformPose('map', miro_pose_stamp)
			pub.publish(adapted_pose_stamped.pose)
        	except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException):
        		continue
	rate.sleep()

if __name__== "__main__":
  main()
