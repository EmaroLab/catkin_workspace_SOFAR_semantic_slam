; Auto-generated. Do not edit!


(cl:in-package cob_3d_mapping_msgs-srv)


;//! \htmlinclude ModifyMap-request.msg.html

(cl:defclass <ModifyMap-request> (roslisp-msg-protocol:ros-message)
  ((action
    :reader action
    :initarg :action
    :type cl:integer
    :initform 0)
   (shapes
    :reader shapes
    :initarg :shapes
    :type cob_3d_mapping_msgs-msg:ShapeArray
    :initform (cl:make-instance 'cob_3d_mapping_msgs-msg:ShapeArray)))
)

(cl:defclass ModifyMap-request (<ModifyMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ModifyMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ModifyMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_3d_mapping_msgs-srv:<ModifyMap-request> is deprecated: use cob_3d_mapping_msgs-srv:ModifyMap-request instead.")))

(cl:ensure-generic-function 'action-val :lambda-list '(m))
(cl:defmethod action-val ((m <ModifyMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-srv:action-val is deprecated.  Use cob_3d_mapping_msgs-srv:action instead.")
  (action m))

(cl:ensure-generic-function 'shapes-val :lambda-list '(m))
(cl:defmethod shapes-val ((m <ModifyMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-srv:shapes-val is deprecated.  Use cob_3d_mapping_msgs-srv:shapes instead.")
  (shapes m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ModifyMap-request>)))
    "Constants for message type '<ModifyMap-request>"
  '((:ADD . 0)
    (:MODIFY . 1)
    (:DELETE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ModifyMap-request)))
    "Constants for message type 'ModifyMap-request"
  '((:ADD . 0)
    (:MODIFY . 1)
    (:DELETE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ModifyMap-request>) ostream)
  "Serializes a message object of type '<ModifyMap-request>"
  (cl:let* ((signed (cl:slot-value msg 'action)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'shapes) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ModifyMap-request>) istream)
  "Deserializes a message object of type '<ModifyMap-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'action) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'shapes) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ModifyMap-request>)))
  "Returns string type for a service object of type '<ModifyMap-request>"
  "cob_3d_mapping_msgs/ModifyMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModifyMap-request)))
  "Returns string type for a service object of type 'ModifyMap-request"
  "cob_3d_mapping_msgs/ModifyMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ModifyMap-request>)))
  "Returns md5sum for a message object of type '<ModifyMap-request>"
  "ea968d0c07a800a6b17527a191a32e88")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ModifyMap-request)))
  "Returns md5sum for a message object of type 'ModifyMap-request"
  "ea968d0c07a800a6b17527a191a32e88")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ModifyMap-request>)))
  "Returns full string definition for message of type '<ModifyMap-request>"
  (cl:format cl:nil "uint8 ADD=0~%uint8 MODIFY=1~%uint8 DELETE=2~%~%int32 action~%cob_3d_mapping_msgs/ShapeArray shapes~%~%================================================================================~%MSG: cob_3d_mapping_msgs/ShapeArray~%# An array of poses with a header for global reference.~%~%Header header~%~%cob_3d_mapping_msgs/Shape[] shapes~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: cob_3d_mapping_msgs/Shape~%Header header~%~%uint8 POLYGON=0~%uint8 LINE=1~%uint8 CURVED=2~%uint8 MESH=3~%uint8 OTHER=4~%uint8 CYLINDER=5~%# potential extensions: SPHERE, CYLINDER, BOX~%~%byte type~%int32 id~%float32 weight~%~%geometry_msgs/Pose pose~%~%# define shape parameters~%# for plane~%# normal vector = params[0],params[1],params[2]~%#	d = params[3]~%# for line~%# direction vector = params[0],params[1],params[2]~%# for curved~%# 3 for plane, 6 for polynom 2nd degree, ...~%#~%#for cylinder~%# symmetry axis = params[0],params[1],params[2]~%# radius	= params[3]~%# min and max height (rel to origin) = params[4], params[5]~%#~%float64[] params~%~%sensor_msgs/PointCloud2[] points~%~%#### define mesh ####~%# each three entries form a triangle; indices of points are stored~%int32[] vertices~%~%#geometry_msgs/Point32 centroid~%std_msgs/ColorRGBA color~%bool[] holes~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ModifyMap-request)))
  "Returns full string definition for message of type 'ModifyMap-request"
  (cl:format cl:nil "uint8 ADD=0~%uint8 MODIFY=1~%uint8 DELETE=2~%~%int32 action~%cob_3d_mapping_msgs/ShapeArray shapes~%~%================================================================================~%MSG: cob_3d_mapping_msgs/ShapeArray~%# An array of poses with a header for global reference.~%~%Header header~%~%cob_3d_mapping_msgs/Shape[] shapes~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: cob_3d_mapping_msgs/Shape~%Header header~%~%uint8 POLYGON=0~%uint8 LINE=1~%uint8 CURVED=2~%uint8 MESH=3~%uint8 OTHER=4~%uint8 CYLINDER=5~%# potential extensions: SPHERE, CYLINDER, BOX~%~%byte type~%int32 id~%float32 weight~%~%geometry_msgs/Pose pose~%~%# define shape parameters~%# for plane~%# normal vector = params[0],params[1],params[2]~%#	d = params[3]~%# for line~%# direction vector = params[0],params[1],params[2]~%# for curved~%# 3 for plane, 6 for polynom 2nd degree, ...~%#~%#for cylinder~%# symmetry axis = params[0],params[1],params[2]~%# radius	= params[3]~%# min and max height (rel to origin) = params[4], params[5]~%#~%float64[] params~%~%sensor_msgs/PointCloud2[] points~%~%#### define mesh ####~%# each three entries form a triangle; indices of points are stored~%int32[] vertices~%~%#geometry_msgs/Point32 centroid~%std_msgs/ColorRGBA color~%bool[] holes~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ModifyMap-request>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'shapes))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ModifyMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ModifyMap-request
    (cl:cons ':action (action msg))
    (cl:cons ':shapes (shapes msg))
))
;//! \htmlinclude ModifyMap-response.msg.html

(cl:defclass <ModifyMap-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ModifyMap-response (<ModifyMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ModifyMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ModifyMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_3d_mapping_msgs-srv:<ModifyMap-response> is deprecated: use cob_3d_mapping_msgs-srv:ModifyMap-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ModifyMap-response>) ostream)
  "Serializes a message object of type '<ModifyMap-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ModifyMap-response>) istream)
  "Deserializes a message object of type '<ModifyMap-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ModifyMap-response>)))
  "Returns string type for a service object of type '<ModifyMap-response>"
  "cob_3d_mapping_msgs/ModifyMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModifyMap-response)))
  "Returns string type for a service object of type 'ModifyMap-response"
  "cob_3d_mapping_msgs/ModifyMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ModifyMap-response>)))
  "Returns md5sum for a message object of type '<ModifyMap-response>"
  "ea968d0c07a800a6b17527a191a32e88")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ModifyMap-response)))
  "Returns md5sum for a message object of type 'ModifyMap-response"
  "ea968d0c07a800a6b17527a191a32e88")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ModifyMap-response>)))
  "Returns full string definition for message of type '<ModifyMap-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ModifyMap-response)))
  "Returns full string definition for message of type 'ModifyMap-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ModifyMap-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ModifyMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ModifyMap-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ModifyMap)))
  'ModifyMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ModifyMap)))
  'ModifyMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModifyMap)))
  "Returns string type for a service object of type '<ModifyMap>"
  "cob_3d_mapping_msgs/ModifyMap")