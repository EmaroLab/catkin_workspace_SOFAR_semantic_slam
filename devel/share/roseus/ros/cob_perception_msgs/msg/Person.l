;; Auto-generated. Do not edit!


(when (boundp 'cob_perception_msgs::Person)
  (if (not (find-package "COB_PERCEPTION_MSGS"))
    (make-package "COB_PERCEPTION_MSGS"))
  (shadow 'Person (find-package "COB_PERCEPTION_MSGS")))
(unless (find-package "COB_PERCEPTION_MSGS::PERSON")
  (make-package "COB_PERCEPTION_MSGS::PERSON"))

(in-package "ROS")
;;//! \htmlinclude Person.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass cob_perception_msgs::Person
  :super ros::object
  :slots (_name _detector _position _velocity _skeleton ))

(defmethod cob_perception_msgs::Person
  (:init
   (&key
    ((:name __name) "")
    ((:detector __detector) "")
    ((:position __position) (instance geometry_msgs::Pose :init))
    ((:velocity __velocity) (instance geometry_msgs::Point :init))
    ((:skeleton __skeleton) (instance cob_perception_msgs::Skeleton :init))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _detector (string __detector))
   (setq _position __position)
   (setq _velocity __velocity)
   (setq _skeleton __skeleton)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:detector
   (&optional __detector)
   (if __detector (setq _detector __detector)) _detector)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:velocity
   (&rest __velocity)
   (if (keywordp (car __velocity))
       (send* _velocity __velocity)
     (progn
       (if __velocity (setq _velocity (car __velocity)))
       _velocity)))
  (:skeleton
   (&rest __skeleton)
   (if (keywordp (car __skeleton))
       (send* _skeleton __skeleton)
     (progn
       (if __skeleton (setq _skeleton (car __skeleton)))
       _skeleton)))
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _detector
    4 (length _detector)
    ;; geometry_msgs/Pose _position
    (send _position :serialization-length)
    ;; geometry_msgs/Point _velocity
    (send _velocity :serialization-length)
    ;; cob_perception_msgs/Skeleton _skeleton
    (send _skeleton :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _detector
       (write-long (length _detector) s) (princ _detector s)
     ;; geometry_msgs/Pose _position
       (send _position :serialize s)
     ;; geometry_msgs/Point _velocity
       (send _velocity :serialize s)
     ;; cob_perception_msgs/Skeleton _skeleton
       (send _skeleton :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _detector
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _detector (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; geometry_msgs/Point _velocity
     (send _velocity :deserialize buf ptr-) (incf ptr- (send _velocity :serialization-length))
   ;; cob_perception_msgs/Skeleton _skeleton
     (send _skeleton :deserialize buf ptr-) (incf ptr- (send _skeleton :serialization-length))
   ;;
   self)
  )

(setf (get cob_perception_msgs::Person :md5sum-) "0726793e65e7420b1c7d52ed8e449b17")
(setf (get cob_perception_msgs::Person :datatype-) "cob_perception_msgs/Person")
(setf (get cob_perception_msgs::Person :definition-)
      "#This message is used to describe a person
 
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



(provide :cob_perception_msgs/Person "0726793e65e7420b1c7d52ed8e449b17")


