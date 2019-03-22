; Auto-generated. Do not edit!


(cl:in-package semantical_slam-msg)


;//! \htmlinclude SemanticalPoint.msg.html

(cl:defclass <SemanticalPoint> (roslisp-msg-protocol:ros-message)
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
   (place_name
    :reader place_name
    :initarg :place_name
    :type cl:string
    :initform ""))
)

(cl:defclass SemanticalPoint (<SemanticalPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SemanticalPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SemanticalPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name semantical_slam-msg:<SemanticalPoint> is deprecated: use semantical_slam-msg:SemanticalPoint instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <SemanticalPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader semantical_slam-msg:x-val is deprecated.  Use semantical_slam-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <SemanticalPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader semantical_slam-msg:y-val is deprecated.  Use semantical_slam-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'place_name-val :lambda-list '(m))
(cl:defmethod place_name-val ((m <SemanticalPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader semantical_slam-msg:place_name-val is deprecated.  Use semantical_slam-msg:place_name instead.")
  (place_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SemanticalPoint>) ostream)
  "Serializes a message object of type '<SemanticalPoint>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'place_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'place_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SemanticalPoint>) istream)
  "Deserializes a message object of type '<SemanticalPoint>"
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'place_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'place_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SemanticalPoint>)))
  "Returns string type for a message object of type '<SemanticalPoint>"
  "semantical_slam/SemanticalPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SemanticalPoint)))
  "Returns string type for a message object of type 'SemanticalPoint"
  "semantical_slam/SemanticalPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SemanticalPoint>)))
  "Returns md5sum for a message object of type '<SemanticalPoint>"
  "6dfe1ecd745796b16f1823a92c8841ae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SemanticalPoint)))
  "Returns md5sum for a message object of type 'SemanticalPoint"
  "6dfe1ecd745796b16f1823a92c8841ae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SemanticalPoint>)))
  "Returns full string definition for message of type '<SemanticalPoint>"
  (cl:format cl:nil "float32 x~%float32 y~%string  place_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SemanticalPoint)))
  "Returns full string definition for message of type 'SemanticalPoint"
  (cl:format cl:nil "float32 x~%float32 y~%string  place_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SemanticalPoint>))
  (cl:+ 0
     4
     4
     4 (cl:length (cl:slot-value msg 'place_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SemanticalPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'SemanticalPoint
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':place_name (place_name msg))
))
