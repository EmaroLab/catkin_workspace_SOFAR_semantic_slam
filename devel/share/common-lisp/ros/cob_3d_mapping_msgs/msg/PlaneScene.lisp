; Auto-generated. Do not edit!


(cl:in-package cob_3d_mapping_msgs-msg)


;//! \htmlinclude PlaneScene.msg.html

(cl:defclass <PlaneScene> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (planes
    :reader planes
    :initarg :planes
    :type (cl:vector cob_3d_mapping_msgs-msg:Plane)
   :initform (cl:make-array 0 :element-type 'cob_3d_mapping_msgs-msg:Plane :initial-element (cl:make-instance 'cob_3d_mapping_msgs-msg:Plane))))
)

(cl:defclass PlaneScene (<PlaneScene>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlaneScene>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlaneScene)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_3d_mapping_msgs-msg:<PlaneScene> is deprecated: use cob_3d_mapping_msgs-msg:PlaneScene instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PlaneScene>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:header-val is deprecated.  Use cob_3d_mapping_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'planes-val :lambda-list '(m))
(cl:defmethod planes-val ((m <PlaneScene>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:planes-val is deprecated.  Use cob_3d_mapping_msgs-msg:planes instead.")
  (planes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlaneScene>) ostream)
  "Serializes a message object of type '<PlaneScene>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'planes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'planes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlaneScene>) istream)
  "Deserializes a message object of type '<PlaneScene>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'planes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'planes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'cob_3d_mapping_msgs-msg:Plane))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlaneScene>)))
  "Returns string type for a message object of type '<PlaneScene>"
  "cob_3d_mapping_msgs/PlaneScene")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlaneScene)))
  "Returns string type for a message object of type 'PlaneScene"
  "cob_3d_mapping_msgs/PlaneScene")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlaneScene>)))
  "Returns md5sum for a message object of type '<PlaneScene>"
  "5aa30c5b0316a946cb91f45ed3f1d963")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlaneScene)))
  "Returns md5sum for a message object of type 'PlaneScene"
  "5aa30c5b0316a946cb91f45ed3f1d963")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlaneScene>)))
  "Returns full string definition for message of type '<PlaneScene>"
  (cl:format cl:nil "Header header~%~%#summary of planes~%Plane[] planes~%~%#camera of input data~%#sensor_msgs/CameraInfo camera_info~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: cob_3d_mapping_msgs/Plane~%#polygons describing hull~%#first polygon -> outer hull~%Polygon[] polygons~%~%#pose describing parameters of plane~%geometry_msgs/Pose pose~%~%#number of points~%float32 weight~%~%#averaged color [deprecated to be removed]~%std_msgs/ColorRGBA color~%~%================================================================================~%MSG: cob_3d_mapping_msgs/Polygon~%#points describing polygon~%Point2D[] points~%~%================================================================================~%MSG: cob_3d_mapping_msgs/Point2D~%#coordinate on surface~%float32 x~%float32 y~%~%#texture cooridante~%float32 tex_x~%float32 tex_y~%~%float32 var~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlaneScene)))
  "Returns full string definition for message of type 'PlaneScene"
  (cl:format cl:nil "Header header~%~%#summary of planes~%Plane[] planes~%~%#camera of input data~%#sensor_msgs/CameraInfo camera_info~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: cob_3d_mapping_msgs/Plane~%#polygons describing hull~%#first polygon -> outer hull~%Polygon[] polygons~%~%#pose describing parameters of plane~%geometry_msgs/Pose pose~%~%#number of points~%float32 weight~%~%#averaged color [deprecated to be removed]~%std_msgs/ColorRGBA color~%~%================================================================================~%MSG: cob_3d_mapping_msgs/Polygon~%#points describing polygon~%Point2D[] points~%~%================================================================================~%MSG: cob_3d_mapping_msgs/Point2D~%#coordinate on surface~%float32 x~%float32 y~%~%#texture cooridante~%float32 tex_x~%float32 tex_y~%~%float32 var~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlaneScene>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'planes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlaneScene>))
  "Converts a ROS message object to a list"
  (cl:list 'PlaneScene
    (cl:cons ':header (header msg))
    (cl:cons ':planes (planes msg))
))
