#!/bin/bash

#sourcing roslaunch orb_slam2_ros orb_slam2_mono.launch
source devel/setup.bash

echo -n "Type 'create' in order to create a new map or 'load' in order to load an existing map." 
echo
read MODE
case "$MODE" in
create)
	echo -n "___________________Creation mode___________________"
	echo
	echo
	echo "This will delete any previos map, type y to continue."
	read REPLY
	echo    
	if [[ $REPLY =~ ^[Yy]$ ]]
	then
   		rm -rf src/orb_slam_2_ros/ros/Bagfile
		mkdir src/orb_slam_2_ros/ros/Bagfile
		
		roslaunch orb_slam2_ros orb_slam2_mono.launch &
		roslaunch semantical_slam semantical_slam.launch &
		
	else 
		exit
	fi
	;;

load)	
	echo -n "___________________Load mode___________________"
	echo
	roslaunch orb_slam2_ros orb_slam2_mono_localizantion_only.launch &
	roslaunch semantical_slam semantical_slam.launch &
	;;
*)
 	echo -n "Unknown mode."
	echo
	;;

esac



