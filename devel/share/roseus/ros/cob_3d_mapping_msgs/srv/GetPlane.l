;; Auto-generated. Do not edit!


(when (boundp 'cob_3d_mapping_msgs::GetPlane)
  (if (not (find-package "COB_3D_MAPPING_MSGS"))
    (make-package "COB_3D_MAPPING_MSGS"))
  (shadow 'GetPlane (find-package "COB_3D_MAPPING_MSGS")))
(unless (find-package "COB_3D_MAPPING_MSGS::GETPLANE")
  (make-package "COB_3D_MAPPING_MSGS::GETPLANE"))
(unless (find-package "COB_3D_MAPPING_MSGS::GETPLANEREQUEST")
  (make-package "COB_3D_MAPPING_MSGS::GETPLANEREQUEST"))
(unless (find-package "COB_3D_MAPPING_MSGS::GETPLANERESPONSE")
  (make-package "COB_3D_MAPPING_MSGS::GETPLANERESPONSE"))

(in-package "ROS")



(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cob_3d_mapping_msgs::GetPlaneRequest
  :super ros::object
  :slots ())

(defmethod cob_3d_mapping_msgs::GetPlaneRequest
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

(defclass cob_3d_mapping_msgs::GetPlaneResponse
  :super ros::object
  :slots (_pc _hull _plane_coeffs ))

(defmethod cob_3d_mapping_msgs::GetPlaneResponse
  (:init
   (&key
    ((:pc __pc) (instance sensor_msgs::PointCloud2 :init))
    ((:hull __hull) (instance sensor_msgs::PointCloud2 :init))
    ((:plane_coeffs __plane_coeffs) (let (r) (dotimes (i 0) (push (instance std_msgs::Float32 :init) r)) r))
    )
   (send-super :init)
   (setq _pc __pc)
   (setq _hull __hull)
   (setq _plane_coeffs __plane_coeffs)
   self)
  (:pc
   (&rest __pc)
   (if (keywordp (car __pc))
       (send* _pc __pc)
     (progn
       (if __pc (setq _pc (car __pc)))
       _pc)))
  (:hull
   (&rest __hull)
   (if (keywordp (car __hull))
       (send* _hull __hull)
     (progn
       (if __hull (setq _hull (car __hull)))
       _hull)))
  (:plane_coeffs
   (&rest __plane_coeffs)
   (if (keywordp (car __plane_coeffs))
       (send* _plane_coeffs __plane_coeffs)
     (progn
       (if __plane_coeffs (setq _plane_coeffs (car __plane_coeffs)))
       _plane_coeffs)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/PointCloud2 _pc
    (send _pc :serialization-length)
    ;; sensor_msgs/PointCloud2 _hull
    (send _hull :serialization-length)
    ;; std_msgs/Float32[] _plane_coeffs
    (apply #'+ (send-all _plane_coeffs :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/PointCloud2 _pc
       (send _pc :serialize s)
     ;; sensor_msgs/PointCloud2 _hull
       (send _hull :serialize s)
     ;; std_msgs/Float32[] _plane_coeffs
     (write-long (length _plane_coeffs) s)
     (dolist (elem _plane_coeffs)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/PointCloud2 _pc
     (send _pc :deserialize buf ptr-) (incf ptr- (send _pc :serialization-length))
   ;; sensor_msgs/PointCloud2 _hull
     (send _hull :deserialize buf ptr-) (incf ptr- (send _hull :serialization-length))
   ;; std_msgs/Float32[] _plane_coeffs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _plane_coeffs (let (r) (dotimes (i n) (push (instance std_msgs::Float32 :init) r)) r))
     (dolist (elem- _plane_coeffs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass cob_3d_mapping_msgs::GetPlane
  :super ros::object
  :slots ())

(setf (get cob_3d_mapping_msgs::GetPlane :md5sum-) "e11c006bc7fabf06881bc7d0de7ba820")
(setf (get cob_3d_mapping_msgs::GetPlane :datatype-) "cob_3d_mapping_msgs/GetPlane")
(setf (get cob_3d_mapping_msgs::GetPlane :request) cob_3d_mapping_msgs::GetPlaneRequest)
(setf (get cob_3d_mapping_msgs::GetPlane :response) cob_3d_mapping_msgs::GetPlaneResponse)

(defmethod cob_3d_mapping_msgs::GetPlaneRequest
  (:response () (instance cob_3d_mapping_msgs::GetPlaneResponse :init)))

(setf (get cob_3d_mapping_msgs::GetPlaneRequest :md5sum-) "e11c006bc7fabf06881bc7d0de7ba820")
(setf (get cob_3d_mapping_msgs::GetPlaneRequest :datatype-) "cob_3d_mapping_msgs/GetPlaneRequest")
(setf (get cob_3d_mapping_msgs::GetPlaneRequest :definition-)
      "---
sensor_msgs/PointCloud2 pc
sensor_msgs/PointCloud2 hull
std_msgs/Float32[] plane_coeffs


================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

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
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

================================================================================
MSG: std_msgs/Float32
")

(setf (get cob_3d_mapping_msgs::GetPlaneResponse :md5sum-) "e11c006bc7fabf06881bc7d0de7ba820")
(setf (get cob_3d_mapping_msgs::GetPlaneResponse :datatype-) "cob_3d_mapping_msgs/GetPlaneResponse")
(setf (get cob_3d_mapping_msgs::GetPlaneResponse :definition-)
      "---
sensor_msgs/PointCloud2 pc
sensor_msgs/PointCloud2 hull
std_msgs/Float32[] plane_coeffs


================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

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
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

================================================================================
MSG: std_msgs/Float32
")



(provide :cob_3d_mapping_msgs/GetPlane "e11c006bc7fabf06881bc7d0de7ba820")


