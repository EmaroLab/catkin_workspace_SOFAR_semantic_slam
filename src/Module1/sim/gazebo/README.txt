
################################################################
##
##	RUN SIMULATOR
##
################################################################

* Install ROS & Gazebo.

	See MIRO documentation for details.

* Build the libmiro_gazebo plugin for your system.

	Build everything for your system, including the plugin.

	$ cd ~/mdk/src
	$ make

* Launch roscore.

	$ roscore
	
* Launch the simulator.

	$ cd ~/mdk/sim/gazebo
	$ ./launch_sim.sh

* Launch the demo client.

	$ cd ~/mdk/bin/deb64
	$ miro_ros_client drive=push




