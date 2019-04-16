; Auto-generated. Do not edit!


(cl:in-package cob_object_detection_msgs-srv)


;//! \htmlinclude SaveRecordedObject-request.msg.html

(cl:defclass <SaveRecordedObject-request> (roslisp-msg-protocol:ros-message)
  ((storage_location
    :reader storage_location
    :initarg :storage_location
    :type cl:string
    :initform ""))
)

(cl:defclass SaveRecordedObject-request (<SaveRecordedObject-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveRecordedObject-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveRecordedObject-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_object_detection_msgs-srv:<SaveRecordedObject-request> is deprecated: use cob_object_detection_msgs-srv:SaveRecordedObject-request instead.")))

(cl:ensure-generic-function 'storage_location-val :lambda-list '(m))
(cl:defmethod storage_location-val ((m <SaveRecordedObject-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_object_detection_msgs-srv:storage_location-val is deprecated.  Use cob_object_detection_msgs-srv:storage_location instead.")
  (storage_location m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveRecordedObject-request>) ostream)
  "Serializes a message object of type '<SaveRecordedObject-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'storage_location))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'storage_location))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveRecordedObject-request>) istream)
  "Deserializes a message object of type '<SaveRecordedObject-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'storage_location) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'storage_location) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveRecordedObject-request>)))
  "Returns string type for a service object of type '<SaveRecordedObject-request>"
  "cob_object_detection_msgs/SaveRecordedObjectRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveRecordedObject-request)))
  "Returns string type for a service object of type 'SaveRecordedObject-request"
  "cob_object_detection_msgs/SaveRecordedObjectRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveRecordedObject-request>)))
  "Returns md5sum for a message object of type '<SaveRecordedObject-request>"
  "980da3132a7c1c17973e490fc0fbba86")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveRecordedObject-request)))
  "Returns md5sum for a message object of type 'SaveRecordedObject-request"
  "980da3132a7c1c17973e490fc0fbba86")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveRecordedObject-request>)))
  "Returns full string definition for message of type '<SaveRecordedObject-request>"
  (cl:format cl:nil "~%~%~%string storage_location~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveRecordedObject-request)))
  "Returns full string definition for message of type 'SaveRecordedObject-request"
  (cl:format cl:nil "~%~%~%string storage_location~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveRecordedObject-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'storage_location))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveRecordedObject-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveRecordedObject-request
    (cl:cons ':storage_location (storage_location msg))
))
;//! \htmlinclude SaveRecordedObject-response.msg.html

(cl:defclass <SaveRecordedObject-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SaveRecordedObject-response (<SaveRecordedObject-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaveRecordedObject-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaveRecordedObject-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_object_detection_msgs-srv:<SaveRecordedObject-response> is deprecated: use cob_object_detection_msgs-srv:SaveRecordedObject-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaveRecordedObject-response>) ostream)
  "Serializes a message object of type '<SaveRecordedObject-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaveRecordedObject-response>) istream)
  "Deserializes a message object of type '<SaveRecordedObject-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaveRecordedObject-response>)))
  "Returns string type for a service object of type '<SaveRecordedObject-response>"
  "cob_object_detection_msgs/SaveRecordedObjectResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveRecordedObject-response)))
  "Returns string type for a service object of type 'SaveRecordedObject-response"
  "cob_object_detection_msgs/SaveRecordedObjectResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaveRecordedObject-response>)))
  "Returns md5sum for a message object of type '<SaveRecordedObject-response>"
  "980da3132a7c1c17973e490fc0fbba86")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaveRecordedObject-response)))
  "Returns md5sum for a message object of type 'SaveRecordedObject-response"
  "980da3132a7c1c17973e490fc0fbba86")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaveRecordedObject-response>)))
  "Returns full string definition for message of type '<SaveRecordedObject-response>"
  (cl:format cl:nil "~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaveRecordedObject-response)))
  "Returns full string definition for message of type 'SaveRecordedObject-response"
  (cl:format cl:nil "~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaveRecordedObject-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaveRecordedObject-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SaveRecordedObject-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SaveRecordedObject)))
  'SaveRecordedObject-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SaveRecordedObject)))
  'SaveRecordedObject-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaveRecordedObject)))
  "Returns string type for a service object of type '<SaveRecordedObject>"
  "cob_object_detection_msgs/SaveRecordedObject")