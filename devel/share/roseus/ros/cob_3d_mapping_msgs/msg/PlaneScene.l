;; Auto-generated. Do not edit!


(when (boundp 'cob_3d_mapping_msgs::PlaneScene)
  (if (not (find-package "COB_3D_MAPPING_MSGS"))
    (make-package "COB_3D_MAPPING_MSGS"))
  (shadow 'PlaneScene (find-package "COB_3D_MAPPING_MSGS")))
(unless (find-package "COB_3D_MAPPING_MSGS::PLANESCENE")
  (make-package "COB_3D_MAPPING_MSGS::PLANESCENE"))

(in-package "ROS")
;;//! \htmlinclude PlaneScene.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cob_3d_mapping_msgs::PlaneScene
  :super ros::object
  :slots (_header _planes ))

(defmethod cob_3d_mapping_msgs::PlaneScene
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:planes __planes) (let (r) (dotimes (i 0) (push (instance cob_3d_mapping_msgs::Plane :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _planes __planes)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:planes
   (&rest __planes)
   (if (keywordp (car __planes))
       (send* _planes __planes)
     (progn
       (if __planes (setq _planes (car __planes)))
       _planes)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; cob_3d_mapping_msgs/Plane[] _planes
    (apply #'+ (send-all _planes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; cob_3d_mapping_msgs/Plane[] _planes
     (write-long (length _planes) s)
     (dolist (elem _planes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; cob_3d_mapping_msgs/Plane[] _planes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _planes (let (r) (dotimes (i n) (push (instance cob_3d_mapping_msgs::Plane :init) r)) r))
     (dolist (elem- _planes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get cob_3d_mapping_msgs::PlaneScene :md5sum-) "5aa30c5b0316a946cb91f45ed3f1d963")
(setf (get cob_3d_mapping_msgs::PlaneScene :datatype-) "cob_3d_mapping_msgs/PlaneScene")
(setf (get cob_3d_mapping_msgs::PlaneScene :definition-)
      "Header header

#summary of planes
Plane[] planes

#camera of input data
#sensor_msgs/CameraInfo camera_info

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
MSG: cob_3d_mapping_msgs/Plane
#polygons describing hull
#first polygon -> outer hull
Polygon[] polygons

#pose describing parameters of plane
geometry_msgs/Pose pose

#number of points
float32 weight

#averaged color [deprecated to be removed]
std_msgs/ColorRGBA color

================================================================================
MSG: cob_3d_mapping_msgs/Polygon
#points describing polygon
Point2D[] points

================================================================================
MSG: cob_3d_mapping_msgs/Point2D
#coordinate on surface
float32 x
float32 y

#texture cooridante
float32 tex_x
float32 tex_y

float32 var

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
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a

")



(provide :cob_3d_mapping_msgs/PlaneScene "5aa30c5b0316a946cb91f45ed3f1d963")


