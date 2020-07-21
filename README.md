# Semantic ORB-SLAM

## Module 2
The goal of this module is to build a semantic ORB-SLAM map by navigating in an environment with Miro. It is also possible to load a previously constructed map and use it to reach specific position by taking advantage of the other modules developed in this project and as shown in Figure.

<p align="center">
 <img src="Images/overall.png"/>
</p>

This project has been developed for the Software Architecture course of the master degree program in Robotics Engineering at University of Genoa.

## CODE ARCHITECTURE

The main task of this module is merging data from the monocular view, the SLAM, and from other moddules which provide the semantical information (from Module 3 and 4 a string message is received), this can be done thanks to the adapters present in the repository.
Once a message from these modules is received, this module calls a service that extracts the actual 2D position of the robot in the environment, merges it  stores it with the label received in a new customized message in a rosbag.

Our code architecture can be summarized with different nodes which exchange different data between them as shown in the following figure:

<p align="center">
 <img src="Images/rosgraph.png"/>
</p>

From this Figure it can be noted that MiRo platform publishes and is subscribed to many different topics. The node related to the  ORB SLAM 2 algorithm read the images from the topic on which they are pusblished by the robot. Its outputs are both a map of the environment, in the form of a PointCloud2 datum, and the pose (Pose3D) of the camera with respect to the world reference frame. After that a node called pose_adapter reads the pose published and extracts the x and y coordinates in order to sent them to Module 1

## THE ROBOT: Miro

The robot used in this project is MIRO, developed by the [Consequential Robotics](http://consequentialrobotics.com/) and shown in the following:

<p align="center">
 <img src="Images/Miro.jpg" width="400"/>
</p>

MiRo is  a  fully  programmable  autonomous  robot  forresearchers, educators, developers and health care professionals. MiRo  has  on  board  six  exteroceptive  senses,  an  inno-vative  brain-inspired  control  system,  a  simulation  software  package  and  ithas it has eight degrees of freedom: it is a flexible platform suited for developing companion robot. MiRo  has  two  stereo  cameras,  one  in  each  eye fixed in the head: each camera has an horizontal/vertical field of view of 120 degrees and an aspect ratio of 16:9.

To be able to interact with it, the MDK folder needs to be downloaded and installed. The steps requested for doing that are described in the following links:
 - [Installation](http://labs.consequentialrobotics.com/miro-e/docs/index.php?page=Developer_Install_Steps_Install_MDK)

 - [Configuration](http://labs.consequentialrobotics.com/miro-e/docs/index.php?page=Developer_Install_Steps_Configure_MDK_Configure_Network)

### Prepare your environment
Moreover ROS and Gazebo are requested and the respective tutorial can be found in the following links:

 - [ROS](http://labs.consequentialrobotics.com/miro-e/docs/index.php?page=Developer_Install_Steps_Install_ROS)

 - [Gazebo](http://labs.consequentialrobotics.com/miro-e/docs/index.php?page=Developer_Install_Steps_Install_Gazebo)

## GETTING STARTED
### Download the .zip file correspondent to the workspace in the user home folder, then unzip the package folder and access it:
```
$ cd home/catkin_workspace_SOFAR_semantic_slam
```

### Source the environment:
```
$ source devel/setup.bash
```

```
$ source /opt/ros/kinetic/setup.bash
```

### Build the package:
```
$ catkin_make
```

##Connect your local machine to MIRO

Enter in MIRO via ssh.
Be sure you are under the same Network of MIRO.
```
$ ssh root@MIRO_IP
```

Enter the password provided with the robot.
Insert your local machine IP address in the file that will be opened once digited the following command:
```
$ sudo nano .profile
```

##Run ORB-SLAM node

In a sourced terminal start roscore by digiting:
```
$ roscore
```

Open a new terminal on your PC and source it with the following command:
```
$ source /home/catkin_workspace_SOFAR_semantic_slam/mdk/setup.bash
```

Then acces the following folder:
```
$ cd /home/catkin_workspace_SOFAR_semantic_slam/mdk/bin/shared
```

Run the GUI provided:
```
$ ./miro_ros_client_gui.py robot=rob01
```

The GUI allows the user to set some robot's parameters (i.e. position of the joints, fps, etc), to visualize what it is seeing, to make it moves and other functionalities.

Access in the workspace in a new terminal with the following:
```
$ cd /home/catkin_workspace_SOFAR_semantic_slam
```

Launch the ORB-SLAM node:
```
./launch.sh
```

Once this is done the user can choose one of the two possible modalities by typing:
 - create : the robot starts to build an ORB-SLAM map also incorporating the semantical information coming from other modules and consequntly constructing a semantical map
 - load : a previously constructed map will be loaded and used by the robot

### Results

https://drive.google.com/file/d/1MqDD6yV4xwxxG13IxMib2SQmUz7HF57w/view?usp=sharing

### Team:

Andrea Arlotta:  rltt.ndr@gmail.com
Giovanni Battista Borre':  giovaborr@gmail.com
Tommaso Gruppi:  tommygruppi@gmail.com
