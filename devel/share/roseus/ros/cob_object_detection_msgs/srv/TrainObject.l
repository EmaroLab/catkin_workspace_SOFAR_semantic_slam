;; Auto-generated. Do not edit!


(when (boundp 'cob_object_detection_msgs::TrainObject)
  (if (not (find-package "COB_OBJECT_DETECTION_MSGS"))
    (make-package "COB_OBJECT_DETECTION_MSGS"))
  (shadow 'TrainObject (find-package "COB_OBJECT_DETECTION_MSGS")))
(unless (find-package "COB_OBJECT_DETECTION_MSGS::TRAINOBJECT")
  (make-package "COB_OBJECT_DETECTION_MSGS::TRAINOBJECT"))
(unless (find-package "COB_OBJECT_DETECTION_MSGS::TRAINOBJECTREQUEST")
  (make-package "COB_OBJECT_DETECTION_MSGS::TRAINOBJECTREQUEST"))
(unless (find-package "COB_OBJECT_DETECTION_MSGS::TRAINOBJECTRESPONSE")
  (make-package "COB_OBJECT_DETECTION_MSGS::TRAINOBJECTRESPONSE"))

(in-package "ROS")





(defclass cob_object_detection_msgs::TrainObjectRequest
  :super ros::object
  :slots (_object_name ))

(defmethod cob_object_detection_msgs::TrainObjectRequest
  (:init
   (&key
    ((:object_name __object_name) "")
    )
   (send-super :init)
   (setq _object_name (string __object_name))
   self)
  (:object_name
   (&optional __object_name)
   (if __object_name (setq _object_name __object_name)) _object_name)
  (:serialization-length
   ()
   (+
    ;; string _object_name
    4 (length _object_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _object_name
       (write-long (length _object_name) s) (princ _object_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _object_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cob_object_detection_msgs::TrainObjectResponse
  :super ros::object
  :slots ())

(defmethod cob_object_detection_msgs::TrainObjectResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass cob_object_detection_msgs::TrainObject
  :super ros::object
  :slots ())

(setf (get cob_object_detection_msgs::TrainObject :md5sum-) "2f12226348d323c2e5b2031b3da53f1b")
(setf (get cob_object_detection_msgs::TrainObject :datatype-) "cob_object_detection_msgs/TrainObject")
(setf (get cob_object_detection_msgs::TrainObject :request) cob_object_detection_msgs::TrainObjectRequest)
(setf (get cob_object_detection_msgs::TrainObject :response) cob_object_detection_msgs::TrainObjectResponse)

(defmethod cob_object_detection_msgs::TrainObjectRequest
  (:response () (instance cob_object_detection_msgs::TrainObjectResponse :init)))

(setf (get cob_object_detection_msgs::TrainObjectRequest :md5sum-) "2f12226348d323c2e5b2031b3da53f1b")
(setf (get cob_object_detection_msgs::TrainObjectRequest :datatype-) "cob_object_detection_msgs/TrainObjectRequest")
(setf (get cob_object_detection_msgs::TrainObjectRequest :definition-)
      "string object_name
---


")

(setf (get cob_object_detection_msgs::TrainObjectResponse :md5sum-) "2f12226348d323c2e5b2031b3da53f1b")
(setf (get cob_object_detection_msgs::TrainObjectResponse :datatype-) "cob_object_detection_msgs/TrainObjectResponse")
(setf (get cob_object_detection_msgs::TrainObjectResponse :definition-)
      "string object_name
---


")



(provide :cob_object_detection_msgs/TrainObject "2f12226348d323c2e5b2031b3da53f1b")


