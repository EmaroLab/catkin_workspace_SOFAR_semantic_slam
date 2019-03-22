#!/bin/bash

#sourcing
source devel/setup.bash

roslaunch orb_slam2_ros orb_slam2_mono.launch

roslaunch semantical_slam semantical_slam.launch
