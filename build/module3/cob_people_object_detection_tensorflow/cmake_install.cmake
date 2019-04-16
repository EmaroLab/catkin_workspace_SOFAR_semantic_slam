# Install script for directory: /home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_people_object_detection_tensorflow

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/filippo/catkin_workspace_SOFAR_semantic_slam/build/module3/cob_people_object_detection_tensorflow/catkin_generated/installspace/cob_people_object_detection_tensorflow.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_people_object_detection_tensorflow/cmake" TYPE FILE FILES
    "/home/filippo/catkin_workspace_SOFAR_semantic_slam/build/module3/cob_people_object_detection_tensorflow/catkin_generated/installspace/cob_people_object_detection_tensorflowConfig.cmake"
    "/home/filippo/catkin_workspace_SOFAR_semantic_slam/build/module3/cob_people_object_detection_tensorflow/catkin_generated/installspace/cob_people_object_detection_tensorflowConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cob_people_object_detection_tensorflow" TYPE FILE FILES "/home/filippo/catkin_workspace_SOFAR_semantic_slam/src/module3/cob_people_object_detection_tensorflow/package.xml")
endif()

