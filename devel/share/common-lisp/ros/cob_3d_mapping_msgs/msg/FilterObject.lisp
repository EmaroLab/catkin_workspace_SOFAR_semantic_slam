; Auto-generated. Do not edit!


(cl:in-package cob_3d_mapping_msgs-msg)


;//! \htmlinclude FilterObject.msg.html

(cl:defclass <FilterObject> (roslisp-msg-protocol:ros-message)
  ((height
    :reader height
    :initarg :height
    :type cl:float
    :initform 0.0)
   (width
    :reader width
    :initarg :width
    :type cl:float
    :initform 0.0)
   (curv_h
    :reader curv_h
    :initarg :curv_h
    :type cl:float
    :initform 0.0)
   (curv_w
    :reader curv_w
    :initarg :curv_w
    :type cl:float
    :initform 0.0))
)

(cl:defclass FilterObject (<FilterObject>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FilterObject>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FilterObject)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_3d_mapping_msgs-msg:<FilterObject> is deprecated: use cob_3d_mapping_msgs-msg:FilterObject instead.")))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <FilterObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:height-val is deprecated.  Use cob_3d_mapping_msgs-msg:height instead.")
  (height m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <FilterObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:width-val is deprecated.  Use cob_3d_mapping_msgs-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'curv_h-val :lambda-list '(m))
(cl:defmethod curv_h-val ((m <FilterObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:curv_h-val is deprecated.  Use cob_3d_mapping_msgs-msg:curv_h instead.")
  (curv_h m))

(cl:ensure-generic-function 'curv_w-val :lambda-list '(m))
(cl:defmethod curv_w-val ((m <FilterObject>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:curv_w-val is deprecated.  Use cob_3d_mapping_msgs-msg:curv_w instead.")
  (curv_w m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FilterObject>) ostream)
  "Serializes a message object of type '<FilterObject>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'height))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'curv_h))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'curv_w))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FilterObject>) istream)
  "Deserializes a message object of type '<FilterObject>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'curv_h) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'curv_w) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FilterObject>)))
  "Returns string type for a message object of type '<FilterObject>"
  "cob_3d_mapping_msgs/FilterObject")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FilterObject)))
  "Returns string type for a message object of type 'FilterObject"
  "cob_3d_mapping_msgs/FilterObject")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FilterObject>)))
  "Returns md5sum for a message object of type '<FilterObject>"
  "3ce8bd944e4374d48880ed66855bf0be")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FilterObject)))
  "Returns md5sum for a message object of type 'FilterObject"
  "3ce8bd944e4374d48880ed66855bf0be")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FilterObject>)))
  "Returns full string definition for message of type '<FilterObject>"
  (cl:format cl:nil "float32 height	#longer side~%float32 width	#smaller side~%float32 curv_h	#curvature to height~%float32 curv_w	#curvature to width~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FilterObject)))
  "Returns full string definition for message of type 'FilterObject"
  (cl:format cl:nil "float32 height	#longer side~%float32 width	#smaller side~%float32 curv_h	#curvature to height~%float32 curv_w	#curvature to width~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FilterObject>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FilterObject>))
  "Converts a ROS message object to a list"
  (cl:list 'FilterObject
    (cl:cons ':height (height msg))
    (cl:cons ':width (width msg))
    (cl:cons ':curv_h (curv_h msg))
    (cl:cons ':curv_w (curv_w msg))
))
