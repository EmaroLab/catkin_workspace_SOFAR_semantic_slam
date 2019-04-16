;; Auto-generated. Do not edit!


(when (boundp 'cob_object_detection_msgs::RectArray)
  (if (not (find-package "COB_OBJECT_DETECTION_MSGS"))
    (make-package "COB_OBJECT_DETECTION_MSGS"))
  (shadow 'RectArray (find-package "COB_OBJECT_DETECTION_MSGS")))
(unless (find-package "COB_OBJECT_DETECTION_MSGS::RECTARRAY")
  (make-package "COB_OBJECT_DETECTION_MSGS::RECTARRAY"))

(in-package "ROS")
;;//! \htmlinclude RectArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cob_object_detection_msgs::RectArray
  :super ros::object
  :slots (_header _rects ))

(defmethod cob_object_detection_msgs::RectArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:rects __rects) (let (r) (dotimes (i 0) (push (instance cob_object_detection_msgs::Rect :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _rects __rects)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:rects
   (&rest __rects)
   (if (keywordp (car __rects))
       (send* _rects __rects)
     (progn
       (if __rects (setq _rects (car __rects)))
       _rects)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; cob_object_detection_msgs/Rect[] _rects
    (apply #'+ (send-all _rects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; cob_object_detection_msgs/Rect[] _rects
     (write-long (length _rects) s)
     (dolist (elem _rects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; cob_object_detection_msgs/Rect[] _rects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rects (let (r) (dotimes (i n) (push (instance cob_object_detection_msgs::Rect :init) r)) r))
     (dolist (elem- _rects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get cob_object_detection_msgs::RectArray :md5sum-) "e83b38fbaea3a641fa77f009f9bf492e")
(setf (get cob_object_detection_msgs::RectArray :datatype-) "cob_object_detection_msgs/RectArray")
(setf (get cob_object_detection_msgs::RectArray :definition-)
      "Header header
Rect[] rects

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
MSG: cob_object_detection_msgs/Rect
int32 x
int32 y
int32 width
int32 height

")



(provide :cob_object_detection_msgs/RectArray "e83b38fbaea3a641fa77f009f9bf492e")


