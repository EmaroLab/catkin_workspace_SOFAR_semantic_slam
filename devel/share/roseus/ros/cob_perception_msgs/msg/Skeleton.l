;; Auto-generated. Do not edit!


(when (boundp 'cob_perception_msgs::Skeleton)
  (if (not (find-package "COB_PERCEPTION_MSGS"))
    (make-package "COB_PERCEPTION_MSGS"))
  (shadow 'Skeleton (find-package "COB_PERCEPTION_MSGS")))
(unless (find-package "COB_PERCEPTION_MSGS::SKELETON")
  (make-package "COB_PERCEPTION_MSGS::SKELETON"))

(in-package "ROS")
;;//! \htmlinclude Skeleton.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*JOINT_HEAD*" (find-package "COB_PERCEPTION_MSGS::SKELETON"))
(shadow '*JOINT_HEAD* (find-package "COB_PERCEPTION_MSGS::SKELETON"))
(defconstant cob_perception_msgs::Skeleton::*JOINT_HEAD* 0)
(intern "*JOINT_NECK*" (find-package "COB_PERCEPTION_MSGS::SKELETON"))
(shadow '*JOINT_NECK* (find-package "COB_PERCEPTION_MSGS::SKELETON"))
(defconstant cob_perception_msgs::Skeleton::*JOINT_NECK* 1)
(intern "*JOINT_LEFT_SHOULDER*" (find-package "COB_PERCEPTION_MSGS::SKELETON"))
(shadow '*JOINT_LEFT_SHOULDER* (find-package "COB_PERCEPTION_MSGS::SKELETON"))
(defconstant cob_perception_msgs::Skeleton::*JOINT_LEFT_SHOULDER* 2)
(intern "*JOINT_RIGHT_SHOULDER*" (find-package "COB_PERCEPTION_MSGS::SKELETON"))
(shadow '*JOINT_RIGHT_SHOULDER* (find-package "COB_PERCEPTION_MSGS::SKELETON"))
(defconstant cob_perception_msgs::Skeleton::*JOINT_RIGHT_SHOULDER* 3)
(intern "*JOINT_LEFT_ELBOW*" (find-package "COB_PERCEPTION_MSGS::SKELETON"))
(shadow '*JOINT_LEFT_ELBOW* (find-package "COB_PERCEPTION_MSGS::SKELETON"))
(defconstant cob_perception_msgs::Skeleton::*JOINT_LEFT_ELBOW* 4)
(intern "*JOINT_RIGHT_ELBOW*" (find-package "COB_PERCEPTION_MSGS::SKELETON"))
(shadow '*JOINT_RIGHT_ELBOW* (find-package "COB_PERCEPTION_MSGS::SKELETON"))
(defconstant cob_perception_msgs::Skeleton::*JOINT_RIGHT_ELBOW* 5)
(intern "*JOINT_LEFT_HAND*" (find-package "COB_PERCEPTION_MSGS::SKELETON"))
(shadow '*JOINT_LEFT_HAND* (find-package "COB_PERCEPTION_MSGS::SKELETON"))
(defconstant cob_perception_msgs::Skeleton::*JOINT_LEFT_HAND* 6)
(intern "*JOINT_RIGHT_HAND*" (find-package "COB_PERCEPTION_MSGS::SKELETON"))
(shadow '*JOINT_RIGHT_HAND* (find-package "COB_PERCEPTION_MSGS::SKELETON"))
(defconstant cob_perception_msgs::Skeleton::*JOINT_RIGHT_HAND* 7)
(intern "*JOINT_TORSO*" (find-package "COB_PERCEPTION_MSGS::SKELETON"))
(shadow '*JOINT_TORSO* (find-package "COB_PERCEPTION_MSGS::SKELETON"))
(defconstant cob_perception_msgs::Skeleton::*JOINT_TORSO* 8)
(intern "*JOINT_LEFT_HIP*" (find-package "COB_PERCEPTION_MSGS::SKELETON"))
(shadow '*JOINT_LEFT_HIP* (find-package "COB_PERCEPTION_MSGS::SKELETON"))
(defconstant cob_perception_msgs::Skeleton::*JOINT_LEFT_HIP* 9)
(intern "*JOINT_RIGHT_HIP*" (find-package "COB_PERCEPTION_MSGS::SKELETON"))
(shadow '*JOINT_RIGHT_HIP* (find-package "COB_PERCEPTION_MSGS::SKELETON"))
(defconstant cob_perception_msgs::Skeleton::*JOINT_RIGHT_HIP* 10)
(intern "*JOINT_LEFT_KNEE*" (find-package "COB_PERCEPTION_MSGS::SKELETON"))
(shadow '*JOINT_LEFT_KNEE* (find-package "COB_PERCEPTION_MSGS::SKELETON"))
(defconstant cob_perception_msgs::Skeleton::*JOINT_LEFT_KNEE* 11)
(intern "*JOINT_RIGHT_KNEE*" (find-package "COB_PERCEPTION_MSGS::SKELETON"))
(shadow '*JOINT_RIGHT_KNEE* (find-package "COB_PERCEPTION_MSGS::SKELETON"))
(defconstant cob_perception_msgs::Skeleton::*JOINT_RIGHT_KNEE* 12)
(intern "*JOINT_LEFT_FOOT*" (find-package "COB_PERCEPTION_MSGS::SKELETON"))
(shadow '*JOINT_LEFT_FOOT* (find-package "COB_PERCEPTION_MSGS::SKELETON"))
(defconstant cob_perception_msgs::Skeleton::*JOINT_LEFT_FOOT* 13)
(intern "*JOINT_RIGHT_FOOT*" (find-package "COB_PERCEPTION_MSGS::SKELETON"))
(shadow '*JOINT_RIGHT_FOOT* (find-package "COB_PERCEPTION_MSGS::SKELETON"))
(defconstant cob_perception_msgs::Skeleton::*JOINT_RIGHT_FOOT* 14)
(intern "*JOINT_NUMBER*" (find-package "COB_PERCEPTION_MSGS::SKELETON"))
(shadow '*JOINT_NUMBER* (find-package "COB_PERCEPTION_MSGS::SKELETON"))
(defconstant cob_perception_msgs::Skeleton::*JOINT_NUMBER* 15)
(defclass cob_perception_msgs::Skeleton
  :super ros::object
  :slots (_joints ))

(defmethod cob_perception_msgs::Skeleton
  (:init
   (&key
    ((:joints __joints) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Pose :init) r)) r))
    )
   (send-super :init)
   (setq _joints __joints)
   self)
  (:joints
   (&rest __joints)
   (if (keywordp (car __joints))
       (send* _joints __joints)
     (progn
       (if __joints (setq _joints (car __joints)))
       _joints)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose[] _joints
    (apply #'+ (send-all _joints :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose[] _joints
     (write-long (length _joints) s)
     (dolist (elem _joints)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose[] _joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joints (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _joints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get cob_perception_msgs::Skeleton :md5sum-) "2ffad426b6c23b6289166d68b5570546")
(setf (get cob_perception_msgs::Skeleton :datatype-) "cob_perception_msgs/Skeleton")
(setf (get cob_perception_msgs::Skeleton :definition-)
      "# This messages is used to describe a skeleton and defines joints of a tracked person

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

")



(provide :cob_perception_msgs/Skeleton "2ffad426b6c23b6289166d68b5570546")


