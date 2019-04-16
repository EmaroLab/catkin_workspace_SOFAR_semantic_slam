;; Auto-generated. Do not edit!


(when (boundp 'cob_perception_msgs::ActionRecognitionmsg)
  (if (not (find-package "COB_PERCEPTION_MSGS"))
    (make-package "COB_PERCEPTION_MSGS"))
  (shadow 'ActionRecognitionmsg (find-package "COB_PERCEPTION_MSGS")))
(unless (find-package "COB_PERCEPTION_MSGS::ACTIONRECOGNITIONMSG")
  (make-package "COB_PERCEPTION_MSGS::ACTIONRECOGNITIONMSG"))

(in-package "ROS")
;;//! \htmlinclude ActionRecognitionmsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cob_perception_msgs::ActionRecognitionmsg
  :super ros::object
  :slots (_header _labels _probabilities ))

(defmethod cob_perception_msgs::ActionRecognitionmsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:labels __labels) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:probabilities __probabilities) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _labels __labels)
   (setq _probabilities __probabilities)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:labels
   (&optional __labels)
   (if __labels (setq _labels __labels)) _labels)
  (:probabilities
   (&optional __probabilities)
   (if __probabilities (setq _probabilities __probabilities)) _probabilities)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string[] _labels
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _labels)) 4
    ;; float32[] _probabilities
    (* 4    (length _probabilities)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string[] _labels
     (write-long (length _labels) s)
     (dolist (elem _labels)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float32[] _probabilities
     (write-long (length _probabilities) s)
     (dotimes (i (length _probabilities))
       (sys::poke (elt _probabilities i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string[] _labels
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _labels (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _labels i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float32[] _probabilities
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _probabilities (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _probabilities i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get cob_perception_msgs::ActionRecognitionmsg :md5sum-) "35ce3f516ef25de507f2f0b3b42469d4")
(setf (get cob_perception_msgs::ActionRecognitionmsg :datatype-) "cob_perception_msgs/ActionRecognitionmsg")
(setf (get cob_perception_msgs::ActionRecognitionmsg :definition-)
      "Header header
string[] labels
float32[] probabilities 

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

")



(provide :cob_perception_msgs/ActionRecognitionmsg "35ce3f516ef25de507f2f0b3b42469d4")


