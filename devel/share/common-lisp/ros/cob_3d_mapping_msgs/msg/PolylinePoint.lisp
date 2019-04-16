; Auto-generated. Do not edit!


(cl:in-package cob_3d_mapping_msgs-msg)


;//! \htmlinclude PolylinePoint.msg.html

(cl:defclass <PolylinePoint> (roslisp-msg-protocol:ros-message)
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
   (edge_prob
    :reader edge_prob
    :initarg :edge_prob
    :type cl:float
    :initform 0.0))
)

(cl:defclass PolylinePoint (<PolylinePoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PolylinePoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PolylinePoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_3d_mapping_msgs-msg:<PolylinePoint> is deprecated: use cob_3d_mapping_msgs-msg:PolylinePoint instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <PolylinePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:x-val is deprecated.  Use cob_3d_mapping_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <PolylinePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:y-val is deprecated.  Use cob_3d_mapping_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'edge_prob-val :lambda-list '(m))
(cl:defmethod edge_prob-val ((m <PolylinePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:edge_prob-val is deprecated.  Use cob_3d_mapping_msgs-msg:edge_prob instead.")
  (edge_prob m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PolylinePoint>) ostream)
  "Serializes a message object of type '<PolylinePoint>"
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'edge_prob))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PolylinePoint>) istream)
  "Deserializes a message object of type '<PolylinePoint>"
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
    (cl:setf (cl:slot-value msg 'edge_prob) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PolylinePoint>)))
  "Returns string type for a message object of type '<PolylinePoint>"
  "cob_3d_mapping_msgs/PolylinePoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PolylinePoint)))
  "Returns string type for a message object of type 'PolylinePoint"
  "cob_3d_mapping_msgs/PolylinePoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PolylinePoint>)))
  "Returns md5sum for a message object of type '<PolylinePoint>"
  "850eb4aee753d09ff5d16e6f86ee6353")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PolylinePoint)))
  "Returns md5sum for a message object of type 'PolylinePoint"
  "850eb4aee753d09ff5d16e6f86ee6353")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PolylinePoint>)))
  "Returns full string definition for message of type '<PolylinePoint>"
  (cl:format cl:nil "float32 x~%float32 y~%float32 edge_prob~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PolylinePoint)))
  "Returns full string definition for message of type 'PolylinePoint"
  (cl:format cl:nil "float32 x~%float32 y~%float32 edge_prob~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PolylinePoint>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PolylinePoint>))
  "Converts a ROS message object to a list"
  (cl:list 'PolylinePoint
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':edge_prob (edge_prob msg))
))
