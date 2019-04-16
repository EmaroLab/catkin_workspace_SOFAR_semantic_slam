; Auto-generated. Do not edit!


(cl:in-package cob_3d_mapping_msgs-srv)


;//! \htmlinclude GetPlane-request.msg.html

(cl:defclass <GetPlane-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetPlane-request (<GetPlane-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPlane-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPlane-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_3d_mapping_msgs-srv:<GetPlane-request> is deprecated: use cob_3d_mapping_msgs-srv:GetPlane-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPlane-request>) ostream)
  "Serializes a message object of type '<GetPlane-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPlane-request>) istream)
  "Deserializes a message object of type '<GetPlane-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPlane-request>)))
  "Returns string type for a service object of type '<GetPlane-request>"
  "cob_3d_mapping_msgs/GetPlaneRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPlane-request)))
  "Returns string type for a service object of type 'GetPlane-request"
  "cob_3d_mapping_msgs/GetPlaneRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPlane-request>)))
  "Returns md5sum for a message object of type '<GetPlane-request>"
  "e11c006bc7fabf06881bc7d0de7ba820")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPlane-request)))
  "Returns md5sum for a message object of type 'GetPlane-request"
  "e11c006bc7fabf06881bc7d0de7ba820")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPlane-request>)))
  "Returns full string definition for message of type '<GetPlane-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPlane-request)))
  "Returns full string definition for message of type 'GetPlane-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPlane-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPlane-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPlane-request
))
;//! \htmlinclude GetPlane-response.msg.html

(cl:defclass <GetPlane-response> (roslisp-msg-protocol:ros-message)
  ((pc
    :reader pc
    :initarg :pc
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2))
   (hull
    :reader hull
    :initarg :hull
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2))
   (plane_coeffs
    :reader plane_coeffs
    :initarg :plane_coeffs
    :type (cl:vector std_msgs-msg:Float32)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:Float32 :initial-element (cl:make-instance 'std_msgs-msg:Float32))))
)

(cl:defclass GetPlane-response (<GetPlane-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPlane-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPlane-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_3d_mapping_msgs-srv:<GetPlane-response> is deprecated: use cob_3d_mapping_msgs-srv:GetPlane-response instead.")))

(cl:ensure-generic-function 'pc-val :lambda-list '(m))
(cl:defmethod pc-val ((m <GetPlane-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-srv:pc-val is deprecated.  Use cob_3d_mapping_msgs-srv:pc instead.")
  (pc m))

(cl:ensure-generic-function 'hull-val :lambda-list '(m))
(cl:defmethod hull-val ((m <GetPlane-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-srv:hull-val is deprecated.  Use cob_3d_mapping_msgs-srv:hull instead.")
  (hull m))

(cl:ensure-generic-function 'plane_coeffs-val :lambda-list '(m))
(cl:defmethod plane_coeffs-val ((m <GetPlane-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-srv:plane_coeffs-val is deprecated.  Use cob_3d_mapping_msgs-srv:plane_coeffs instead.")
  (plane_coeffs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPlane-response>) ostream)
  "Serializes a message object of type '<GetPlane-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pc) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'hull) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'plane_coeffs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'plane_coeffs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPlane-response>) istream)
  "Deserializes a message object of type '<GetPlane-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pc) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'hull) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'plane_coeffs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'plane_coeffs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:Float32))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPlane-response>)))
  "Returns string type for a service object of type '<GetPlane-response>"
  "cob_3d_mapping_msgs/GetPlaneResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPlane-response)))
  "Returns string type for a service object of type 'GetPlane-response"
  "cob_3d_mapping_msgs/GetPlaneResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPlane-response>)))
  "Returns md5sum for a message object of type '<GetPlane-response>"
  "e11c006bc7fabf06881bc7d0de7ba820")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPlane-response)))
  "Returns md5sum for a message object of type 'GetPlane-response"
  "e11c006bc7fabf06881bc7d0de7ba820")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPlane-response>)))
  "Returns full string definition for message of type '<GetPlane-response>"
  (cl:format cl:nil "sensor_msgs/PointCloud2 pc~%sensor_msgs/PointCloud2 hull~%std_msgs/Float32[] plane_coeffs~%~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPlane-response)))
  "Returns full string definition for message of type 'GetPlane-response"
  (cl:format cl:nil "sensor_msgs/PointCloud2 pc~%sensor_msgs/PointCloud2 hull~%std_msgs/Float32[] plane_coeffs~%~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPlane-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pc))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'hull))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'plane_coeffs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPlane-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPlane-response
    (cl:cons ':pc (pc msg))
    (cl:cons ':hull (hull msg))
    (cl:cons ':plane_coeffs (plane_coeffs msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetPlane)))
  'GetPlane-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetPlane)))
  'GetPlane-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPlane)))
  "Returns string type for a service object of type '<GetPlane>"
  "cob_3d_mapping_msgs/GetPlane")