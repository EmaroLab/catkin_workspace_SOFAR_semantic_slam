; Auto-generated. Do not edit!


(cl:in-package cob_object_detection_msgs-srv)


;//! \htmlinclude StartObjectRecording-request.msg.html

(cl:defclass <StartObjectRecording-request> (roslisp-msg-protocol:ros-message)
  ((object_label
    :reader object_label
    :initarg :object_label
    :type cl:string
    :initform ""))
)

(cl:defclass StartObjectRecording-request (<StartObjectRecording-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartObjectRecording-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartObjectRecording-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_object_detection_msgs-srv:<StartObjectRecording-request> is deprecated: use cob_object_detection_msgs-srv:StartObjectRecording-request instead.")))

(cl:ensure-generic-function 'object_label-val :lambda-list '(m))
(cl:defmethod object_label-val ((m <StartObjectRecording-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_object_detection_msgs-srv:object_label-val is deprecated.  Use cob_object_detection_msgs-srv:object_label instead.")
  (object_label m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartObjectRecording-request>) ostream)
  "Serializes a message object of type '<StartObjectRecording-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object_label))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object_label))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartObjectRecording-request>) istream)
  "Deserializes a message object of type '<StartObjectRecording-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object_label) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object_label) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartObjectRecording-request>)))
  "Returns string type for a service object of type '<StartObjectRecording-request>"
  "cob_object_detection_msgs/StartObjectRecordingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartObjectRecording-request)))
  "Returns string type for a service object of type 'StartObjectRecording-request"
  "cob_object_detection_msgs/StartObjectRecordingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartObjectRecording-request>)))
  "Returns md5sum for a message object of type '<StartObjectRecording-request>"
  "ed3bc845528a8aed5f5a16c86665300a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartObjectRecording-request)))
  "Returns md5sum for a message object of type 'StartObjectRecording-request"
  "ed3bc845528a8aed5f5a16c86665300a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartObjectRecording-request>)))
  "Returns full string definition for message of type '<StartObjectRecording-request>"
  (cl:format cl:nil "~%~%~%string object_label~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartObjectRecording-request)))
  "Returns full string definition for message of type 'StartObjectRecording-request"
  (cl:format cl:nil "~%~%~%string object_label~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartObjectRecording-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'object_label))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartObjectRecording-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StartObjectRecording-request
    (cl:cons ':object_label (object_label msg))
))
;//! \htmlinclude StartObjectRecording-response.msg.html

(cl:defclass <StartObjectRecording-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StartObjectRecording-response (<StartObjectRecording-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StartObjectRecording-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StartObjectRecording-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_object_detection_msgs-srv:<StartObjectRecording-response> is deprecated: use cob_object_detection_msgs-srv:StartObjectRecording-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StartObjectRecording-response>) ostream)
  "Serializes a message object of type '<StartObjectRecording-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StartObjectRecording-response>) istream)
  "Deserializes a message object of type '<StartObjectRecording-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StartObjectRecording-response>)))
  "Returns string type for a service object of type '<StartObjectRecording-response>"
  "cob_object_detection_msgs/StartObjectRecordingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartObjectRecording-response)))
  "Returns string type for a service object of type 'StartObjectRecording-response"
  "cob_object_detection_msgs/StartObjectRecordingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StartObjectRecording-response>)))
  "Returns md5sum for a message object of type '<StartObjectRecording-response>"
  "ed3bc845528a8aed5f5a16c86665300a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StartObjectRecording-response)))
  "Returns md5sum for a message object of type 'StartObjectRecording-response"
  "ed3bc845528a8aed5f5a16c86665300a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StartObjectRecording-response>)))
  "Returns full string definition for message of type '<StartObjectRecording-response>"
  (cl:format cl:nil "~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StartObjectRecording-response)))
  "Returns full string definition for message of type 'StartObjectRecording-response"
  (cl:format cl:nil "~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StartObjectRecording-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StartObjectRecording-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StartObjectRecording-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StartObjectRecording)))
  'StartObjectRecording-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StartObjectRecording)))
  'StartObjectRecording-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StartObjectRecording)))
  "Returns string type for a service object of type '<StartObjectRecording>"
  "cob_object_detection_msgs/StartObjectRecording")