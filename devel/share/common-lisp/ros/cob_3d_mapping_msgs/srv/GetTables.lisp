; Auto-generated. Do not edit!


(cl:in-package cob_3d_mapping_msgs-srv)


;//! \htmlinclude GetTables-request.msg.html

(cl:defclass <GetTables-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetTables-request (<GetTables-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTables-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTables-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_3d_mapping_msgs-srv:<GetTables-request> is deprecated: use cob_3d_mapping_msgs-srv:GetTables-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTables-request>) ostream)
  "Serializes a message object of type '<GetTables-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTables-request>) istream)
  "Deserializes a message object of type '<GetTables-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTables-request>)))
  "Returns string type for a service object of type '<GetTables-request>"
  "cob_3d_mapping_msgs/GetTablesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTables-request)))
  "Returns string type for a service object of type 'GetTables-request"
  "cob_3d_mapping_msgs/GetTablesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTables-request>)))
  "Returns md5sum for a message object of type '<GetTables-request>"
  "66dab6432264ad910ef67f2a1c240146")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTables-request)))
  "Returns md5sum for a message object of type 'GetTables-request"
  "66dab6432264ad910ef67f2a1c240146")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTables-request>)))
  "Returns full string definition for message of type '<GetTables-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTables-request)))
  "Returns full string definition for message of type 'GetTables-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTables-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTables-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTables-request
))
;//! \htmlinclude GetTables-response.msg.html

(cl:defclass <GetTables-response> (roslisp-msg-protocol:ros-message)
  ((tables
    :reader tables
    :initarg :tables
    :type cob_3d_mapping_msgs-msg:ShapeArray
    :initform (cl:make-instance 'cob_3d_mapping_msgs-msg:ShapeArray)))
)

(cl:defclass GetTables-response (<GetTables-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTables-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTables-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_3d_mapping_msgs-srv:<GetTables-response> is deprecated: use cob_3d_mapping_msgs-srv:GetTables-response instead.")))

(cl:ensure-generic-function 'tables-val :lambda-list '(m))
(cl:defmethod tables-val ((m <GetTables-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-srv:tables-val is deprecated.  Use cob_3d_mapping_msgs-srv:tables instead.")
  (tables m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTables-response>) ostream)
  "Serializes a message object of type '<GetTables-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tables) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTables-response>) istream)
  "Deserializes a message object of type '<GetTables-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tables) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTables-response>)))
  "Returns string type for a service object of type '<GetTables-response>"
  "cob_3d_mapping_msgs/GetTablesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTables-response)))
  "Returns string type for a service object of type 'GetTables-response"
  "cob_3d_mapping_msgs/GetTablesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTables-response>)))
  "Returns md5sum for a message object of type '<GetTables-response>"
  "66dab6432264ad910ef67f2a1c240146")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTables-response)))
  "Returns md5sum for a message object of type 'GetTables-response"
  "66dab6432264ad910ef67f2a1c240146")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTables-response>)))
  "Returns full string definition for message of type '<GetTables-response>"
  (cl:format cl:nil "cob_3d_mapping_msgs/ShapeArray tables~%~%~%================================================================================~%MSG: cob_3d_mapping_msgs/ShapeArray~%# An array of poses with a header for global reference.~%~%Header header~%~%cob_3d_mapping_msgs/Shape[] shapes~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: cob_3d_mapping_msgs/Shape~%Header header~%~%uint8 POLYGON=0~%uint8 LINE=1~%uint8 CURVED=2~%uint8 MESH=3~%uint8 OTHER=4~%uint8 CYLINDER=5~%# potential extensions: SPHERE, CYLINDER, BOX~%~%byte type~%int32 id~%float32 weight~%~%geometry_msgs/Pose pose~%~%# define shape parameters~%# for plane~%# normal vector = params[0],params[1],params[2]~%#	d = params[3]~%# for line~%# direction vector = params[0],params[1],params[2]~%# for curved~%# 3 for plane, 6 for polynom 2nd degree, ...~%#~%#for cylinder~%# symmetry axis = params[0],params[1],params[2]~%# radius	= params[3]~%# min and max height (rel to origin) = params[4], params[5]~%#~%float64[] params~%~%sensor_msgs/PointCloud2[] points~%~%#### define mesh ####~%# each three entries form a triangle; indices of points are stored~%int32[] vertices~%~%#geometry_msgs/Point32 centroid~%std_msgs/ColorRGBA color~%bool[] holes~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTables-response)))
  "Returns full string definition for message of type 'GetTables-response"
  (cl:format cl:nil "cob_3d_mapping_msgs/ShapeArray tables~%~%~%================================================================================~%MSG: cob_3d_mapping_msgs/ShapeArray~%# An array of poses with a header for global reference.~%~%Header header~%~%cob_3d_mapping_msgs/Shape[] shapes~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: cob_3d_mapping_msgs/Shape~%Header header~%~%uint8 POLYGON=0~%uint8 LINE=1~%uint8 CURVED=2~%uint8 MESH=3~%uint8 OTHER=4~%uint8 CYLINDER=5~%# potential extensions: SPHERE, CYLINDER, BOX~%~%byte type~%int32 id~%float32 weight~%~%geometry_msgs/Pose pose~%~%# define shape parameters~%# for plane~%# normal vector = params[0],params[1],params[2]~%#	d = params[3]~%# for line~%# direction vector = params[0],params[1],params[2]~%# for curved~%# 3 for plane, 6 for polynom 2nd degree, ...~%#~%#for cylinder~%# symmetry axis = params[0],params[1],params[2]~%# radius	= params[3]~%# min and max height (rel to origin) = params[4], params[5]~%#~%float64[] params~%~%sensor_msgs/PointCloud2[] points~%~%#### define mesh ####~%# each three entries form a triangle; indices of points are stored~%int32[] vertices~%~%#geometry_msgs/Point32 centroid~%std_msgs/ColorRGBA color~%bool[] holes~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTables-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tables))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTables-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTables-response
    (cl:cons ':tables (tables msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetTables)))
  'GetTables-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetTables)))
  'GetTables-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTables)))
  "Returns string type for a service object of type '<GetTables>"
  "cob_3d_mapping_msgs/GetTables")