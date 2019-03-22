 # Navigation with MiRo Robot

 ## Module 1
 The main goal of module 1 is to guide MiRo with two different modalities: autonomous and manual.
 The autonomous one consists in reaching a goal position chosen by the user from module 5 (GUI). The Robot must be able to override the velocity command when an obstacle is detected in order to avoid collision with it.
 The manual modality consists in moving Miro around with a PS4 joystick.
 This Project has been developed for the Software Architecture course of the master degree program in Robotics Engineering at University of Genoa.

 ### MiRo Robot
 MiRo is a fully programmable autonomous robot for researchers, educators, developers and healthcare professionals. With six senses, eight   degrees of freedom, an innovative brain-inspired operating system and a simulation software package, MiRo is a flexible platform suited for developing companion robots.


 ### Autonomous modality
 
 In this modality there are two possible MiRo behaviors:
 * Goal behavior
 * Obstacle Avoidance behavior
 
 The **Goal behavior** regards the robot's ability to reach a specific goal position with a tollerance of 0.1 meters. The user must insert from the GUI the desired position.
 Basically, computes the distance and, depending on a constant, we set Miro's linear and angular velocities.

 The **Obstacle Avoidance behavior** overrides the Goal behavior when and obstacle is detected by using the Miro's sonar sensor.
 When an Obstacle is detected Miro starts turning by more than 90 degrees until the obstacle is not detected anymore and then it moves forward  to make sure you actually avoid the obstacle.
 Then the control goes back to the previous behaviour.

 ### Manual modality
 In this modality you can take control of Miro's movements using a Ps4 joystick:
 * Moving along the vertial axis of the left stick you can control linear velocity
 * Moving along the horizontal axis of the right stick you can control angular velocity

 ## The implementation 

 Each module which is part of the architecture has been implemented as a ROS node.

 For comunication between the nodes we use a Publish/Subscibe messaging pattern.
 foto architettura

 **For more details see the report**



 The *gb_miro* node subscribes to pose topic to obtain Miro's actual position and also to module_5 topic to obtain the goal position, than computes the distances and set velocities to publish a message of type platform_control that contains miro body velocity on gb topic.

 The *oab_miro* node subscibes to sonar sensor to detect the presence of an obstacle, and publishes a message of type platform_control that contains miro body velocity on oab topic. 
 
 The *switching_behavior* node subscribes to both topic (gb and oab) that corresponds to the two different behaviors.
 It selects which behavior to publish on the Robot depending on the presence (or not) of an obstacle.

 Our project aims at total scalability, so each module can be improved or replaced without any changes on the others.

 # Gettin Started

 ## Prerequisites

 ### ROS
This project is developed using [ROS](http://wiki.ros.org/kinetic/Installation/Ubuntu):
* rosdistro: kinetic
* rosversion: 1.12.13

 ### MiRo Workstation Setup
Download the [Miro Developer kit](http://labs.consequentialrobotics.com/miro/mdk/).

Follow the instructions from Consequential Robotics [Miro: Prepare Workstation](https://consequential.bitbucket.io/Developer_Preparation_Prepare_workstation.html) to set up your workstation to work with miro. 
Strictly follow the instructions in the Install MDK section as the following steps will rely on this.

Not necessary to make static IP for your workstation (laptop) while setting up connection with MiRo.

Create a catkin workspace and clone all the packages in the src folder

```
$ git clone https://github.com/.....
$ cd 
$ catkin_make
$ source devel/setup.bash
```
 ### Manual behaviour
 
 Install ds4drv and other features to connect joystick with the pc

```
$ sudo pip install ds4drv
$ sudo apt-get install ros-kinetic-joy
```

 Run ds4drv and connect the bluethoot joystick by holding Share + the PS button until the LED starts blinking rapidly.

 ```
$ sudo ds4drv
```
 To get the joystick data published over ROS we need to start the joy node. First let's tell the joy node which joystick device to use, the default is js0. 

```
$ roscore
$ rosparam set joy-node/dev"dev/input/js0"
```

 Then while Miro is connected run the nodes

 ```
$ rosrun joy joy_node
$ ./joy.py
```

### Goal behaviour

cose per goal

Connect the Miro robot to the ROS Master (boohhhh)

```
$ ssh root@<MIRO-IP> 
$ sudo nano ./profile
```
Insert your IP after ROS_MASTER_IP

For more detailed instructions see [MIRO: Commission MIRO](https://consequential.bitbucket.io/Developer_Preparation_Commission_MIRO.html)

The following command will start the project

```
$ roslaunch miro_sofar miro_sofar.launch
```
Parameters that can be set in the launch file ( all of them are explained inside the launch file itself):
* robot_name <--  Select if use real miro or simulated robot in Gazebo
* node_rate
* control_mode <-- Select the BASIC or ADVANCED mode
* sonar_treshold <-- Select the values below which an obstacle is detected
## Results
* Video Demo with a Real Miro.

[![Video Demo with a Real Miro](https://img.youtube.com/vi/LT71kVHBBu4/0.jpg)](https://www.youtube.com/watch?v=LT71kVHBBu4&feature=youtu.be).

## Documentation
The documentation of the code can be found on the folder miro_sofar_doxygen/html by opening the file index.html with an html browser

## Works based on the current Project
* Developement of a Pet-like Behavior for Miro Robot --> https://github.com/hoodedapollo/MiroBehaviours

## Acknowledgments

* [mqtt_ros_bridge](https://github.com/EmaroLab/mqtt_ros_bridge) 
* [imu_stream](https://github.com/EmaroLab/imu_stream)


### Team
* Francesca Canale *francesca.canale.95@gmail.com*
* Marco Giordano *marcogiordano295@gmail.com*
