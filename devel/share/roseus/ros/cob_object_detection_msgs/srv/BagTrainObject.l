;; Auto-generated. Do not edit!


(when (boundp 'cob_object_detection_msgs::BagTrainObject)
  (if (not (find-package "COB_OBJECT_DETECTION_MSGS"))
    (make-package "COB_OBJECT_DETECTION_MSGS"))
  (shadow 'BagTrainObject (find-package "COB_OBJECT_DETECTION_MSGS")))
(unless (find-package "COB_OBJECT_DETECTION_MSGS::BAGTRAINOBJECT")
  (make-package "COB_OBJECT_DETECTION_MSGS::BAGTRAINOBJECT"))
(unless (find-package "COB_OBJECT_DETECTION_MSGS::BAGTRAINOBJECTREQUEST")
  (make-package "COB_OBJECT_DETECTION_MSGS::BAGTRAINOBJECTREQUEST"))
(unless (find-package "COB_OBJECT_DETECTION_MSGS::BAGTRAINOBJECTRESPONSE")
  (make-package "COB_OBJECT_DETECTION_MSGS::BAGTRAINOBJECTRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cob_object_detection_msgs::BagTrainObjectRequest
  :super ros::object
  :slots (_object_name ))

(defmethod cob_object_detection_msgs::BagTrainObjectRequest
  (:init
   (&key
    ((:object_name __object_name) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _object_name __object_name)
   self)
  (:object_name
   (&rest __object_name)
   (if (keywordp (car __object_name))
       (send* _object_name __object_name)
     (progn
       (if __object_name (setq _object_name (car __object_name)))
       _object_name)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _object_name
    (send _object_name :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _object_name
       (send _object_name :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _object_name
     (send _object_name :deserialize buf ptr-) (incf ptr- (send _object_name :serialization-length))
   ;;
   self)
  )

(defclass cob_object_detection_msgs::BagTrainObjectResponse
  :super ros::object
  :slots (_trained ))

(defmethod cob_object_detection_msgs::BagTrainObjectResponse
  (:init
   (&key
    ((:trained __trained) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _trained __trained)
   self)
  (:trained
   (&rest __trained)
   (if (keywordp (car __trained))
       (send* _trained __trained)
     (progn
       (if __trained (setq _trained (car __trained)))
       _trained)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _trained
    (send _trained :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _trained
       (send _trained :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _trained
     (send _trained :deserialize buf ptr-) (incf ptr- (send _trained :serialization-length))
   ;;
   self)
  )

(defclass cob_object_detection_msgs::BagTrainObject
  :super ros::object
  :slots ())

(setf (get cob_object_detection_msgs::BagTrainObject :md5sum-) "e054914e8be752a53cf516ce4c1d583c")
(setf (get cob_object_detection_msgs::BagTrainObject :datatype-) "cob_object_detection_msgs/BagTrainObject")
(setf (get cob_object_detection_msgs::BagTrainObject :request) cob_object_detection_msgs::BagTrainObjectRequest)
(setf (get cob_object_detection_msgs::BagTrainObject :response) cob_object_detection_msgs::BagTrainObjectResponse)

(defmethod cob_object_detection_msgs::BagTrainObjectRequest
  (:response () (instance cob_object_detection_msgs::BagTrainObjectResponse :init)))

(setf (get cob_object_detection_msgs::BagTrainObjectRequest :md5sum-) "e054914e8be752a53cf516ce4c1d583c")
(setf (get cob_object_detection_msgs::BagTrainObjectRequest :datatype-) "cob_object_detection_msgs/BagTrainObjectRequest")
(setf (get cob_object_detection_msgs::BagTrainObjectRequest :definition-)
      "std_msgs/String object_name

================================================================================
MSG: std_msgs/String
string data
---
std_msgs/String trained


================================================================================
MSG: std_msgs/String
string data
")

(setf (get cob_object_detection_msgs::BagTrainObjectResponse :md5sum-) "e054914e8be752a53cf516ce4c1d583c")
(setf (get cob_object_detection_msgs::BagTrainObjectResponse :datatype-) "cob_object_detection_msgs/BagTrainObjectResponse")
(setf (get cob_object_detection_msgs::BagTrainObjectResponse :definition-)
      "std_msgs/String object_name

================================================================================
MSG: std_msgs/String
string data
---
std_msgs/String trained


================================================================================
MSG: std_msgs/String
string data
")



(provide :cob_object_detection_msgs/BagTrainObject "e054914e8be752a53cf516ce4c1d583c")


