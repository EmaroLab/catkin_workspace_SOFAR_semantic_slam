; Auto-generated. Do not edit!


(cl:in-package cob_3d_mapping_msgs-msg)


;//! \htmlinclude Feature.msg.html

(cl:defclass <Feature> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (ID
    :reader ID
    :initarg :ID
    :type cl:integer
    :initform 0))
)

(cl:defclass Feature (<Feature>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Feature>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Feature)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_3d_mapping_msgs-msg:<Feature> is deprecated: use cob_3d_mapping_msgs-msg:Feature instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Feature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:x-val is deprecated.  Use cob_3d_mapping_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Feature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:y-val is deprecated.  Use cob_3d_mapping_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <Feature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:z-val is deprecated.  Use cob_3d_mapping_msgs-msg:z instead.")
  (z m))

(cl:ensure-generic-function 'ID-val :lambda-list '(m))
(cl:defmethod ID-val ((m <Feature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:ID-val is deprecated.  Use cob_3d_mapping_msgs-msg:ID instead.")
  (ID m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Feature>) ostream)
  "Serializes a message object of type '<Feature>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ID)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Feature>) istream)
  "Deserializes a message object of type '<Feature>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ID)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Feature>)))
  "Returns string type for a message object of type '<Feature>"
  "cob_3d_mapping_msgs/Feature")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Feature)))
  "Returns string type for a message object of type 'Feature"
  "cob_3d_mapping_msgs/Feature")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Feature>)))
  "Returns md5sum for a message object of type '<Feature>"
  "56616874ec0e79db2402b9626b7bcd97")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Feature)))
  "Returns md5sum for a message object of type 'Feature"
  "56616874ec0e79db2402b9626b7bcd97")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Feature>)))
  "Returns full string definition for message of type '<Feature>"
  (cl:format cl:nil "float32 x~%float32 y~%float32 z~%uint32 ID~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Feature)))
  "Returns full string definition for message of type 'Feature"
  (cl:format cl:nil "float32 x~%float32 y~%float32 z~%uint32 ID~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Feature>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Feature>))
  "Converts a ROS message object to a list"
  (cl:list 'Feature
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':ID (ID msg))
))
