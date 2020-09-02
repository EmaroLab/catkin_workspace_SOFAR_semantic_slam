 in this folder are stored 3 py scripts:
 - pose_adapter.py : 
 it subscribe to '/orb_slam2_mono/pose' topic: from the read messages it extracts the instance '.orientation'.Suddenly it publics the orientation data in the '/adapted_pose2D' topic.
 - semantical_map_generator.py :
 the node receives the pose of the robot and the semantical information. It merges the two received data in an SemanticalPoint type message; the new message is then published on '/semantical_loci' topic.
 - tester.py :
 This script is meant for testing the nodes metioned above. Some random string are published in the '/adapted_message' topic and then the process is suspended.
 
