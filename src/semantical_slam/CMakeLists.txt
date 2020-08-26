cmake_minimum_required(VERSION 2.8.3)
project(semantical_slam)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  message_generation
  geometry_msgs
  std_msgs
  tf
  sensor_msgs
  roslaunch
)


################################################
## Declare ROS messages, services and actions ##
################################################

## Generate messages in the 'msg' folder
 add_message_files(
   FILES
   SemanticalPoint.msg
 )

# Generate services in the 'srv' folder
 add_service_files(
   FILES
   CreateSemMsg.srv
 )

## Generate added messages and services with any dependencies listed here
 generate_messages(
   DEPENDENCIES
  std_msgs
  geometry_msgs
  tf
  sensor_msgs
  )  # Or other packages containing msgs



###################################
## catkin specific configuration ##
###################################
catkin_package(
  CATKIN_DEPENDS message_runtime
)
