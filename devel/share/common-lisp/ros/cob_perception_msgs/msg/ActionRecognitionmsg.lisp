; Auto-generated. Do not edit!


(cl:in-package cob_perception_msgs-msg)


;//! \htmlinclude ActionRecognitionmsg.msg.html

(cl:defclass <ActionRecognitionmsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (labels
    :reader labels
    :initarg :labels
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (probabilities
    :reader probabilities
    :initarg :probabilities
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ActionRecognitionmsg (<ActionRecognitionmsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActionRecognitionmsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActionRecognitionmsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_perception_msgs-msg:<ActionRecognitionmsg> is deprecated: use cob_perception_msgs-msg:ActionRecognitionmsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ActionRecognitionmsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_perception_msgs-msg:header-val is deprecated.  Use cob_perception_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'labels-val :lambda-list '(m))
(cl:defmethod labels-val ((m <ActionRecognitionmsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_perception_msgs-msg:labels-val is deprecated.  Use cob_perception_msgs-msg:labels instead.")
  (labels m))

(cl:ensure-generic-function 'probabilities-val :lambda-list '(m))
(cl:defmethod probabilities-val ((m <ActionRecognitionmsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_perception_msgs-msg:probabilities-val is deprecated.  Use cob_perception_msgs-msg:probabilities instead.")
  (probabilities m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActionRecognitionmsg>) ostream)
  "Serializes a message object of type '<ActionRecognitionmsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'labels))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'labels))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'probabilities))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'probabilities))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActionRecognitionmsg>) istream)
  "Deserializes a message object of type '<ActionRecognitionmsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'labels) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'labels)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'probabilities) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'probabilities)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActionRecognitionmsg>)))
  "Returns string type for a message object of type '<ActionRecognitionmsg>"
  "cob_perception_msgs/ActionRecognitionmsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActionRecognitionmsg)))
  "Returns string type for a message object of type 'ActionRecognitionmsg"
  "cob_perception_msgs/ActionRecognitionmsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActionRecognitionmsg>)))
  "Returns md5sum for a message object of type '<ActionRecognitionmsg>"
  "35ce3f516ef25de507f2f0b3b42469d4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActionRecognitionmsg)))
  "Returns md5sum for a message object of type 'ActionRecognitionmsg"
  "35ce3f516ef25de507f2f0b3b42469d4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActionRecognitionmsg>)))
  "Returns full string definition for message of type '<ActionRecognitionmsg>"
  (cl:format cl:nil "Header header~%string[] labels~%float32[] probabilities ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActionRecognitionmsg)))
  "Returns full string definition for message of type 'ActionRecognitionmsg"
  (cl:format cl:nil "Header header~%string[] labels~%float32[] probabilities ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActionRecognitionmsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'labels) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'probabilities) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActionRecognitionmsg>))
  "Converts a ROS message object to a list"
  (cl:list 'ActionRecognitionmsg
    (cl:cons ':header (header msg))
    (cl:cons ':labels (labels msg))
    (cl:cons ':probabilities (probabilities msg))
))
