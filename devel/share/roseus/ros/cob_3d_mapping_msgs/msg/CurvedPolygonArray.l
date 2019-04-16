;; Auto-generated. Do not edit!


(when (boundp 'cob_3d_mapping_msgs::CurvedPolygonArray)
  (if (not (find-package "COB_3D_MAPPING_MSGS"))
    (make-package "COB_3D_MAPPING_MSGS"))
  (shadow 'CurvedPolygonArray (find-package "COB_3D_MAPPING_MSGS")))
(unless (find-package "COB_3D_MAPPING_MSGS::CURVEDPOLYGONARRAY")
  (make-package "COB_3D_MAPPING_MSGS::CURVEDPOLYGONARRAY"))

(in-package "ROS")
;;//! \htmlinclude CurvedPolygonArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cob_3d_mapping_msgs::CurvedPolygonArray
  :super ros::object
  :slots (_header _polygons ))

(defmethod cob_3d_mapping_msgs::CurvedPolygonArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:polygons __polygons) (let (r) (dotimes (i 0) (push (instance cob_3d_mapping_msgs::CurvedPolygon :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _polygons __polygons)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:polygons
   (&rest __polygons)
   (if (keywordp (car __polygons))
       (send* _polygons __polygons)
     (progn
       (if __polygons (setq _polygons (car __polygons)))
       _polygons)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; cob_3d_mapping_msgs/CurvedPolygon[] _polygons
    (apply #'+ (send-all _polygons :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; cob_3d_mapping_msgs/CurvedPolygon[] _polygons
     (write-long (length _polygons) s)
     (dolist (elem _polygons)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; cob_3d_mapping_msgs/CurvedPolygon[] _polygons
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _polygons (let (r) (dotimes (i n) (push (instance cob_3d_mapping_msgs::CurvedPolygon :init) r)) r))
     (dolist (elem- _polygons)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get cob_3d_mapping_msgs::CurvedPolygonArray :md5sum-) "dca7a231f0d66f77a98e4e50cf3157dc")
(setf (get cob_3d_mapping_msgs::CurvedPolygonArray :datatype-) "cob_3d_mapping_msgs/CurvedPolygonArray")
(setf (get cob_3d_mapping_msgs::CurvedPolygonArray :definition-)
      "Header header
CurvedPolygon[] polygons
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
MSG: cob_3d_mapping_msgs/CurvedPolygon
time stamp
uint32 ID
float32[6] parameter
#float32[][3] polyline
SimilarityScore[] score
PolylinePoint[] polyline
Feature[] features
string energy
float32 weight

================================================================================
MSG: cob_3d_mapping_msgs/SimilarityScore
uint32 ID
float32 prob
================================================================================
MSG: cob_3d_mapping_msgs/PolylinePoint
float32 x
float32 y
float32 edge_prob
================================================================================
MSG: cob_3d_mapping_msgs/Feature
float32 x
float32 y
float32 z
uint32 ID
")



(provide :cob_3d_mapping_msgs/CurvedPolygonArray "dca7a231f0d66f77a98e4e50cf3157dc")


