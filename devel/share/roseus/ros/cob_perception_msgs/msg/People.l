;; Auto-generated. Do not edit!


(when (boundp 'cob_perception_msgs::People)
  (if (not (find-package "COB_PERCEPTION_MSGS"))
    (make-package "COB_PERCEPTION_MSGS"))
  (shadow 'People (find-package "COB_PERCEPTION_MSGS")))
(unless (find-package "COB_PERCEPTION_MSGS::PEOPLE")
  (make-package "COB_PERCEPTION_MSGS::PEOPLE"))

(in-package "ROS")
;;//! \htmlinclude People.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cob_perception_msgs::People
  :super ros::object
  :slots (_header _people ))

(defmethod cob_perception_msgs::People
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:people __people) (let (r) (dotimes (i 0) (push (instance cob_perception_msgs::Person :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _people __people)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:people
   (&rest __people)
   (if (keywordp (car __people))
       (send* _people __people)
     (progn
       (if __people (setq _people (car __people)))
       _people)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; cob_perception_msgs/Person[] _people
    (apply #'+ (send-all _people :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; cob_perception_msgs/Person[] _people
     (write-long (length _people) s)
     (dolist (elem _people)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; cob_perception_msgs/Person[] _people
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _people (let (r) (dotimes (i n) (push (instance cob_perception_msgs::Person :init) r)) r))
     (dolist (elem- _people)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get cob_perception_msgs::People :md5sum-) "e3b3272edc8f72e2c8c666fbaeaa5f7b")
(setf (get cob_perception_msgs::People :datatype-) "cob_perception_msgs/People")
(setf (get cob_perception_msgs::People :definition-)
      "#This message is used to describe a crowd of people.

Header header
cob_perception_msgs/Person[] people

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



(provide :cob_perception_msgs/People "e3b3272edc8f72e2c8c666fbaeaa5f7b")


