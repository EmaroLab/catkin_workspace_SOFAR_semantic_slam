;; Auto-generated. Do not edit!


(when (boundp 'cob_object_detection_msgs::SaveRecordedObject)
  (if (not (find-package "COB_OBJECT_DETECTION_MSGS"))
    (make-package "COB_OBJECT_DETECTION_MSGS"))
  (shadow 'SaveRecordedObject (find-package "COB_OBJECT_DETECTION_MSGS")))
(unless (find-package "COB_OBJECT_DETECTION_MSGS::SAVERECORDEDOBJECT")
  (make-package "COB_OBJECT_DETECTION_MSGS::SAVERECORDEDOBJECT"))
(unless (find-package "COB_OBJECT_DETECTION_MSGS::SAVERECORDEDOBJECTREQUEST")
  (make-package "COB_OBJECT_DETECTION_MSGS::SAVERECORDEDOBJECTREQUEST"))
(unless (find-package "COB_OBJECT_DETECTION_MSGS::SAVERECORDEDOBJECTRESPONSE")
  (make-package "COB_OBJECT_DETECTION_MSGS::SAVERECORDEDOBJECTRESPONSE"))

(in-package "ROS")





(defclass cob_object_detection_msgs::SaveRecordedObjectRequest
  :super ros::object
  :slots (_storage_location ))

(defmethod cob_object_detection_msgs::SaveRecordedObjectRequest
  (:init
   (&key
    ((:storage_location __storage_location) "")
    )
   (send-super :init)
   (setq _storage_location (string __storage_location))
   self)
  (:storage_location
   (&optional __storage_location)
   (if __storage_location (setq _storage_location __storage_location)) _storage_location)
  (:serialization-length
   ()
   (+
    ;; string _storage_location
    4 (length _storage_location)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _storage_location
       (write-long (length _storage_location) s) (princ _storage_location s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _storage_location
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _storage_location (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cob_object_detection_msgs::SaveRecordedObjectResponse
  :super ros::object
  :slots ())

(defmethod cob_object_detection_msgs::SaveRecordedObjectResponse
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

(defclass cob_object_detection_msgs::SaveRecordedObject
  :super ros::object
  :slots ())

(setf (get cob_object_detection_msgs::SaveRecordedObject :md5sum-) "980da3132a7c1c17973e490fc0fbba86")
(setf (get cob_object_detection_msgs::SaveRecordedObject :datatype-) "cob_object_detection_msgs/SaveRecordedObject")
(setf (get cob_object_detection_msgs::SaveRecordedObject :request) cob_object_detection_msgs::SaveRecordedObjectRequest)
(setf (get cob_object_detection_msgs::SaveRecordedObject :response) cob_object_detection_msgs::SaveRecordedObjectResponse)

(defmethod cob_object_detection_msgs::SaveRecordedObjectRequest
  (:response () (instance cob_object_detection_msgs::SaveRecordedObjectResponse :init)))

(setf (get cob_object_detection_msgs::SaveRecordedObjectRequest :md5sum-) "980da3132a7c1c17973e490fc0fbba86")
(setf (get cob_object_detection_msgs::SaveRecordedObjectRequest :datatype-) "cob_object_detection_msgs/SaveRecordedObjectRequest")
(setf (get cob_object_detection_msgs::SaveRecordedObjectRequest :definition-)
      "


string storage_location
---



")

(setf (get cob_object_detection_msgs::SaveRecordedObjectResponse :md5sum-) "980da3132a7c1c17973e490fc0fbba86")
(setf (get cob_object_detection_msgs::SaveRecordedObjectResponse :datatype-) "cob_object_detection_msgs/SaveRecordedObjectResponse")
(setf (get cob_object_detection_msgs::SaveRecordedObjectResponse :definition-)
      "


string storage_location
---



")



(provide :cob_object_detection_msgs/SaveRecordedObject "980da3132a7c1c17973e490fc0fbba86")


