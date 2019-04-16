;; Auto-generated. Do not edit!


(when (boundp 'cob_perception_msgs::PersonStamped)
  (if (not (find-package "COB_PERCEPTION_MSGS"))
    (make-package "COB_PERCEPTION_MSGS"))
  (shadow 'PersonStamped (find-package "COB_PERCEPTION_MSGS")))
(unless (find-package "COB_PERCEPTION_MSGS::PERSONSTAMPED")
  (make-package "COB_PERCEPTION_MSGS::PERSONSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude PersonStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cob_perception_msgs::PersonStamped
  :super ros::object
  :slots (_header _person ))

(defmethod cob_perception_msgs::PersonStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:person __person) (instance cob_perception_msgs::Person :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _person __person)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:person
   (&rest __person)
   (if (keywordp (car __person))
       (send* _person __person)
     (progn
       (if __person (setq _person (car __person)))
       _person)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; cob_perception_msgs/Person _person
    (send _person :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; cob_perception_msgs/Person _person
       (send _person :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; cob_perception_msgs/Person _person
     (send _person :deserialize buf ptr-) (incf ptr- (send _person :serialization-length))
   ;;
   self)
  )

(setf (get cob_perception_msgs::PersonStamped :md5sum-) "08b504f30560aab069643e77a4cb4556")
(setf (get cob_perception_msgs::PersonStamped :datatype-) "cob_perception_msgs/PersonStamped")
(setf (get cob_perception_msgs::PersonStamped :definition-)
      "# origin from  url = https://github.com/wg-perception/people/tree/hydro-devel/people_msgs

Header header
cob_perception_msgs/Person person


================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: cob_perception_msgs/Person
#This message is used to describe a person
 
string              name				#id of a person
string              detector			#used device for detection (scan, camera)
geometry_msgs/Pose  position			#position in space
geometry_msgs/Point velocity			#speed

cob_perception_msgs/Skeleton skeleton	#assigned skeleton to a tracked person
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: cob_perception_msgs/Skeleton
# This messages is used to describe a skeleton and defines joints of a tracked person

# the same enum as defined in NiteCEnums.h of the Nite body tracker
uint8 JOINT_HEAD = 0
uint8 JOINT_NECK = 1
uint8 JOINT_LEFT_SHOULDER = 2
uint8 JOINT_RIGHT_SHOULDER = 3
uint8 JOINT_LEFT_ELBOW = 4
uint8 JOINT_RIGHT_ELBOW = 5
uint8 JOINT_LEFT_HAND = 6
uint8 JOINT_RIGHT_HAND = 7
uint8 JOINT_TORSO = 8
uint8 JOINT_LEFT_HIP = 9
uint8 JOINT_RIGHT_HIP = 10
uint8 JOINT_LEFT_KNEE = 11
uint8 JOINT_RIGHT_KNEE = 12
uint8 JOINT_LEFT_FOOT = 13
uint8 JOINT_RIGHT_FOOT = 14
uint8 JOINT_NUMBER = 15

geometry_msgs/Pose[] joints
")



(provide :cob_perception_msgs/PersonStamped "08b504f30560aab069643e77a4cb4556")


