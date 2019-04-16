; Auto-generated. Do not edit!


(cl:in-package cob_3d_mapping_msgs-msg)


;//! \htmlinclude Point2D.msg.html

(cl:defclass <Point2D> (roslisp-msg-protocol:ros-message)
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
   (tex_x
    :reader tex_x
    :initarg :tex_x
    :type cl:float
    :initform 0.0)
   (tex_y
    :reader tex_y
    :initarg :tex_y
    :type cl:float
    :initform 0.0)
   (var
    :reader var
    :initarg :var
    :type cl:float
    :initform 0.0))
)

(cl:defclass Point2D (<Point2D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Point2D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Point2D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_3d_mapping_msgs-msg:<Point2D> is deprecated: use cob_3d_mapping_msgs-msg:Point2D instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Point2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:x-val is deprecated.  Use cob_3d_mapping_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Point2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:y-val is deprecated.  Use cob_3d_mapping_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'tex_x-val :lambda-list '(m))
(cl:defmethod tex_x-val ((m <Point2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:tex_x-val is deprecated.  Use cob_3d_mapping_msgs-msg:tex_x instead.")
  (tex_x m))

(cl:ensure-generic-function 'tex_y-val :lambda-list '(m))
(cl:defmethod tex_y-val ((m <Point2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:tex_y-val is deprecated.  Use cob_3d_mapping_msgs-msg:tex_y instead.")
  (tex_y m))

(cl:ensure-generic-function 'var-val :lambda-list '(m))
(cl:defmethod var-val ((m <Point2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:var-val is deprecated.  Use cob_3d_mapping_msgs-msg:var instead.")
  (var m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Point2D>) ostream)
  "Serializes a message object of type '<Point2D>"
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tex_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tex_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'var))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Point2D>) istream)
  "Deserializes a message object of type '<Point2D>"
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
    (cl:setf (cl:slot-value msg 'tex_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tex_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'var) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Point2D>)))
  "Returns string type for a message object of type '<Point2D>"
  "cob_3d_mapping_msgs/Point2D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Point2D)))
  "Returns string type for a message object of type 'Point2D"
  "cob_3d_mapping_msgs/Point2D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Point2D>)))
  "Returns md5sum for a message object of type '<Point2D>"
  "fc725bda50adf2bf28e55ed21147f45e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Point2D)))
  "Returns md5sum for a message object of type 'Point2D"
  "fc725bda50adf2bf28e55ed21147f45e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Point2D>)))
  "Returns full string definition for message of type '<Point2D>"
  (cl:format cl:nil "#coordinate on surface~%float32 x~%float32 y~%~%#texture cooridante~%float32 tex_x~%float32 tex_y~%~%float32 var~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Point2D)))
  "Returns full string definition for message of type 'Point2D"
  (cl:format cl:nil "#coordinate on surface~%float32 x~%float32 y~%~%#texture cooridante~%float32 tex_x~%float32 tex_y~%~%float32 var~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Point2D>))
  (cl:+ 0
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Point2D>))
  "Converts a ROS message object to a list"
  (cl:list 'Point2D
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':tex_x (tex_x msg))
    (cl:cons ':tex_y (tex_y msg))
    (cl:cons ':var (var msg))
))
