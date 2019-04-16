;; Auto-generated. Do not edit!


(when (boundp 'cob_object_detection_msgs::StopObjectRecording)
  (if (not (find-package "COB_OBJECT_DETECTION_MSGS"))
    (make-package "COB_OBJECT_DETECTION_MSGS"))
  (shadow 'StopObjectRecording (find-package "COB_OBJECT_DETECTION_MSGS")))
(unless (find-package "COB_OBJECT_DETECTION_MSGS::STOPOBJECTRECORDING")
  (make-package "COB_OBJECT_DETECTION_MSGS::STOPOBJECTRECORDING"))
(unless (find-package "COB_OBJECT_DETECTION_MSGS::STOPOBJECTRECORDINGREQUEST")
  (make-package "COB_OBJECT_DETECTION_MSGS::STOPOBJECTRECORDINGREQUEST"))
(unless (find-package "COB_OBJECT_DETECTION_MSGS::STOPOBJECTRECORDINGRESPONSE")
  (make-package "COB_OBJECT_DETECTION_MSGS::STOPOBJECTRECORDINGRESPONSE"))

(in-package "ROS")





(defclass cob_object_detection_msgs::StopObjectRecordingRequest
  :super ros::object
  :slots (_stop_although_model_is_incomplete ))

(defmethod cob_object_detection_msgs::StopObjectRecordingRequest
  (:init
   (&key
    ((:stop_although_model_is_incomplete __stop_although_model_is_incomplete) nil)
    )
   (send-super :init)
   (setq _stop_although_model_is_incomplete __stop_although_model_is_incomplete)
   self)
  (:stop_although_model_is_incomplete
   (&optional __stop_although_model_is_incomplete)
   (if __stop_although_model_is_incomplete (setq _stop_although_model_is_incomplete __stop_although_model_is_incomplete)) _stop_although_model_is_incomplete)
  (:serialization-length
   ()
   (+
    ;; bool _stop_although_model_is_incomplete
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _stop_although_model_is_incomplete
       (if _stop_although_model_is_incomplete (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _stop_although_model_is_incomplete
     (setq _stop_although_model_is_incomplete (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass cob_object_detection_msgs::StopObjectRecordingResponse
  :super ros::object
  :slots (_recording_stopped ))

(defmethod cob_object_detection_msgs::StopObjectRecordingResponse
  (:init
   (&key
    ((:recording_stopped __recording_stopped) nil)
    )
   (send-super :init)
   (setq _recording_stopped __recording_stopped)
   self)
  (:recording_stopped
   (&optional __recording_stopped)
   (if __recording_stopped (setq _recording_stopped __recording_stopped)) _recording_stopped)
  (:serialization-length
   ()
   (+
    ;; bool _recording_stopped
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _recording_stopped
       (if _recording_stopped (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _recording_stopped
     (setq _recording_stopped (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass cob_object_detection_msgs::StopObjectRecording
  :super ros::object
  :slots ())

(setf (get cob_object_detection_msgs::StopObjectRecording :md5sum-) "b115df286bf93d57db01286b71c91409")
(setf (get cob_object_detection_msgs::StopObjectRecording :datatype-) "cob_object_detection_msgs/StopObjectRecording")
(setf (get cob_object_detection_msgs::StopObjectRecording :request) cob_object_detection_msgs::StopObjectRecordingRequest)
(setf (get cob_object_detection_msgs::StopObjectRecording :response) cob_object_detection_msgs::StopObjectRecordingResponse)

(defmethod cob_object_detection_msgs::StopObjectRecordingRequest
  (:response () (instance cob_object_detection_msgs::StopObjectRecordingResponse :init)))

(setf (get cob_object_detection_msgs::StopObjectRecordingRequest :md5sum-) "b115df286bf93d57db01286b71c91409")
(setf (get cob_object_detection_msgs::StopObjectRecordingRequest :datatype-) "cob_object_detection_msgs/StopObjectRecordingRequest")
(setf (get cob_object_detection_msgs::StopObjectRecordingRequest :definition-)
      "


bool stop_although_model_is_incomplete
---

bool recording_stopped

")

(setf (get cob_object_detection_msgs::StopObjectRecordingResponse :md5sum-) "b115df286bf93d57db01286b71c91409")
(setf (get cob_object_detection_msgs::StopObjectRecordingResponse :datatype-) "cob_object_detection_msgs/StopObjectRecordingResponse")
(setf (get cob_object_detection_msgs::StopObjectRecordingResponse :definition-)
      "


bool stop_although_model_is_incomplete
---

bool recording_stopped

")



(provide :cob_object_detection_msgs/StopObjectRecording "b115df286bf93d57db01286b71c91409")


