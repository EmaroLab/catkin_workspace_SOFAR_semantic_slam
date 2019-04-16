; Auto-generated. Do not edit!


(cl:in-package cob_3d_mapping_msgs-srv)


;//! \htmlinclude GetBoundingBoxes-request.msg.html

(cl:defclass <GetBoundingBoxes-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetBoundingBoxes-request (<GetBoundingBoxes-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetBoundingBoxes-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetBoundingBoxes-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_3d_mapping_msgs-srv:<GetBoundingBoxes-request> is deprecated: use cob_3d_mapping_msgs-srv:GetBoundingBoxes-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetBoundingBoxes-request>) ostream)
  "Serializes a message object of type '<GetBoundingBoxes-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetBoundingBoxes-request>) istream)
  "Deserializes a message object of type '<GetBoundingBoxes-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetBoundingBoxes-request>)))
  "Returns string type for a service object of type '<GetBoundingBoxes-request>"
  "cob_3d_mapping_msgs/GetBoundingBoxesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetBoundingBoxes-request)))
  "Returns string type for a service object of type 'GetBoundingBoxes-request"
  "cob_3d_mapping_msgs/GetBoundingBoxesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetBoundingBoxes-request>)))
  "Returns md5sum for a message object of type '<GetBoundingBoxes-request>"
  "2c8e5a484f41a0aac9855792591d7d4c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetBoundingBoxes-request)))
  "Returns md5sum for a message object of type 'GetBoundingBoxes-request"
  "2c8e5a484f41a0aac9855792591d7d4c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetBoundingBoxes-request>)))
  "Returns full string definition for message of type '<GetBoundingBoxes-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetBoundingBoxes-request)))
  "Returns full string definition for message of type 'GetBoundingBoxes-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetBoundingBoxes-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetBoundingBoxes-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetBoundingBoxes-request
))
;//! \htmlinclude GetBoundingBoxes-response.msg.html

(cl:defclass <GetBoundingBoxes-response> (roslisp-msg-protocol:ros-message)
  ((bounding_boxes
    :reader bounding_boxes
    :initarg :bounding_boxes
    :type (cl:vector sensor_msgs-msg:PointCloud2)
   :initform (cl:make-array 0 :element-type 'sensor_msgs-msg:PointCloud2 :initial-element (cl:make-instance 'sensor_msgs-msg:PointCloud2))))
)

(cl:defclass GetBoundingBoxes-response (<GetBoundingBoxes-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetBoundingBoxes-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetBoundingBoxes-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_3d_mapping_msgs-srv:<GetBoundingBoxes-response> is deprecated: use cob_3d_mapping_msgs-srv:GetBoundingBoxes-response instead.")))

(cl:ensure-generic-function 'bounding_boxes-val :lambda-list '(m))
(cl:defmethod bounding_boxes-val ((m <GetBoundingBoxes-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-srv:bounding_boxes-val is deprecated.  Use cob_3d_mapping_msgs-srv:bounding_boxes instead.")
  (bounding_boxes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetBoundingBoxes-response>) ostream)
  "Serializes a message object of type '<GetBoundingBoxes-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'bounding_boxes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'bounding_boxes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetBoundingBoxes-response>) istream)
  "Deserializes a message object of type '<GetBoundingBoxes-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'bounding_boxes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'bounding_boxes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_msgs-msg:PointCloud2))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetBoundingBoxes-response>)))
  "Returns string type for a service object of type '<GetBoundingBoxes-response>"
  "cob_3d_mapping_msgs/GetBoundingBoxesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetBoundingBoxes-response)))
  "Returns string type for a service object of type 'GetBoundingBoxes-response"
  "cob_3d_mapping_msgs/GetBoundingBoxesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetBoundingBoxes-response>)))
  "Returns md5sum for a message object of type '<GetBoundingBoxes-response>"
  "2c8e5a484f41a0aac9855792591d7d4c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetBoundingBoxes-response)))
  "Returns md5sum for a message object of type 'GetBoundingBoxes-response"
  "2c8e5a484f41a0aac9855792591d7d4c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetBoundingBoxes-response>)))
  "Returns full string definition for message of type '<GetBoundingBoxes-response>"
  (cl:format cl:nil "sensor_msgs/PointCloud2[] bounding_boxes~%~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetBoundingBoxes-response)))
  "Returns full string definition for message of type 'GetBoundingBoxes-response"
  (cl:format cl:nil "sensor_msgs/PointCloud2[] bounding_boxes~%~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetBoundingBoxes-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'bounding_boxes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetBoundingBoxes-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetBoundingBoxes-response
    (cl:cons ':bounding_boxes (bounding_boxes msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetBoundingBoxes)))
  'GetBoundingBoxes-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetBoundingBoxes)))
  'GetBoundingBoxes-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetBoundingBoxes)))
  "Returns string type for a service object of type '<GetBoundingBoxes>"
  "cob_3d_mapping_msgs/GetBoundingBoxes")