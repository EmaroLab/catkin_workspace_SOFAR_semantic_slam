;; Auto-generated. Do not edit!


(when (boundp 'semantical_slam::CreateSemMsg)
  (if (not (find-package "SEMANTICAL_SLAM"))
    (make-package "SEMANTICAL_SLAM"))
  (shadow 'CreateSemMsg (find-package "SEMANTICAL_SLAM")))
(unless (find-package "SEMANTICAL_SLAM::CREATESEMMSG")
  (make-package "SEMANTICAL_SLAM::CREATESEMMSG"))
(unless (find-package "SEMANTICAL_SLAM::CREATESEMMSGREQUEST")
  (make-package "SEMANTICAL_SLAM::CREATESEMMSGREQUEST"))
(unless (find-package "SEMANTICAL_SLAM::CREATESEMMSGRESPONSE")
  (make-package "SEMANTICAL_SLAM::CREATESEMMSGRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass semantical_slam::CreateSemMsgRequest
  :super ros::object
  :slots (_actual_place _actual_pose ))

(defmethod semantical_slam::CreateSemMsgRequest
  (:init
   (&key
    ((:actual_place __actual_place) "")
    ((:actual_pose __actual_pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _actual_place (string __actual_place))
   (setq _actual_pose __actual_pose)
   self)
  (:actual_place
   (&optional __actual_place)
   (if __actual_place (setq _actual_place __actual_place)) _actual_place)
  (:actual_pose
   (&rest __actual_pose)
   (if (keywordp (car __actual_pose))
       (send* _actual_pose __actual_pose)
     (progn
       (if __actual_pose (setq _actual_pose (car __actual_pose)))
       _actual_pose)))
  (:serialization-length
   ()
   (+
    ;; string _actual_place
    4 (length _actual_place)
    ;; geometry_msgs/Pose _actual_pose
    (send _actual_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _actual_place
       (write-long (length _actual_place) s) (princ _actual_place s)
     ;; geometry_msgs/Pose _actual_pose
       (send _actual_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _actual_place
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _actual_place (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _actual_pose
     (send _actual_pose :deserialize buf ptr-) (incf ptr- (send _actual_pose :serialization-length))
   ;;
   self)
  )

(defclass semantical_slam::CreateSemMsgResponse
  :super ros::object
  :slots (_final_message ))

(defmethod semantical_slam::CreateSemMsgResponse
  (:init
   (&key
    ((:final_message __final_message) (instance semantical_slam::SemanticalPoint :init))
    )
   (send-super :init)
   (setq _final_message __final_message)
   self)
  (:final_message
   (&rest __final_message)
   (if (keywordp (car __final_message))
       (send* _final_message __final_message)
     (progn
       (if __final_message (setq _final_message (car __final_message)))
       _final_message)))
  (:serialization-length
   ()
   (+
    ;; semantical_slam/SemanticalPoint _final_message
    (send _final_message :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; semantical_slam/SemanticalPoint _final_message
       (send _final_message :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; semantical_slam/SemanticalPoint _final_message
     (send _final_message :deserialize buf ptr-) (incf ptr- (send _final_message :serialization-length))
   ;;
   self)
  )

(defclass semantical_slam::CreateSemMsg
  :super ros::object
  :slots ())

(setf (get semantical_slam::CreateSemMsg :md5sum-) "2f150e66db12719ba67e40fde5c71fef")
(setf (get semantical_slam::CreateSemMsg :datatype-) "semantical_slam/CreateSemMsg")
(setf (get semantical_slam::CreateSemMsg :request) semantical_slam::CreateSemMsgRequest)
(setf (get semantical_slam::CreateSemMsg :response) semantical_slam::CreateSemMsgResponse)

(defmethod semantical_slam::CreateSemMsgRequest
  (:response () (instance semantical_slam::CreateSemMsgResponse :init)))

(setf (get semantical_slam::CreateSemMsgRequest :md5sum-) "2f150e66db12719ba67e40fde5c71fef")
(setf (get semantical_slam::CreateSemMsgRequest :datatype-) "semantical_slam/CreateSemMsgRequest")
(setf (get semantical_slam::CreateSemMsgRequest :definition-)
      "string actual_place
geometry_msgs/Pose actual_pose

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
---
SemanticalPoint final_message



================================================================================
MSG: semantical_slam/SemanticalPoint
float32 x
float32 y
string  place_name
")

(setf (get semantical_slam::CreateSemMsgResponse :md5sum-) "2f150e66db12719ba67e40fde5c71fef")
(setf (get semantical_slam::CreateSemMsgResponse :datatype-) "semantical_slam/CreateSemMsgResponse")
(setf (get semantical_slam::CreateSemMsgResponse :definition-)
      "string actual_place
geometry_msgs/Pose actual_pose

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
---
SemanticalPoint final_message



================================================================================
MSG: semantical_slam/SemanticalPoint
float32 x
float32 y
string  place_name
")



(provide :semantical_slam/CreateSemMsg "2f150e66db12719ba67e40fde5c71fef")


