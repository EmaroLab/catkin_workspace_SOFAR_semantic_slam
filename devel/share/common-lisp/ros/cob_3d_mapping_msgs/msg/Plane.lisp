; Auto-generated. Do not edit!


(cl:in-package cob_3d_mapping_msgs-msg)


;//! \htmlinclude Plane.msg.html

(cl:defclass <Plane> (roslisp-msg-protocol:ros-message)
  ((polygons
    :reader polygons
    :initarg :polygons
    :type (cl:vector cob_3d_mapping_msgs-msg:Polygon)
   :initform (cl:make-array 0 :element-type 'cob_3d_mapping_msgs-msg:Polygon :initial-element (cl:make-instance 'cob_3d_mapping_msgs-msg:Polygon)))
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (weight
    :reader weight
    :initarg :weight
    :type cl:float
    :initform 0.0)
   (color
    :reader color
    :initarg :color
    :type std_msgs-msg:ColorRGBA
    :initform (cl:make-instance 'std_msgs-msg:ColorRGBA)))
)

(cl:defclass Plane (<Plane>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Plane>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Plane)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_3d_mapping_msgs-msg:<Plane> is deprecated: use cob_3d_mapping_msgs-msg:Plane instead.")))

(cl:ensure-generic-function 'polygons-val :lambda-list '(m))
(cl:defmethod polygons-val ((m <Plane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:polygons-val is deprecated.  Use cob_3d_mapping_msgs-msg:polygons instead.")
  (polygons m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <Plane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:pose-val is deprecated.  Use cob_3d_mapping_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'weight-val :lambda-list '(m))
(cl:defmethod weight-val ((m <Plane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:weight-val is deprecated.  Use cob_3d_mapping_msgs-msg:weight instead.")
  (weight m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <Plane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:color-val is deprecated.  Use cob_3d_mapping_msgs-msg:color instead.")
  (color m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Plane>) ostream)
  "Serializes a message object of type '<Plane>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'polygons))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'polygons))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'weight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'color) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Plane>) istream)
  "Deserializes a message object of type '<Plane>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'polygons) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'polygons)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'cob_3d_mapping_msgs-msg:Polygon))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'weight) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'color) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Plane>)))
  "Returns string type for a message object of type '<Plane>"
  "cob_3d_mapping_msgs/Plane")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Plane)))
  "Returns string type for a message object of type 'Plane"
  "cob_3d_mapping_msgs/Plane")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Plane>)))
  "Returns md5sum for a message object of type '<Plane>"
  "dfaae30aed6b6175cbcc972b30123ff6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Plane)))
  "Returns md5sum for a message object of type 'Plane"
  "dfaae30aed6b6175cbcc972b30123ff6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Plane>)))
  "Returns full string definition for message of type '<Plane>"
  (cl:format cl:nil "#polygons describing hull~%#first polygon -> outer hull~%Polygon[] polygons~%~%#pose describing parameters of plane~%geometry_msgs/Pose pose~%~%#number of points~%float32 weight~%~%#averaged color [deprecated to be removed]~%std_msgs/ColorRGBA color~%~%================================================================================~%MSG: cob_3d_mapping_msgs/Polygon~%#points describing polygon~%Point2D[] points~%~%================================================================================~%MSG: cob_3d_mapping_msgs/Point2D~%#coordinate on surface~%float32 x~%float32 y~%~%#texture cooridante~%float32 tex_x~%float32 tex_y~%~%float32 var~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Plane)))
  "Returns full string definition for message of type 'Plane"
  (cl:format cl:nil "#polygons describing hull~%#first polygon -> outer hull~%Polygon[] polygons~%~%#pose describing parameters of plane~%geometry_msgs/Pose pose~%~%#number of points~%float32 weight~%~%#averaged color [deprecated to be removed]~%std_msgs/ColorRGBA color~%~%================================================================================~%MSG: cob_3d_mapping_msgs/Polygon~%#points describing polygon~%Point2D[] points~%~%================================================================================~%MSG: cob_3d_mapping_msgs/Point2D~%#coordinate on surface~%float32 x~%float32 y~%~%#texture cooridante~%float32 tex_x~%float32 tex_y~%~%float32 var~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Plane>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'polygons) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'color))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Plane>))
  "Converts a ROS message object to a list"
  (cl:list 'Plane
    (cl:cons ':polygons (polygons msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':weight (weight msg))
    (cl:cons ':color (color msg))
))
