; Auto-generated. Do not edit!


(cl:in-package cob_object_detection_msgs-srv)


;//! \htmlinclude BagTrainObject-request.msg.html

(cl:defclass <BagTrainObject-request> (roslisp-msg-protocol:ros-message)
  ((object_name
    :reader object_name
    :initarg :object_name
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass BagTrainObject-request (<BagTrainObject-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BagTrainObject-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BagTrainObject-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_object_detection_msgs-srv:<BagTrainObject-request> is deprecated: use cob_object_detection_msgs-srv:BagTrainObject-request instead.")))

(cl:ensure-generic-function 'object_name-val :lambda-list '(m))
(cl:defmethod object_name-val ((m <BagTrainObject-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_object_detection_msgs-srv:object_name-val is deprecated.  Use cob_object_detection_msgs-srv:object_name instead.")
  (object_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BagTrainObject-request>) ostream)
  "Serializes a message object of type '<BagTrainObject-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'object_name) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BagTrainObject-request>) istream)
  "Deserializes a message object of type '<BagTrainObject-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'object_name) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BagTrainObject-request>)))
  "Returns string type for a service object of type '<BagTrainObject-request>"
  "cob_object_detection_msgs/BagTrainObjectRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BagTrainObject-request)))
  "Returns string type for a service object of type 'BagTrainObject-request"
  "cob_object_detection_msgs/BagTrainObjectRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BagTrainObject-request>)))
  "Returns md5sum for a message object of type '<BagTrainObject-request>"
  "e054914e8be752a53cf516ce4c1d583c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BagTrainObject-request)))
  "Returns md5sum for a message object of type 'BagTrainObject-request"
  "e054914e8be752a53cf516ce4c1d583c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BagTrainObject-request>)))
  "Returns full string definition for message of type '<BagTrainObject-request>"
  (cl:format cl:nil "std_msgs/String object_name~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BagTrainObject-request)))
  "Returns full string definition for message of type 'BagTrainObject-request"
  (cl:format cl:nil "std_msgs/String object_name~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BagTrainObject-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'object_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BagTrainObject-request>))
  "Converts a ROS message object to a list"
  (cl:list 'BagTrainObject-request
    (cl:cons ':object_name (object_name msg))
))
;//! \htmlinclude BagTrainObject-response.msg.html

(cl:defclass <BagTrainObject-response> (roslisp-msg-protocol:ros-message)
  ((trained
    :reader trained
    :initarg :trained
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass BagTrainObject-response (<BagTrainObject-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BagTrainObject-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BagTrainObject-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_object_detection_msgs-srv:<BagTrainObject-response> is deprecated: use cob_object_detection_msgs-srv:BagTrainObject-response instead.")))

(cl:ensure-generic-function 'trained-val :lambda-list '(m))
(cl:defmethod trained-val ((m <BagTrainObject-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_object_detection_msgs-srv:trained-val is deprecated.  Use cob_object_detection_msgs-srv:trained instead.")
  (trained m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BagTrainObject-response>) ostream)
  "Serializes a message object of type '<BagTrainObject-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trained) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BagTrainObject-response>) istream)
  "Deserializes a message object of type '<BagTrainObject-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trained) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BagTrainObject-response>)))
  "Returns string type for a service object of type '<BagTrainObject-response>"
  "cob_object_detection_msgs/BagTrainObjectResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BagTrainObject-response)))
  "Returns string type for a service object of type 'BagTrainObject-response"
  "cob_object_detection_msgs/BagTrainObjectResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BagTrainObject-response>)))
  "Returns md5sum for a message object of type '<BagTrainObject-response>"
  "e054914e8be752a53cf516ce4c1d583c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BagTrainObject-response)))
  "Returns md5sum for a message object of type 'BagTrainObject-response"
  "e054914e8be752a53cf516ce4c1d583c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BagTrainObject-response>)))
  "Returns full string definition for message of type '<BagTrainObject-response>"
  (cl:format cl:nil "std_msgs/String trained~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BagTrainObject-response)))
  "Returns full string definition for message of type 'BagTrainObject-response"
  (cl:format cl:nil "std_msgs/String trained~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BagTrainObject-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trained))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BagTrainObject-response>))
  "Converts a ROS message object to a list"
  (cl:list 'BagTrainObject-response
    (cl:cons ':trained (trained msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'BagTrainObject)))
  'BagTrainObject-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'BagTrainObject)))
  'BagTrainObject-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BagTrainObject)))
  "Returns string type for a service object of type '<BagTrainObject>"
  "cob_object_detection_msgs/BagTrainObject")