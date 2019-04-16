; Auto-generated. Do not edit!


(cl:in-package cob_3d_mapping_msgs-msg)


;//! \htmlinclude Shape.msg.html

(cl:defclass <Shape> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0)
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (weight
    :reader weight
    :initarg :weight
    :type cl:float
    :initform 0.0)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (params
    :reader params
    :initarg :params
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (points
    :reader points
    :initarg :points
    :type (cl:vector sensor_msgs-msg:PointCloud2)
   :initform (cl:make-array 0 :element-type 'sensor_msgs-msg:PointCloud2 :initial-element (cl:make-instance 'sensor_msgs-msg:PointCloud2)))
   (vertices
    :reader vertices
    :initarg :vertices
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (color
    :reader color
    :initarg :color
    :type std_msgs-msg:ColorRGBA
    :initform (cl:make-instance 'std_msgs-msg:ColorRGBA))
   (holes
    :reader holes
    :initarg :holes
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass Shape (<Shape>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Shape>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Shape)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_3d_mapping_msgs-msg:<Shape> is deprecated: use cob_3d_mapping_msgs-msg:Shape instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Shape>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:header-val is deprecated.  Use cob_3d_mapping_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Shape>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:type-val is deprecated.  Use cob_3d_mapping_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Shape>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:id-val is deprecated.  Use cob_3d_mapping_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'weight-val :lambda-list '(m))
(cl:defmethod weight-val ((m <Shape>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:weight-val is deprecated.  Use cob_3d_mapping_msgs-msg:weight instead.")
  (weight m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <Shape>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:pose-val is deprecated.  Use cob_3d_mapping_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'params-val :lambda-list '(m))
(cl:defmethod params-val ((m <Shape>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:params-val is deprecated.  Use cob_3d_mapping_msgs-msg:params instead.")
  (params m))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <Shape>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:points-val is deprecated.  Use cob_3d_mapping_msgs-msg:points instead.")
  (points m))

(cl:ensure-generic-function 'vertices-val :lambda-list '(m))
(cl:defmethod vertices-val ((m <Shape>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:vertices-val is deprecated.  Use cob_3d_mapping_msgs-msg:vertices instead.")
  (vertices m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <Shape>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:color-val is deprecated.  Use cob_3d_mapping_msgs-msg:color instead.")
  (color m))

(cl:ensure-generic-function 'holes-val :lambda-list '(m))
(cl:defmethod holes-val ((m <Shape>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:holes-val is deprecated.  Use cob_3d_mapping_msgs-msg:holes instead.")
  (holes m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Shape>)))
    "Constants for message type '<Shape>"
  '((:POLYGON . 0)
    (:LINE . 1)
    (:CURVED . 2)
    (:MESH . 3)
    (:OTHER . 4)
    (:CYLINDER . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Shape)))
    "Constants for message type 'Shape"
  '((:POLYGON . 0)
    (:LINE . 1)
    (:CURVED . 2)
    (:MESH . 3)
    (:OTHER . 4)
    (:CYLINDER . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Shape>) ostream)
  "Serializes a message object of type '<Shape>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'weight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'params))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'params))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'vertices))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'vertices))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'color) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'holes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'holes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Shape>) istream)
  "Deserializes a message object of type '<Shape>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'weight) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'params) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'params)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_msgs-msg:PointCloud2))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'vertices) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'vertices)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'color) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'holes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'holes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Shape>)))
  "Returns string type for a message object of type '<Shape>"
  "cob_3d_mapping_msgs/Shape")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Shape)))
  "Returns string type for a message object of type 'Shape"
  "cob_3d_mapping_msgs/Shape")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Shape>)))
  "Returns md5sum for a message object of type '<Shape>"
  "d5fc6a3556290a571009cfc613a557d0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Shape)))
  "Returns md5sum for a message object of type 'Shape"
  "d5fc6a3556290a571009cfc613a557d0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Shape>)))
  "Returns full string definition for message of type '<Shape>"
  (cl:format cl:nil "Header header~%~%uint8 POLYGON=0~%uint8 LINE=1~%uint8 CURVED=2~%uint8 MESH=3~%uint8 OTHER=4~%uint8 CYLINDER=5~%# potential extensions: SPHERE, CYLINDER, BOX~%~%byte type~%int32 id~%float32 weight~%~%geometry_msgs/Pose pose~%~%# define shape parameters~%# for plane~%# normal vector = params[0],params[1],params[2]~%#	d = params[3]~%# for line~%# direction vector = params[0],params[1],params[2]~%# for curved~%# 3 for plane, 6 for polynom 2nd degree, ...~%#~%#for cylinder~%# symmetry axis = params[0],params[1],params[2]~%# radius	= params[3]~%# min and max height (rel to origin) = params[4], params[5]~%#~%float64[] params~%~%sensor_msgs/PointCloud2[] points~%~%#### define mesh ####~%# each three entries form a triangle; indices of points are stored~%int32[] vertices~%~%#geometry_msgs/Point32 centroid~%std_msgs/ColorRGBA color~%bool[] holes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Shape)))
  "Returns full string definition for message of type 'Shape"
  (cl:format cl:nil "Header header~%~%uint8 POLYGON=0~%uint8 LINE=1~%uint8 CURVED=2~%uint8 MESH=3~%uint8 OTHER=4~%uint8 CYLINDER=5~%# potential extensions: SPHERE, CYLINDER, BOX~%~%byte type~%int32 id~%float32 weight~%~%geometry_msgs/Pose pose~%~%# define shape parameters~%# for plane~%# normal vector = params[0],params[1],params[2]~%#	d = params[3]~%# for line~%# direction vector = params[0],params[1],params[2]~%# for curved~%# 3 for plane, 6 for polynom 2nd degree, ...~%#~%#for cylinder~%# symmetry axis = params[0],params[1],params[2]~%# radius	= params[3]~%# min and max height (rel to origin) = params[4], params[5]~%#~%float64[] params~%~%sensor_msgs/PointCloud2[] points~%~%#### define mesh ####~%# each three entries form a triangle; indices of points are stored~%int32[] vertices~%~%#geometry_msgs/Point32 centroid~%std_msgs/ColorRGBA color~%bool[] holes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Shape>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'params) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'vertices) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'color))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'holes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Shape>))
  "Converts a ROS message object to a list"
  (cl:list 'Shape
    (cl:cons ':header (header msg))
    (cl:cons ':type (type msg))
    (cl:cons ':id (id msg))
    (cl:cons ':weight (weight msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':params (params msg))
    (cl:cons ':points (points msg))
    (cl:cons ':vertices (vertices msg))
    (cl:cons ':color (color msg))
    (cl:cons ':holes (holes msg))
))
