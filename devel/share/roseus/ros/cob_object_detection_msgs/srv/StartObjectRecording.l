;; Auto-generated. Do not edit!


(when (boundp 'cob_object_detection_msgs::StartObjectRecording)
  (if (not (find-package "COB_OBJECT_DETECTION_MSGS"))
    (make-package "COB_OBJECT_DETECTION_MSGS"))
  (shadow 'StartObjectRecording (find-package "COB_OBJECT_DETECTION_MSGS")))
(unless (find-package "COB_OBJECT_DETECTION_MSGS::STARTOBJECTRECORDING")
  (make-package "COB_OBJECT_DETECTION_MSGS::STARTOBJECTRECORDING"))
(unless (find-package "COB_OBJECT_DETECTION_MSGS::STARTOBJECTRECORDINGREQUEST")
  (make-package "COB_OBJECT_DETECTION_MSGS::STARTOBJECTRECORDINGREQUEST"))
(unless (find-package "COB_OBJECT_DETECTION_MSGS::STARTOBJECTRECORDINGRESPONSE")
  (make-package "COB_OBJECT_DETECTION_MSGS::STARTOBJECTRECORDINGRESPONSE"))

(in-package "ROS")





(defclass cob_object_detection_msgs::StartObjectRecordingRequest
  :super ros::object
  :slots (_object_label ))

(defmethod cob_object_detection_msgs::StartObjectRecordingRequest
  (:init
   (&key
    ((:object_label __object_label) "")
    )
   (send-super :init)
   (setq _object_label (string __object_label))
   self)
  (:object_label
   (&optional __object_label)
   (if __object_label (setq _object_label __object_label)) _object_label)
  (:serialization-length
   ()
   (+
    ;; string _object_label
    4 (length _object_label)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _object_label
       (write-long (length _object_label) s) (princ _object_label s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _object_label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object_label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cob_object_detection_msgs::StartObjectRecordingResponse
  :super ros::object
  :slots ())

(defmethod cob_object_detection_msgs::StartObjectRecordingResponse
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

(defclass cob_object_detection_msgs::StartObjectRecording
  :super ros::object
  :slots ())

(setf (get cob_object_detection_msgs::StartObjectRecording :md5sum-) "ed3bc845528a8aed5f5a16c86665300a")
(setf (get cob_object_detection_msgs::StartObjectRecording :datatype-) "cob_object_detection_msgs/StartObjectRecording")
(setf (get cob_object_detection_msgs::StartObjectRecording :request) cob_object_detection_msgs::StartObjectRecordingRequest)
(setf (get cob_object_detection_msgs::StartObjectRecording :response) cob_object_detection_msgs::StartObjectRecordingResponse)

(defmethod cob_object_detection_msgs::StartObjectRecordingRequest
  (:response () (instance cob_object_detection_msgs::StartObjectRecordingResponse :init)))

(setf (get cob_object_detection_msgs::StartObjectRecordingRequest :md5sum-) "ed3bc845528a8aed5f5a16c86665300a")
(setf (get cob_object_detection_msgs::StartObjectRecordingRequest :datatype-) "cob_object_detection_msgs/StartObjectRecordingRequest")
(setf (get cob_object_detection_msgs::StartObjectRecordingRequest :definition-)
      "


string object_label
---



")

(setf (get cob_object_detection_msgs::StartObjectRecordingResponse :md5sum-) "ed3bc845528a8aed5f5a16c86665300a")
(setf (get cob_object_detection_msgs::StartObjectRecordingResponse :datatype-) "cob_object_detection_msgs/StartObjectRecordingResponse")
(setf (get cob_object_detection_msgs::StartObjectRecordingResponse :definition-)
      "


string object_label
---



")



(provide :cob_object_detection_msgs/StartObjectRecording "ed3bc845528a8aed5f5a16c86665300a")


