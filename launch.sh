#!/bin/bash

#sourcing roslaunch orb_slam2_ros orb_slam2_mono.launch
source devel/setup.bash

echo -n "Type 'create' in order to create a new map or 'load' in order to load an existing map.
" 
read MODE
echo
case "$MODE" in
create)
	echo -n "___________________Creation mode___________________
"
	read -p "This will delete any previos map, type y to continue
" -n 1 -r
	echo    # (optional) move to a new line
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
   		rm -rf src/orb_slam2_ros/ros/Bagfile
		mkdir src/orb_slam2_ros/ros/Bagfile
		#terminator -T "orb_slam" -e "roslaunch orb_slam2_ros orb_slam2_mono.launch" &
		#terminator -T "semantical_slam" -e "roslaunch semantical_slam semantical_slam.launch" &
	else 
		exit
	fi
	;;

load)	
	echo -n "___________________Load mode___________________
"
	#terminator -T "orb_slam" -e "roslaunch orb_slam2_ros orb_slam2_mono.launch" &
	#terminator -T "semantical_slam" -e "roslaunch semantical_slam semantical_slam.launch" &
	;;
*)
 	echo -n "Unknown mode
"
	;;

esac



