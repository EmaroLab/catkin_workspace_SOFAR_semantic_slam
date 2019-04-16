; Auto-generated. Do not edit!


(cl:in-package cob_3d_mapping_msgs-srv)


;//! \htmlinclude MoveToTable-request.msg.html

(cl:defclass <MoveToTable-request> (roslisp-msg-protocol:ros-message)
  ((targetTable
    :reader targetTable
    :initarg :targetTable
    :type cob_3d_mapping_msgs-msg:Shape
    :initform (cl:make-instance 'cob_3d_mapping_msgs-msg:Shape)))
)

(cl:defclass MoveToTable-request (<MoveToTable-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveToTable-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveToTable-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_3d_mapping_msgs-srv:<MoveToTable-request> is deprecated: use cob_3d_mapping_msgs-srv:MoveToTable-request instead.")))

(cl:ensure-generic-function 'targetTable-val :lambda-list '(m))
(cl:defmethod targetTable-val ((m <MoveToTable-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-srv:targetTable-val is deprecated.  Use cob_3d_mapping_msgs-srv:targetTable instead.")
  (targetTable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveToTable-request>) ostream)
  "Serializes a message object of type '<MoveToTable-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'targetTable) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveToTable-request>) istream)
  "Deserializes a message object of type '<MoveToTable-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'targetTable) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveToTable-request>)))
  "Returns string type for a service object of type '<MoveToTable-request>"
  "cob_3d_mapping_msgs/MoveToTableRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveToTable-request)))
  "Returns string type for a service object of type 'MoveToTable-request"
  "cob_3d_mapping_msgs/MoveToTableRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveToTable-request>)))
  "Returns md5sum for a message object of type '<MoveToTable-request>"
  "5d1ffd0679813cd64e0bfd504ebff126")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveToTable-request)))
  "Returns md5sum for a message object of type 'MoveToTable-request"
  "5d1ffd0679813cd64e0bfd504ebff126")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveToTable-request>)))
  "Returns full string definition for message of type '<MoveToTable-request>"
  (cl:format cl:nil "cob_3d_mapping_msgs/Shape targetTable~%~%~%================================================================================~%MSG: cob_3d_mapping_msgs/Shape~%Header header~%~%uint8 POLYGON=0~%uint8 LINE=1~%uint8 CURVED=2~%uint8 MESH=3~%uint8 OTHER=4~%uint8 CYLINDER=5~%# potential extensions: SPHERE, CYLINDER, BOX~%~%byte type~%int32 id~%float32 weight~%~%geometry_msgs/Pose pose~%~%# define shape parameters~%# for plane~%# normal vector = params[0],params[1],params[2]~%#	d = params[3]~%# for line~%# direction vector = params[0],params[1],params[2]~%# for curved~%# 3 for plane, 6 for polynom 2nd degree, ...~%#~%#for cylinder~%# symmetry axis = params[0],params[1],params[2]~%# radius	= params[3]~%# min and max height (rel to origin) = params[4], params[5]~%#~%float64[] params~%~%sensor_msgs/PointCloud2[] points~%~%#### define mesh ####~%# each three entries form a triangle; indices of points are stored~%int32[] vertices~%~%#geometry_msgs/Point32 centroid~%std_msgs/ColorRGBA color~%bool[] holes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveToTable-request)))
  "Returns full string definition for message of type 'MoveToTable-request"
  (cl:format cl:nil "cob_3d_mapping_msgs/Shape targetTable~%~%~%================================================================================~%MSG: cob_3d_mapping_msgs/Shape~%Header header~%~%uint8 POLYGON=0~%uint8 LINE=1~%uint8 CURVED=2~%uint8 MESH=3~%uint8 OTHER=4~%uint8 CYLINDER=5~%# potential extensions: SPHERE, CYLINDER, BOX~%~%byte type~%int32 id~%float32 weight~%~%geometry_msgs/Pose pose~%~%# define shape parameters~%# for plane~%# normal vector = params[0],params[1],params[2]~%#	d = params[3]~%# for line~%# direction vector = params[0],params[1],params[2]~%# for curved~%# 3 for plane, 6 for polynom 2nd degree, ...~%#~%#for cylinder~%# symmetry axis = params[0],params[1],params[2]~%# radius	= params[3]~%# min and max height (rel to origin) = params[4], params[5]~%#~%float64[] params~%~%sensor_msgs/PointCloud2[] points~%~%#### define mesh ####~%# each three entries form a triangle; indices of points are stored~%int32[] vertices~%~%#geometry_msgs/Point32 centroid~%std_msgs/ColorRGBA color~%bool[] holes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveToTable-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'targetTable))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveToTable-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveToTable-request
    (cl:cons ':targetTable (targetTable msg))
))
;//! \htmlinclude MoveToTable-response.msg.html

(cl:defclass <MoveToTable-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass MoveToTable-response (<MoveToTable-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveToTable-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveToTable-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_3d_mapping_msgs-srv:<MoveToTable-response> is deprecated: use cob_3d_mapping_msgs-srv:MoveToTable-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveToTable-response>) ostream)
  "Serializes a message object of type '<MoveToTable-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveToTable-response>) istream)
  "Deserializes a message object of type '<MoveToTable-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveToTable-response>)))
  "Returns string type for a service object of type '<MoveToTable-response>"
  "cob_3d_mapping_msgs/MoveToTableResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveToTable-response)))
  "Returns string type for a service object of type 'MoveToTable-response"
  "cob_3d_mapping_msgs/MoveToTableResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveToTable-response>)))
  "Returns md5sum for a message object of type '<MoveToTable-response>"
  "5d1ffd0679813cd64e0bfd504ebff126")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveToTable-response)))
  "Returns md5sum for a message object of type 'MoveToTable-response"
  "5d1ffd0679813cd64e0bfd504ebff126")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveToTable-response>)))
  "Returns full string definition for message of type '<MoveToTable-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveToTable-response)))
  "Returns full string definition for message of type 'MoveToTable-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveToTable-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveToTable-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveToTable-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MoveToTable)))
  'MoveToTable-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MoveToTable)))
  'MoveToTable-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveToTable)))
  "Returns string type for a service object of type '<MoveToTable>"
  "cob_3d_mapping_msgs/MoveToTable")