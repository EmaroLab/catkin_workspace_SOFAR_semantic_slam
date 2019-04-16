# Install script for directory: /home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_object_detection_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/filippo/catkin_workspace_SOFAR_semantic_slam/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_object_detection_msgs/action" TYPE FILE FILES
    "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_object_detection_msgs/action/AcquireObjectImage.action"
    "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_object_detection_msgs/action/DetectObjects.action"
    "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_object_detection_msgs/action/TrainObject.action"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_object_detection_msgs/msg" TYPE FILE FILES
    "/home/filippo/catkin_workspace_SOFAR_semantic_slam/devel/share/cob_object_detection_msgs/msg/AcquireObjectImageAction.msg"
    "/home/filippo/catkin_workspace_SOFAR_semantic_slam/devel/share/cob_object_detection_msgs/msg/AcquireObjectImageActionGoal.msg"
    "/home/filippo/catkin_workspace_SOFAR_semantic_slam/devel/share/cob_object_detection_msgs/msg/AcquireObjectImageActionResult.msg"
    "/home/filippo/catkin_workspace_SOFAR_semantic_slam/devel/share/cob_object_detection_msgs/msg/AcquireObjectImageActionFeedback.msg"
    "/home/filippo/catkin_workspace_SOFAR_semantic_slam/devel/share/cob_object_detection_msgs/msg/AcquireObjectImageGoal.msg"
    "/home/filippo/catkin_workspace_SOFAR_semantic_slam/devel/share/cob_object_detection_msgs/msg/AcquireObjectImageResult.msg"
    "/home/filippo/catkin_workspace_SOFAR_semantic_slam/devel/share/cob_object_detection_msgs/msg/AcquireObjectImageFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_object_detection_msgs/msg" TYPE FILE FILES
    "/home/filippo/catkin_workspace_SOFAR_semantic_slam/devel/share/cob_object_detection_msgs/msg/DetectObjectsAction.msg"
    "/home/filippo/catkin_workspace_SOFAR_semantic_slam/devel/share/cob_object_detection_msgs/msg/DetectObjectsActionGoal.msg"
    "/home/filippo/catkin_workspace_SOFAR_semantic_slam/devel/share/cob_object_detection_msgs/msg/DetectObjectsActionResult.msg"
    "/home/filippo/catkin_workspace_SOFAR_semantic_slam/devel/share/cob_object_detection_msgs/msg/DetectObjectsActionFeedback.msg"
    "/home/filippo/catkin_workspace_SOFAR_semantic_slam/devel/share/cob_object_detection_msgs/msg/DetectObjectsGoal.msg"
    "/home/filippo/catkin_workspace_SOFAR_semantic_slam/devel/share/cob_object_detection_msgs/msg/DetectObjectsResult.msg"
    "/home/filippo/catkin_workspace_SOFAR_semantic_slam/devel/share/cob_object_detection_msgs/msg/DetectObjectsFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_object_detection_msgs/msg" TYPE FILE FILES
    "/home/filippo/catkin_workspace_SOFAR_semantic_slam/devel/share/cob_object_detection_msgs/msg/TrainObjectAction.msg"
    "/home/filippo/catkin_workspace_SOFAR_semantic_slam/devel/share/cob_object_detection_msgs/msg/TrainObjectActionGoal.msg"
    "/home/filippo/catkin_workspace_SOFAR_semantic_slam/devel/share/cob_object_detection_msgs/msg/TrainObjectActionResult.msg"
    "/home/filippo/catkin_workspace_SOFAR_semantic_slam/devel/share/cob_object_detection_msgs/msg/TrainObjectActionFeedback.msg"
    "/home/filippo/catkin_workspace_SOFAR_semantic_slam/devel/share/cob_object_detection_msgs/msg/TrainObjectGoal.msg"
    "/home/filippo/catkin_workspace_SOFAR_semantic_slam/devel/share/cob_object_detection_msgs/msg/TrainObjectResult.msg"
    "/home/filippo/catkin_workspace_SOFAR_semantic_slam/devel/share/cob_object_detection_msgs/msg/TrainObjectFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_object_detection_msgs/msg" TYPE FILE FILES
    "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_object_detection_msgs/msg/DetectionArray.msg"
    "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_object_detection_msgs/msg/Detection.msg"
    "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_object_detection_msgs/msg/MaskArray.msg"
    "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_object_detection_msgs/msg/Mask.msg"
    "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_object_detection_msgs/msg/PoseRT.msg"
    "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_object_detection_msgs/msg/RectArray.msg"
    "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_object_detection_msgs/msg/Rect.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_object_detection_msgs/srv" TYPE FILE FILES
    "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_object_detection_msgs/srv/AcquireObjectImage.srv"
    "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_object_detection_msgs/srv/BagTrainObject.srv"
    "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_object_detection_msgs/srv/BaTestEnvironment.srv"
    "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_object_detection_msgs/srv/DetectObjects.srv"
    "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_object_detection_msgs/srv/SaveRecordedObject.srv"
    "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_object_detection_msgs/srv/StartObjectRecording.srv"
    "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_object_detection_msgs/srv/StopObjectRecording.srv"
    "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_object_detection_msgs/srv/TrainObject.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_object_detection_msgs/cmake" TYPE FILE FILES "/home/filippo/catkin_workspace_SOFAR_semantic_slam/build/module3/cob_perception_common/cob_object_detection_msgs/catkin_generated/installspace/cob_object_detection_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/filippo/catkin_workspace_SOFAR_semantic_slam/devel/include/cob_object_detection_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/filippo/catkin_workspace_SOFAR_semantic_slam/devel/share/roseus/ros/cob_object_detection_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/filippo/catkin_workspace_SOFAR_semantic_slam/devel/share/common-lisp/ros/cob_object_detection_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/filippo/catkin_workspace_SOFAR_semantic_slam/devel/share/gennodejs/ros/cob_object_detection_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/filippo/catkin_workspace_SOFAR_semantic_slam/devel/lib/python2.7/dist-packages/cob_object_detection_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/filippo/catkin_workspace_SOFAR_semantic_slam/devel/lib/python2.7/dist-packages/cob_object_detection_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/filippo/catkin_workspace_SOFAR_semantic_slam/build/module3/cob_perception_common/cob_object_detection_msgs/catkin_generated/installspace/cob_object_detection_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_object_detection_msgs/cmake" TYPE FILE FILES "/home/filippo/catkin_workspace_SOFAR_semantic_slam/build/module3/cob_perception_common/cob_object_detection_msgs/catkin_generated/installspace/cob_object_detection_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_object_detection_msgs/cmake" TYPE FILE FILES
    "/home/filippo/catkin_workspace_SOFAR_semantic_slam/build/module3/cob_perception_common/cob_object_detection_msgs/catkin_generated/installspace/cob_object_detection_msgsConfig.cmake"
    "/home/filippo/catkin_workspace_SOFAR_semantic_slam/build/module3/cob_perception_common/cob_object_detection_msgs/catkin_generated/installspace/cob_object_detection_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_object_detection_msgs" TYPE FILE FILES "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_object_detection_msgs/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cob_object_detection_msgs" TYPE PROGRAM FILES "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_perception_common/cob_object_detection_msgs/test/detection_component_testing.py")
endif()

