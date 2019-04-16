; Auto-generated. Do not edit!


(cl:in-package cob_object_detection_msgs-srv)


;//! \htmlinclude StopObjectRecording-request.msg.html

(cl:defclass <StopObjectRecording-request> (roslisp-msg-protocol:ros-message)
  ((stop_although_model_is_incomplete
    :reader stop_although_model_is_incomplete
    :initarg :stop_although_model_is_incomplete
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass StopObjectRecording-request (<StopObjectRecording-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopObjectRecording-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopObjectRecording-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_object_detection_msgs-srv:<StopObjectRecording-request> is deprecated: use cob_object_detection_msgs-srv:StopObjectRecording-request instead.")))

(cl:ensure-generic-function 'stop_although_model_is_incomplete-val :lambda-list '(m))
(cl:defmethod stop_although_model_is_incomplete-val ((m <StopObjectRecording-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_object_detection_msgs-srv:stop_although_model_is_incomplete-val is deprecated.  Use cob_object_detection_msgs-srv:stop_although_model_is_incomplete instead.")
  (stop_although_model_is_incomplete m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopObjectRecording-request>) ostream)
  "Serializes a message object of type '<StopObjectRecording-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stop_although_model_is_incomplete) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopObjectRecording-request>) istream)
  "Deserializes a message object of type '<StopObjectRecording-request>"
    (cl:setf (cl:slot-value msg 'stop_although_model_is_incomplete) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopObjectRecording-request>)))
  "Returns string type for a service object of type '<StopObjectRecording-request>"
  "cob_object_detection_msgs/StopObjectRecordingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopObjectRecording-request)))
  "Returns string type for a service object of type 'StopObjectRecording-request"
  "cob_object_detection_msgs/StopObjectRecordingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopObjectRecording-request>)))
  "Returns md5sum for a message object of type '<StopObjectRecording-request>"
  "b115df286bf93d57db01286b71c91409")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopObjectRecording-request)))
  "Returns md5sum for a message object of type 'StopObjectRecording-request"
  "b115df286bf93d57db01286b71c91409")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopObjectRecording-request>)))
  "Returns full string definition for message of type '<StopObjectRecording-request>"
  (cl:format cl:nil "~%~%~%bool stop_although_model_is_incomplete~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopObjectRecording-request)))
  "Returns full string definition for message of type 'StopObjectRecording-request"
  (cl:format cl:nil "~%~%~%bool stop_although_model_is_incomplete~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopObjectRecording-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopObjectRecording-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StopObjectRecording-request
    (cl:cons ':stop_although_model_is_incomplete (stop_although_model_is_incomplete msg))
))
;//! \htmlinclude StopObjectRecording-response.msg.html

(cl:defclass <StopObjectRecording-response> (roslisp-msg-protocol:ros-message)
  ((recording_stopped
    :reader recording_stopped
    :initarg :recording_stopped
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass StopObjectRecording-response (<StopObjectRecording-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopObjectRecording-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopObjectRecording-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_object_detection_msgs-srv:<StopObjectRecording-response> is deprecated: use cob_object_detection_msgs-srv:StopObjectRecording-response instead.")))

(cl:ensure-generic-function 'recording_stopped-val :lambda-list '(m))
(cl:defmethod recording_stopped-val ((m <StopObjectRecording-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_object_detection_msgs-srv:recording_stopped-val is deprecated.  Use cob_object_detection_msgs-srv:recording_stopped instead.")
  (recording_stopped m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopObjectRecording-response>) ostream)
  "Serializes a message object of type '<StopObjectRecording-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'recording_stopped) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopObjectRecording-response>) istream)
  "Deserializes a message object of type '<StopObjectRecording-response>"
    (cl:setf (cl:slot-value msg 'recording_stopped) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopObjectRecording-response>)))
  "Returns string type for a service object of type '<StopObjectRecording-response>"
  "cob_object_detection_msgs/StopObjectRecordingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopObjectRecording-response)))
  "Returns string type for a service object of type 'StopObjectRecording-response"
  "cob_object_detection_msgs/StopObjectRecordingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopObjectRecording-response>)))
  "Returns md5sum for a message object of type '<StopObjectRecording-response>"
  "b115df286bf93d57db01286b71c91409")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopObjectRecording-response)))
  "Returns md5sum for a message object of type 'StopObjectRecording-response"
  "b115df286bf93d57db01286b71c91409")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopObjectRecording-response>)))
  "Returns full string definition for message of type '<StopObjectRecording-response>"
  (cl:format cl:nil "~%bool recording_stopped~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopObjectRecording-response)))
  "Returns full string definition for message of type 'StopObjectRecording-response"
  (cl:format cl:nil "~%bool recording_stopped~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopObjectRecording-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopObjectRecording-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StopObjectRecording-response
    (cl:cons ':recording_stopped (recording_stopped msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StopObjectRecording)))
  'StopObjectRecording-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StopObjectRecording)))
  'StopObjectRecording-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopObjectRecording)))
  "Returns string type for a service object of type '<StopObjectRecording>"
  "cob_object_detection_msgs/StopObjectRecording")