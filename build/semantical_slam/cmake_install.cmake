# Install script for directory: /home/giovanni/Robotics_Repos/catkin_workspace_SOFAR_semantic_slam/src/semantical_slam

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/giovanni/Robotics_Repos/catkin_workspace_SOFAR_semantic_slam/install")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/semantical_slam/msg" TYPE FILE FILES "/home/giovanni/Robotics_Repos/catkin_workspace_SOFAR_semantic_slam/src/semantical_slam/msg/SemanticalPoint.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/semantical_slam/srv" TYPE FILE FILES "/home/giovanni/Robotics_Repos/catkin_workspace_SOFAR_semantic_slam/src/semantical_slam/srv/CreateSemMsg.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/semantical_slam/cmake" TYPE FILE FILES "/home/giovanni/Robotics_Repos/catkin_workspace_SOFAR_semantic_slam/build/semantical_slam/catkin_generated/installspace/semantical_slam-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/giovanni/Robotics_Repos/catkin_workspace_SOFAR_semantic_slam/devel/include/semantical_slam")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/giovanni/Robotics_Repos/catkin_workspace_SOFAR_semantic_slam/devel/share/roseus/ros/semantical_slam")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/giovanni/Robotics_Repos/catkin_workspace_SOFAR_semantic_slam/devel/share/common-lisp/ros/semantical_slam")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/giovanni/Robotics_Repos/catkin_workspace_SOFAR_semantic_slam/devel/share/gennodejs/ros/semantical_slam")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/giovanni/Robotics_Repos/catkin_workspace_SOFAR_semantic_slam/devel/lib/python2.7/dist-packages/semantical_slam")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/giovanni/Robotics_Repos/catkin_workspace_SOFAR_semantic_slam/devel/lib/python2.7/dist-packages/semantical_slam")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/giovanni/Robotics_Repos/catkin_workspace_SOFAR_semantic_slam/build/semantical_slam/catkin_generated/installspace/semantical_slam.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/semantical_slam/cmake" TYPE FILE FILES "/home/giovanni/Robotics_Repos/catkin_workspace_SOFAR_semantic_slam/build/semantical_slam/catkin_generated/installspace/semantical_slam-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/semantical_slam/cmake" TYPE FILE FILES
    "/home/giovanni/Robotics_Repos/catkin_workspace_SOFAR_semantic_slam/build/semantical_slam/catkin_generated/installspace/semantical_slamConfig.cmake"
    "/home/giovanni/Robotics_Repos/catkin_workspace_SOFAR_semantic_slam/build/semantical_slam/catkin_generated/installspace/semantical_slamConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/semantical_slam" TYPE FILE FILES "/home/giovanni/Robotics_Repos/catkin_workspace_SOFAR_semantic_slam/src/semantical_slam/package.xml")
endif()

