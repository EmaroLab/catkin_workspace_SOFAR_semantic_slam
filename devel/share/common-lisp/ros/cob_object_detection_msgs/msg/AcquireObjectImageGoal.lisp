; Auto-generated. Do not edit!


(cl:in-package cob_object_detection_msgs-msg)


;//! \htmlinclude AcquireObjectImageGoal.msg.html

(cl:defclass <AcquireObjectImageGoal> (roslisp-msg-protocol:ros-message)
  ((object_name
    :reader object_name
    :initarg :object_name
    :type cl:string
    :initform "")
   (reset_image_counter
    :reader reset_image_counter
    :initarg :reset_image_counter
    :type cl:boolean
    :initform cl:nil)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (sdh_joints
    :reader sdh_joints
    :initarg :sdh_joints
    :type (cl:vector geometry_msgs-msg:PoseStamped)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:PoseStamped :initial-element (cl:make-instance 'geometry_msgs-msg:PoseStamped))))
)

(cl:defclass AcquireObjectImageGoal (<AcquireObjectImageGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AcquireObjectImageGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AcquireObjectImageGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_object_detection_msgs-msg:<AcquireObjectImageGoal> is deprecated: use cob_object_detection_msgs-msg:AcquireObjectImageGoal instead.")))

(cl:ensure-generic-function 'object_name-val :lambda-list '(m))
(cl:defmethod object_name-val ((m <AcquireObjectImageGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_object_detection_msgs-msg:object_name-val is deprecated.  Use cob_object_detection_msgs-msg:object_name instead.")
  (object_name m))

(cl:ensure-generic-function 'reset_image_counter-val :lambda-list '(m))
(cl:defmethod reset_image_counter-val ((m <AcquireObjectImageGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_object_detection_msgs-msg:reset_image_counter-val is deprecated.  Use cob_object_detection_msgs-msg:reset_image_counter instead.")
  (reset_image_counter m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <AcquireObjectImageGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_object_detection_msgs-msg:pose-val is deprecated.  Use cob_object_detection_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'sdh_joints-val :lambda-list '(m))
(cl:defmethod sdh_joints-val ((m <AcquireObjectImageGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_object_detection_msgs-msg:sdh_joints-val is deprecated.  Use cob_object_detection_msgs-msg:sdh_joints instead.")
  (sdh_joints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AcquireObjectImageGoal>) ostream)
  "Serializes a message object of type '<AcquireObjectImageGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'object_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'object_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reset_image_counter) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sdh_joints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'sdh_joints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AcquireObjectImageGoal>) istream)
  "Deserializes a message object of type '<AcquireObjectImageGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'object_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'object_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'reset_image_counter) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sdh_joints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sdh_joints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:PoseStamped))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AcquireObjectImageGoal>)))
  "Returns string type for a message object of type '<AcquireObjectImageGoal>"
  "cob_object_detection_msgs/AcquireObjectImageGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AcquireObjectImageGoal)))
  "Returns string type for a message object of type 'AcquireObjectImageGoal"
  "cob_object_detection_msgs/AcquireObjectImageGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AcquireObjectImageGoal>)))
  "Returns md5sum for a message object of type '<AcquireObjectImageGoal>"
  "a834da64b488488418ecf10d2737befd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AcquireObjectImageGoal)))
  "Returns md5sum for a message object of type 'AcquireObjectImageGoal"
  "a834da64b488488418ecf10d2737befd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AcquireObjectImageGoal>)))
  "Returns full string definition for message of type '<AcquireObjectImageGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# The goal~%string object_name~%bool reset_image_counter~%geometry_msgs/PoseStamped pose~%geometry_msgs/PoseStamped[] sdh_joints~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AcquireObjectImageGoal)))
  "Returns full string definition for message of type 'AcquireObjectImageGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# The goal~%string object_name~%bool reset_image_counter~%geometry_msgs/PoseStamped pose~%geometry_msgs/PoseStamped[] sdh_joints~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AcquireObjectImageGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'object_name))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sdh_joints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AcquireObjectImageGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'AcquireObjectImageGoal
    (cl:cons ':object_name (object_name msg))
    (cl:cons ':reset_image_counter (reset_image_counter msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':sdh_joints (sdh_joints msg))
))
