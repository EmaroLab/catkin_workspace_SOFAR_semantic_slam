# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "semantical_slam: 1 messages, 1 services")

set(MSG_I_FLAGS "-Isemantical_slam:/home/tommi/finalMiro/catkin_workspace_SOFAR_semantic_slam/src/semantical_slam/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Itf:/opt/ros/kinetic/share/tf/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(semantical_slam_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/tommi/finalMiro/catkin_workspace_SOFAR_semantic_slam/src/semantical_slam/srv/CreateSemMsg.srv" NAME_WE)
add_custom_target(_semantical_slam_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "semantical_slam" "/home/tommi/finalMiro/catkin_workspace_SOFAR_semantic_slam/src/semantical_slam/srv/CreateSemMsg.srv" "geometry_msgs/Quaternion:semantical_slam/SemanticalPoint:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/tommi/finalMiro/catkin_workspace_SOFAR_semantic_slam/src/semantical_slam/msg/SemanticalPoint.msg" NAME_WE)
add_custom_target(_semantical_slam_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "semantical_slam" "/home/tommi/finalMiro/catkin_workspace_SOFAR_semantic_slam/src/semantical_slam/msg/SemanticalPoint.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(semantical_slam
  "/home/tommi/finalMiro/catkin_workspace_SOFAR_semantic_slam/src/semantical_slam/msg/SemanticalPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/semantical_slam
)

### Generating Services
_generate_srv_cpp(semantical_slam
  "/home/tommi/finalMiro/catkin_workspace_SOFAR_semantic_slam/src/semantical_slam/srv/CreateSemMsg.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/tommi/finalMiro/catkin_workspace_SOFAR_semantic_slam/src/semantical_slam/msg/SemanticalPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/semantical_slam
)

### Generating Module File
_generate_module_cpp(semantical_slam
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/semantical_slam
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(semantical_slam_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(semantical_slam_generate_messages semantical_slam_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tommi/finalMiro/catkin_workspace_SOFAR_semantic_slam/src/semantical_slam/srv/CreateSemMsg.srv" NAME_WE)
add_dependencies(semantical_slam_generate_messages_cpp _semantical_slam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tommi/finalMiro/catkin_workspace_SOFAR_semantic_slam/src/semantical_slam/msg/SemanticalPoint.msg" NAME_WE)
add_dependencies(semantical_slam_generate_messages_cpp _semantical_slam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(semantical_slam_gencpp)
add_dependencies(semantical_slam_gencpp semantical_slam_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS semantical_slam_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(semantical_slam
  "/home/tommi/finalMiro/catkin_workspace_SOFAR_semantic_slam/src/semantical_slam/msg/SemanticalPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/semantical_slam
)

### Generating Services
_generate_srv_eus(semantical_slam
  "/home/tommi/finalMiro/catkin_workspace_SOFAR_semantic_slam/src/semantical_slam/srv/CreateSemMsg.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/tommi/finalMiro/catkin_workspace_SOFAR_semantic_slam/src/semantical_slam/msg/SemanticalPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/semantical_slam
)

### Generating Module File
_generate_module_eus(semantical_slam
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/semantical_slam
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(semantical_slam_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(semantical_slam_generate_messages semantical_slam_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tommi/finalMiro/catkin_workspace_SOFAR_semantic_slam/src/semantical_slam/srv/CreateSemMsg.srv" NAME_WE)
add_dependencies(semantical_slam_generate_messages_eus _semantical_slam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tommi/finalMiro/catkin_workspace_SOFAR_semantic_slam/src/semantical_slam/msg/SemanticalPoint.msg" NAME_WE)
add_dependencies(semantical_slam_generate_messages_eus _semantical_slam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(semantical_slam_geneus)
add_dependencies(semantical_slam_geneus semantical_slam_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS semantical_slam_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(semantical_slam
  "/home/tommi/finalMiro/catkin_workspace_SOFAR_semantic_slam/src/semantical_slam/msg/SemanticalPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/semantical_slam
)

### Generating Services
_generate_srv_lisp(semantical_slam
  "/home/tommi/finalMiro/catkin_workspace_SOFAR_semantic_slam/src/semantical_slam/srv/CreateSemMsg.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/tommi/finalMiro/catkin_workspace_SOFAR_semantic_slam/src/semantical_slam/msg/SemanticalPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/semantical_slam
)

### Generating Module File
_generate_module_lisp(semantical_slam
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/semantical_slam
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(semantical_slam_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(semantical_slam_generate_messages semantical_slam_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tommi/finalMiro/catkin_workspace_SOFAR_semantic_slam/src/semantical_slam/srv/CreateSemMsg.srv" NAME_WE)
add_dependencies(semantical_slam_generate_messages_lisp _semantical_slam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tommi/finalMiro/catkin_workspace_SOFAR_semantic_slam/src/semantical_slam/msg/SemanticalPoint.msg" NAME_WE)
add_dependencies(semantical_slam_generate_messages_lisp _semantical_slam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(semantical_slam_genlisp)
add_dependencies(semantical_slam_genlisp semantical_slam_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS semantical_slam_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(semantical_slam
  "/home/tommi/finalMiro/catkin_workspace_SOFAR_semantic_slam/src/semantical_slam/msg/SemanticalPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/semantical_slam
)

### Generating Services
_generate_srv_nodejs(semantical_slam
  "/home/tommi/finalMiro/catkin_workspace_SOFAR_semantic_slam/src/semantical_slam/srv/CreateSemMsg.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/tommi/finalMiro/catkin_workspace_SOFAR_semantic_slam/src/semantical_slam/msg/SemanticalPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/semantical_slam
)

### Generating Module File
_generate_module_nodejs(semantical_slam
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/semantical_slam
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(semantical_slam_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(semantical_slam_generate_messages semantical_slam_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tommi/finalMiro/catkin_workspace_SOFAR_semantic_slam/src/semantical_slam/srv/CreateSemMsg.srv" NAME_WE)
add_dependencies(semantical_slam_generate_messages_nodejs _semantical_slam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tommi/finalMiro/catkin_workspace_SOFAR_semantic_slam/src/semantical_slam/msg/SemanticalPoint.msg" NAME_WE)
add_dependencies(semantical_slam_generate_messages_nodejs _semantical_slam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(semantical_slam_gennodejs)
add_dependencies(semantical_slam_gennodejs semantical_slam_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS semantical_slam_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(semantical_slam
  "/home/tommi/finalMiro/catkin_workspace_SOFAR_semantic_slam/src/semantical_slam/msg/SemanticalPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/semantical_slam
)

### Generating Services
_generate_srv_py(semantical_slam
  "/home/tommi/finalMiro/catkin_workspace_SOFAR_semantic_slam/src/semantical_slam/srv/CreateSemMsg.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/tommi/finalMiro/catkin_workspace_SOFAR_semantic_slam/src/semantical_slam/msg/SemanticalPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/semantical_slam
)

### Generating Module File
_generate_module_py(semantical_slam
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/semantical_slam
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(semantical_slam_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(semantical_slam_generate_messages semantical_slam_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tommi/finalMiro/catkin_workspace_SOFAR_semantic_slam/src/semantical_slam/srv/CreateSemMsg.srv" NAME_WE)
add_dependencies(semantical_slam_generate_messages_py _semantical_slam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tommi/finalMiro/catkin_workspace_SOFAR_semantic_slam/src/semantical_slam/msg/SemanticalPoint.msg" NAME_WE)
add_dependencies(semantical_slam_generate_messages_py _semantical_slam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(semantical_slam_genpy)
add_dependencies(semantical_slam_genpy semantical_slam_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS semantical_slam_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/semantical_slam)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/semantical_slam
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(semantical_slam_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(semantical_slam_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET tf_generate_messages_cpp)
  add_dependencies(semantical_slam_generate_messages_cpp tf_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(semantical_slam_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/semantical_slam)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/semantical_slam
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(semantical_slam_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(semantical_slam_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET tf_generate_messages_eus)
  add_dependencies(semantical_slam_generate_messages_eus tf_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(semantical_slam_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/semantical_slam)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/semantical_slam
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(semantical_slam_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(semantical_slam_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET tf_generate_messages_lisp)
  add_dependencies(semantical_slam_generate_messages_lisp tf_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(semantical_slam_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/semantical_slam)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/semantical_slam
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(semantical_slam_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(semantical_slam_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET tf_generate_messages_nodejs)
  add_dependencies(semantical_slam_generate_messages_nodejs tf_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(semantical_slam_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/semantical_slam)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/semantical_slam\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/semantical_slam
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(semantical_slam_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(semantical_slam_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET tf_generate_messages_py)
  add_dependencies(semantical_slam_generate_messages_py tf_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(semantical_slam_generate_messages_py sensor_msgs_generate_messages_py)
endif()
