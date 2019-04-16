; Auto-generated. Do not edit!


(cl:in-package cob_object_detection_msgs-srv)


;//! \htmlinclude TrainObject-request.msg.html

(cl:defclass <TrainObject-request> (roslisp-msg-protocol:ros-message)
  ((object_name
    :reader object_name
    :initarg :object_name
    :type cl:string
    :initform ""))
)

(cl:defclass TrainObject-request (<TrainObject-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrainObject-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrainObject-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_object_detection_msgs-srv:<TrainObject-request> is deprecated: use cob_object_detection_msgs-srv:TrainObject-request instead.")))

(cl:ensure-generic-function 'object_name-val :lambda-list '(m))
(cl:defmethod object_name-val ((m <TrainObject-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_object_detection_msgs-srv:object_name-val is deprecated.  Use cob_object_detection_msgs-srv:object_name instead.")
  (object_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrainObject-request>) ostream)
  "Serializes a message object of type '<TrainObject-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrainObject-request>) istream)
  "Deserializes a message object of type '<TrainObject-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrainObject-request>)))
  "Returns string type for a service object of type '<TrainObject-request>"
  "cob_object_detection_msgs/TrainObjectRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrainObject-request)))
  "Returns string type for a service object of type 'TrainObject-request"
  "cob_object_detection_msgs/TrainObjectRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrainObject-request>)))
  "Returns md5sum for a message object of type '<TrainObject-request>"
  "2f12226348d323c2e5b2031b3da53f1b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrainObject-request)))
  "Returns md5sum for a message object of type 'TrainObject-request"
  "2f12226348d323c2e5b2031b3da53f1b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrainObject-request>)))
  "Returns full string definition for message of type '<TrainObject-request>"
  (cl:format cl:nil "string object_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrainObject-request)))
  "Returns full string definition for message of type 'TrainObject-request"
  (cl:format cl:nil "string object_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrainObject-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'object_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrainObject-request>))
  "Converts a ROS message object to a list"
  (cl:list 'TrainObject-request
    (cl:cons ':object_name (object_name msg))
))
;//! \htmlinclude TrainObject-response.msg.html

(cl:defclass <TrainObject-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass TrainObject-response (<TrainObject-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrainObject-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrainObject-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_object_detection_msgs-srv:<TrainObject-response> is deprecated: use cob_object_detection_msgs-srv:TrainObject-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrainObject-response>) ostream)
  "Serializes a message object of type '<TrainObject-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrainObject-response>) istream)
  "Deserializes a message object of type '<TrainObject-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrainObject-response>)))
  "Returns string type for a service object of type '<TrainObject-response>"
  "cob_object_detection_msgs/TrainObjectResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrainObject-response)))
  "Returns string type for a service object of type 'TrainObject-response"
  "cob_object_detection_msgs/TrainObjectResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrainObject-response>)))
  "Returns md5sum for a message object of type '<TrainObject-response>"
  "2f12226348d323c2e5b2031b3da53f1b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrainObject-response)))
  "Returns md5sum for a message object of type 'TrainObject-response"
  "2f12226348d323c2e5b2031b3da53f1b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrainObject-response>)))
  "Returns full string definition for message of type '<TrainObject-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrainObject-response)))
  "Returns full string definition for message of type 'TrainObject-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrainObject-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrainObject-response>))
  "Converts a ROS message object to a list"
  (cl:list 'TrainObject-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'TrainObject)))
  'TrainObject-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'TrainObject)))
  'TrainObject-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrainObject)))
  "Returns string type for a service object of type '<TrainObject>"
  "cob_object_detection_msgs/TrainObject")