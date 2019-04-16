; Auto-generated. Do not edit!


(cl:in-package cob_object_detection_msgs-msg)


;//! \htmlinclude PoseRT.msg.html

(cl:defclass <PoseRT> (roslisp-msg-protocol:ros-message)
  ((rvec
    :reader rvec
    :initarg :rvec
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (tvec
    :reader tvec
    :initarg :tvec
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass PoseRT (<PoseRT>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PoseRT>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PoseRT)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_object_detection_msgs-msg:<PoseRT> is deprecated: use cob_object_detection_msgs-msg:PoseRT instead.")))

(cl:ensure-generic-function 'rvec-val :lambda-list '(m))
(cl:defmethod rvec-val ((m <PoseRT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_object_detection_msgs-msg:rvec-val is deprecated.  Use cob_object_detection_msgs-msg:rvec instead.")
  (rvec m))

(cl:ensure-generic-function 'tvec-val :lambda-list '(m))
(cl:defmethod tvec-val ((m <PoseRT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_object_detection_msgs-msg:tvec-val is deprecated.  Use cob_object_detection_msgs-msg:tvec instead.")
  (tvec m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PoseRT>) ostream)
  "Serializes a message object of type '<PoseRT>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'rvec))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'tvec))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PoseRT>) istream)
  "Deserializes a message object of type '<PoseRT>"
  (cl:setf (cl:slot-value msg 'rvec) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'rvec)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'tvec) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'tvec)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PoseRT>)))
  "Returns string type for a message object of type '<PoseRT>"
  "cob_object_detection_msgs/PoseRT")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PoseRT)))
  "Returns string type for a message object of type 'PoseRT"
  "cob_object_detection_msgs/PoseRT")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PoseRT>)))
  "Returns md5sum for a message object of type '<PoseRT>"
  "d6802a5a6d10cce0b5eea91c5defc39f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PoseRT)))
  "Returns md5sum for a message object of type 'PoseRT"
  "d6802a5a6d10cce0b5eea91c5defc39f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PoseRT>)))
  "Returns full string definition for message of type '<PoseRT>"
  (cl:format cl:nil "#3x1 rotation vector, Rodrigues axis angle form,~%#angle = norm(rvec) -- radians~%#axis = rvec/norm(rvec) -- unit length~%float64[3]  rvec~%#3x1 translation vector, in meters~%float64[3]  tvec~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PoseRT)))
  "Returns full string definition for message of type 'PoseRT"
  (cl:format cl:nil "#3x1 rotation vector, Rodrigues axis angle form,~%#angle = norm(rvec) -- radians~%#axis = rvec/norm(rvec) -- unit length~%float64[3]  rvec~%#3x1 translation vector, in meters~%float64[3]  tvec~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PoseRT>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'rvec) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'tvec) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PoseRT>))
  "Converts a ROS message object to a list"
  (cl:list 'PoseRT
    (cl:cons ':rvec (rvec msg))
    (cl:cons ':tvec (tvec msg))
))
