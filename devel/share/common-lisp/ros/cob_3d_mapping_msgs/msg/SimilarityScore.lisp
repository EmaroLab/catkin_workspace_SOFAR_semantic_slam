; Auto-generated. Do not edit!


(cl:in-package cob_3d_mapping_msgs-msg)


;//! \htmlinclude SimilarityScore.msg.html

(cl:defclass <SimilarityScore> (roslisp-msg-protocol:ros-message)
  ((ID
    :reader ID
    :initarg :ID
    :type cl:integer
    :initform 0)
   (prob
    :reader prob
    :initarg :prob
    :type cl:float
    :initform 0.0))
)

(cl:defclass SimilarityScore (<SimilarityScore>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SimilarityScore>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SimilarityScore)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_3d_mapping_msgs-msg:<SimilarityScore> is deprecated: use cob_3d_mapping_msgs-msg:SimilarityScore instead.")))

(cl:ensure-generic-function 'ID-val :lambda-list '(m))
(cl:defmethod ID-val ((m <SimilarityScore>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:ID-val is deprecated.  Use cob_3d_mapping_msgs-msg:ID instead.")
  (ID m))

(cl:ensure-generic-function 'prob-val :lambda-list '(m))
(cl:defmethod prob-val ((m <SimilarityScore>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:prob-val is deprecated.  Use cob_3d_mapping_msgs-msg:prob instead.")
  (prob m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SimilarityScore>) ostream)
  "Serializes a message object of type '<SimilarityScore>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ID)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'prob))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SimilarityScore>) istream)
  "Deserializes a message object of type '<SimilarityScore>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ID)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'prob) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SimilarityScore>)))
  "Returns string type for a message object of type '<SimilarityScore>"
  "cob_3d_mapping_msgs/SimilarityScore")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SimilarityScore)))
  "Returns string type for a message object of type 'SimilarityScore"
  "cob_3d_mapping_msgs/SimilarityScore")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SimilarityScore>)))
  "Returns md5sum for a message object of type '<SimilarityScore>"
  "bae66c7dce1ddf1ccfcfb042f78f22aa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SimilarityScore)))
  "Returns md5sum for a message object of type 'SimilarityScore"
  "bae66c7dce1ddf1ccfcfb042f78f22aa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SimilarityScore>)))
  "Returns full string definition for message of type '<SimilarityScore>"
  (cl:format cl:nil "uint32 ID~%float32 prob~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SimilarityScore)))
  "Returns full string definition for message of type 'SimilarityScore"
  (cl:format cl:nil "uint32 ID~%float32 prob~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SimilarityScore>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SimilarityScore>))
  "Converts a ROS message object to a list"
  (cl:list 'SimilarityScore
    (cl:cons ':ID (ID msg))
    (cl:cons ':prob (prob msg))
))
