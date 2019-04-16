;; Auto-generated. Do not edit!


(when (boundp 'cob_3d_mapping_msgs::GetBoundingBoxes)
  (if (not (find-package "COB_3D_MAPPING_MSGS"))
    (make-package "COB_3D_MAPPING_MSGS"))
  (shadow 'GetBoundingBoxes (find-package "COB_3D_MAPPING_MSGS")))
(unless (find-package "COB_3D_MAPPING_MSGS::GETBOUNDINGBOXES")
  (make-package "COB_3D_MAPPING_MSGS::GETBOUNDINGBOXES"))
(unless (find-package "COB_3D_MAPPING_MSGS::GETBOUNDINGBOXESREQUEST")
  (make-package "COB_3D_MAPPING_MSGS::GETBOUNDINGBOXESREQUEST"))
(unless (find-package "COB_3D_MAPPING_MSGS::GETBOUNDINGBOXESRESPONSE")
  (make-package "COB_3D_MAPPING_MSGS::GETBOUNDINGBOXESRESPONSE"))

(in-package "ROS")



(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass cob_3d_mapping_msgs::GetBoundingBoxesRequest
  :super ros::object
  :slots ())

(defmethod cob_3d_mapping_msgs::GetBoundingBoxesRequest
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

(defclass cob_3d_mapping_msgs::GetBoundingBoxesResponse
  :super ros::object
  :slots (_bounding_boxes ))

(defmethod cob_3d_mapping_msgs::GetBoundingBoxesResponse
  (:init
   (&key
    ((:bounding_boxes __bounding_boxes) (let (r) (dotimes (i 0) (push (instance sensor_msgs::PointCloud2 :init) r)) r))
    )
   (send-super :init)
   (setq _bounding_boxes __bounding_boxes)
   self)
  (:bounding_boxes
   (&rest __bounding_boxes)
   (if (keywordp (car __bounding_boxes))
       (send* _bounding_boxes __bounding_boxes)
     (progn
       (if __bounding_boxes (setq _bounding_boxes (car __bounding_boxes)))
       _bounding_boxes)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/PointCloud2[] _bounding_boxes
    (apply #'+ (send-all _bounding_boxes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/PointCloud2[] _bounding_boxes
     (write-long (length _bounding_boxes) s)
     (dolist (elem _bounding_boxes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/PointCloud2[] _bounding_boxes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bounding_boxes (let (r) (dotimes (i n) (push (instance sensor_msgs::PointCloud2 :init) r)) r))
     (dolist (elem- _bounding_boxes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass cob_3d_mapping_msgs::GetBoundingBoxes
  :super ros::object
  :slots ())

(setf (get cob_3d_mapping_msgs::GetBoundingBoxes :md5sum-) "2c8e5a484f41a0aac9855792591d7d4c")
(setf (get cob_3d_mapping_msgs::GetBoundingBoxes :datatype-) "cob_3d_mapping_msgs/GetBoundingBoxes")
(setf (get cob_3d_mapping_msgs::GetBoundingBoxes :request) cob_3d_mapping_msgs::GetBoundingBoxesRequest)
(setf (get cob_3d_mapping_msgs::GetBoundingBoxes :response) cob_3d_mapping_msgs::GetBoundingBoxesResponse)

(defmethod cob_3d_mapping_msgs::GetBoundingBoxesRequest
  (:response () (instance cob_3d_mapping_msgs::GetBoundingBoxesResponse :init)))

(setf (get cob_3d_mapping_msgs::GetBoundingBoxesRequest :md5sum-) "2c8e5a484f41a0aac9855792591d7d4c")
(setf (get cob_3d_mapping_msgs::GetBoundingBoxesRequest :datatype-) "cob_3d_mapping_msgs/GetBoundingBoxesRequest")
(setf (get cob_3d_mapping_msgs::GetBoundingBoxesRequest :definition-)
      "---
sensor_msgs/PointCloud2[] bounding_boxes


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
")

(setf (get cob_3d_mapping_msgs::GetBoundingBoxesResponse :md5sum-) "2c8e5a484f41a0aac9855792591d7d4c")
(setf (get cob_3d_mapping_msgs::GetBoundingBoxesResponse :datatype-) "cob_3d_mapping_msgs/GetBoundingBoxesResponse")
(setf (get cob_3d_mapping_msgs::GetBoundingBoxesResponse :definition-)
      "---
sensor_msgs/PointCloud2[] bounding_boxes


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
")



(provide :cob_3d_mapping_msgs/GetBoundingBoxes "2c8e5a484f41a0aac9855792591d7d4c")


