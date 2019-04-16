# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "cob_perception_msgs: 15 messages, 0 services")

set(MSG_I_FLAGS "-Icob_perception_msgs:/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(cob_perception_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Person.msg" NAME_WE)
add_custom_target(_cob_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_perception_msgs" "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Person.msg" "cob_perception_msgs/Skeleton:geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/DetectionArray.msg" NAME_WE)
add_custom_target(_cob_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_perception_msgs" "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/DetectionArray.msg" "geometry_msgs/PoseStamped:std_msgs/Header:cob_perception_msgs/Detection:geometry_msgs/Quaternion:geometry_msgs/Point:cob_perception_msgs/Mask:cob_perception_msgs/Rect:sensor_msgs/Image:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/ActionRecognitionmsg.msg" NAME_WE)
add_custom_target(_cob_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_perception_msgs" "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/ActionRecognitionmsg.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Detection.msg" NAME_WE)
add_custom_target(_cob_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_perception_msgs" "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Detection.msg" "geometry_msgs/PoseStamped:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:cob_perception_msgs/Mask:cob_perception_msgs/Rect:sensor_msgs/Image:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PersonStamped.msg" NAME_WE)
add_custom_target(_cob_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_perception_msgs" "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PersonStamped.msg" "std_msgs/Header:cob_perception_msgs/Skeleton:geometry_msgs/Quaternion:cob_perception_msgs/Person:geometry_msgs/Point:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PointCloud2Array.msg" NAME_WE)
add_custom_target(_cob_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_perception_msgs" "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PointCloud2Array.msg" "sensor_msgs/PointField:std_msgs/Header:sensor_msgs/PointCloud2"
)

get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PositionMeasurement.msg" NAME_WE)
add_custom_target(_cob_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_perception_msgs" "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PositionMeasurement.msg" "geometry_msgs/Vector3:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Rect.msg" NAME_WE)
add_custom_target(_cob_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_perception_msgs" "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Rect.msg" ""
)

get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PositionMeasurementArray.msg" NAME_WE)
add_custom_target(_cob_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_perception_msgs" "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PositionMeasurementArray.msg" "cob_perception_msgs/PositionMeasurement:geometry_msgs/Vector3:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Mask.msg" NAME_WE)
add_custom_target(_cob_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_perception_msgs" "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Mask.msg" "cob_perception_msgs/Rect:sensor_msgs/Image:std_msgs/Header"
)

get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/People.msg" NAME_WE)
add_custom_target(_cob_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_perception_msgs" "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/People.msg" "std_msgs/Header:cob_perception_msgs/Skeleton:geometry_msgs/Quaternion:cob_perception_msgs/Person:geometry_msgs/Point:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/ColorDepthImage.msg" NAME_WE)
add_custom_target(_cob_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_perception_msgs" "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/ColorDepthImage.msg" "cob_perception_msgs/Rect:sensor_msgs/Image:std_msgs/Header"
)

get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Float64ArrayStamped.msg" NAME_WE)
add_custom_target(_cob_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_perception_msgs" "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Float64ArrayStamped.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Skeleton.msg" NAME_WE)
add_custom_target(_cob_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_perception_msgs" "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Skeleton.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/ColorDepthImageArray.msg" NAME_WE)
add_custom_target(_cob_perception_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cob_perception_msgs" "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/ColorDepthImageArray.msg" "cob_perception_msgs/ColorDepthImage:sensor_msgs/Image:std_msgs/Header:cob_perception_msgs/Rect"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Person.msg"
  "${MSG_I_FLAGS}"
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Skeleton.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_cpp(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Rect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_cpp(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/DetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Detection.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Mask.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Rect.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_cpp(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/ActionRecognitionmsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_cpp(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Detection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Mask.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Rect.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_cpp(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PositionMeasurement.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_cpp(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/ColorDepthImage.msg"
  "${MSG_I_FLAGS}"
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Rect.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_cpp(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/ColorDepthImageArray.msg"
  "${MSG_I_FLAGS}"
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/ColorDepthImage.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Rect.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_cpp(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PositionMeasurementArray.msg"
  "${MSG_I_FLAGS}"
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PositionMeasurement.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_cpp(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Mask.msg"
  "${MSG_I_FLAGS}"
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Rect.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_cpp(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/People.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Skeleton.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Person.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_cpp(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PointCloud2Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_cpp(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Float64ArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_cpp(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Skeleton.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_cpp(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PersonStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Skeleton.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Person.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_perception_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(cob_perception_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_perception_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(cob_perception_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(cob_perception_msgs_generate_messages cob_perception_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Person.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_cpp _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/DetectionArray.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_cpp _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/ActionRecognitionmsg.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_cpp _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Detection.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_cpp _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PersonStamped.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_cpp _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PointCloud2Array.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_cpp _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PositionMeasurement.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_cpp _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Rect.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_cpp _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PositionMeasurementArray.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_cpp _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Mask.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_cpp _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/People.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_cpp _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/ColorDepthImage.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_cpp _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Float64ArrayStamped.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_cpp _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Skeleton.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_cpp _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/ColorDepthImageArray.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_cpp _cob_perception_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cob_perception_msgs_gencpp)
add_dependencies(cob_perception_msgs_gencpp cob_perception_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_perception_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Person.msg"
  "${MSG_I_FLAGS}"
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Skeleton.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_eus(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Rect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_eus(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/DetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Detection.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Mask.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Rect.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_eus(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/ActionRecognitionmsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_eus(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Detection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Mask.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Rect.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_eus(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PositionMeasurement.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_eus(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/ColorDepthImage.msg"
  "${MSG_I_FLAGS}"
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Rect.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_eus(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/ColorDepthImageArray.msg"
  "${MSG_I_FLAGS}"
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/ColorDepthImage.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Rect.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_eus(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PositionMeasurementArray.msg"
  "${MSG_I_FLAGS}"
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PositionMeasurement.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_eus(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Mask.msg"
  "${MSG_I_FLAGS}"
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Rect.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_eus(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/People.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Skeleton.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Person.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_eus(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PointCloud2Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_eus(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Float64ArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_eus(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Skeleton.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_eus(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PersonStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Skeleton.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Person.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_perception_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(cob_perception_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_perception_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(cob_perception_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(cob_perception_msgs_generate_messages cob_perception_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Person.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_eus _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/DetectionArray.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_eus _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/ActionRecognitionmsg.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_eus _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Detection.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_eus _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PersonStamped.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_eus _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PointCloud2Array.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_eus _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PositionMeasurement.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_eus _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Rect.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_eus _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PositionMeasurementArray.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_eus _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Mask.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_eus _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/People.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_eus _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/ColorDepthImage.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_eus _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Float64ArrayStamped.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_eus _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Skeleton.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_eus _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/ColorDepthImageArray.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_eus _cob_perception_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cob_perception_msgs_geneus)
add_dependencies(cob_perception_msgs_geneus cob_perception_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_perception_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Person.msg"
  "${MSG_I_FLAGS}"
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Skeleton.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_lisp(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Rect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_lisp(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/DetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Detection.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Mask.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Rect.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_lisp(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/ActionRecognitionmsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_lisp(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Detection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Mask.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Rect.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_lisp(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PositionMeasurement.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_lisp(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/ColorDepthImage.msg"
  "${MSG_I_FLAGS}"
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Rect.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_lisp(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/ColorDepthImageArray.msg"
  "${MSG_I_FLAGS}"
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/ColorDepthImage.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Rect.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_lisp(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PositionMeasurementArray.msg"
  "${MSG_I_FLAGS}"
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PositionMeasurement.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_lisp(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Mask.msg"
  "${MSG_I_FLAGS}"
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Rect.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_lisp(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/People.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Skeleton.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Person.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_lisp(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PointCloud2Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_lisp(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Float64ArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_lisp(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Skeleton.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_lisp(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PersonStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Skeleton.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Person.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_perception_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(cob_perception_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_perception_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(cob_perception_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(cob_perception_msgs_generate_messages cob_perception_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Person.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_lisp _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/DetectionArray.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_lisp _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/ActionRecognitionmsg.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_lisp _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Detection.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_lisp _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PersonStamped.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_lisp _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PointCloud2Array.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_lisp _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PositionMeasurement.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_lisp _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Rect.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_lisp _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PositionMeasurementArray.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_lisp _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Mask.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_lisp _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/People.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_lisp _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/ColorDepthImage.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_lisp _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Float64ArrayStamped.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_lisp _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Skeleton.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_lisp _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/ColorDepthImageArray.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_lisp _cob_perception_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cob_perception_msgs_genlisp)
add_dependencies(cob_perception_msgs_genlisp cob_perception_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_perception_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Person.msg"
  "${MSG_I_FLAGS}"
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Skeleton.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_nodejs(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Rect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_nodejs(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/DetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Detection.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Mask.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Rect.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_nodejs(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/ActionRecognitionmsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_nodejs(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Detection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Mask.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Rect.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_nodejs(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PositionMeasurement.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_nodejs(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/ColorDepthImage.msg"
  "${MSG_I_FLAGS}"
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Rect.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_nodejs(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/ColorDepthImageArray.msg"
  "${MSG_I_FLAGS}"
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/ColorDepthImage.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Rect.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_nodejs(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PositionMeasurementArray.msg"
  "${MSG_I_FLAGS}"
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PositionMeasurement.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_nodejs(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Mask.msg"
  "${MSG_I_FLAGS}"
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Rect.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_nodejs(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/People.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Skeleton.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Person.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_nodejs(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PointCloud2Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_nodejs(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Float64ArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_nodejs(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Skeleton.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_nodejs(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PersonStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Skeleton.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Person.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_perception_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(cob_perception_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_perception_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(cob_perception_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(cob_perception_msgs_generate_messages cob_perception_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Person.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_nodejs _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/DetectionArray.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_nodejs _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/ActionRecognitionmsg.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_nodejs _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Detection.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_nodejs _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PersonStamped.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_nodejs _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PointCloud2Array.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_nodejs _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PositionMeasurement.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_nodejs _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Rect.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_nodejs _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PositionMeasurementArray.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_nodejs _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Mask.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_nodejs _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/People.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_nodejs _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/ColorDepthImage.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_nodejs _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Float64ArrayStamped.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_nodejs _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Skeleton.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_nodejs _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/ColorDepthImageArray.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_nodejs _cob_perception_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cob_perception_msgs_gennodejs)
add_dependencies(cob_perception_msgs_gennodejs cob_perception_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_perception_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Person.msg"
  "${MSG_I_FLAGS}"
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Skeleton.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_py(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Rect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_py(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/DetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Detection.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Mask.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Rect.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_py(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/ActionRecognitionmsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_py(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Detection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Mask.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Rect.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_py(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PositionMeasurement.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_py(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/ColorDepthImage.msg"
  "${MSG_I_FLAGS}"
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Rect.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_py(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/ColorDepthImageArray.msg"
  "${MSG_I_FLAGS}"
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/ColorDepthImage.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Rect.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_py(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PositionMeasurementArray.msg"
  "${MSG_I_FLAGS}"
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PositionMeasurement.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_py(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Mask.msg"
  "${MSG_I_FLAGS}"
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Rect.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_py(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/People.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Skeleton.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Person.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_py(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PointCloud2Array.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_py(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Float64ArrayStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_py(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Skeleton.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_perception_msgs
)
_generate_msg_py(cob_perception_msgs
  "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PersonStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Skeleton.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Person.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_perception_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(cob_perception_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_perception_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(cob_perception_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(cob_perception_msgs_generate_messages cob_perception_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Person.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_py _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/DetectionArray.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_py _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/ActionRecognitionmsg.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_py _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Detection.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_py _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PersonStamped.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_py _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PointCloud2Array.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_py _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PositionMeasurement.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_py _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Rect.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_py _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/PositionMeasurementArray.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_py _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Mask.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_py _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/People.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_py _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/ColorDepthImage.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_py _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Float64ArrayStamped.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_py _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/Skeleton.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_py _cob_perception_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_perception_msgs/msg/ColorDepthImageArray.msg" NAME_WE)
add_dependencies(cob_perception_msgs_generate_messages_py _cob_perception_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cob_perception_msgs_genpy)
add_dependencies(cob_perception_msgs_genpy cob_perception_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cob_perception_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_perception_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cob_perception_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(cob_perception_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(cob_perception_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(cob_perception_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_perception_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cob_perception_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(cob_perception_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(cob_perception_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(cob_perception_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_perception_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cob_perception_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(cob_perception_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(cob_perception_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(cob_perception_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_perception_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cob_perception_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(cob_perception_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(cob_perception_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(cob_perception_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_perception_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_perception_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cob_perception_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(cob_perception_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(cob_perception_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(cob_perception_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
