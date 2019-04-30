#!/usr/bin/env python
import rospy
import roslaunch

#import msgs type
from std_msgs.msg import String
from sensor_msgs.msg import PointCloud2

i = 0

def callback(OK):
	global i
	i = i + 1


def main():
	
	rospy.init_node('controller')
	sub = rospy.Subscriber('/orb_slam2_ros_mono/map_points', PointCloud2, callback)
	print(i)
	if i == 1:
		package = 'semantical_slam'
		node_type = 'tf_to_pose_adapter.py'
		node_name = 'tf_to_pose_adapter'
		node = roslaunch.core.Node(package, node_type, node_name)
		launch = roslaunch.scriptapi.ROSLaunch()
		launch.start()
		process = launch.launch(node)
		print process.is_alive()
	rospy.spin()



if __name__== "__main__":
  main()
