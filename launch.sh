#!/bin/bash

#sourcing roslaunch orb_slam2_ros orb_slam2_mono.launch
source ~/catkin_workspace_SOFAR_semantic_slam/devel/setup.bash


terminator -T "orb_slam" -e "roslaunch orb_slam2_ros orb_slam2_mono.launch" &
#terminator -T "semantical_slam" -e "roslaunch semantical_slam semantical_slam.launch" &


