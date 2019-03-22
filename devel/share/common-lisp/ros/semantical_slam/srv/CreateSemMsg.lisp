; Auto-generated. Do not edit!


(cl:in-package semantical_slam-srv)


;//! \htmlinclude CreateSemMsg-request.msg.html

(cl:defclass <CreateSemMsg-request> (roslisp-msg-protocol:ros-message)
  ((actual_place
    :reader actual_place
    :initarg :actual_place
    :type cl:string
    :initform "")
   (actual_pose
    :reader actual_pose
    :initarg :actual_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass CreateSemMsg-request (<CreateSemMsg-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CreateSemMsg-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CreateSemMsg-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name semantical_slam-srv:<CreateSemMsg-request> is deprecated: use semantical_slam-srv:CreateSemMsg-request instead.")))

(cl:ensure-generic-function 'actual_place-val :lambda-list '(m))
(cl:defmethod actual_place-val ((m <CreateSemMsg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader semantical_slam-srv:actual_place-val is deprecated.  Use semantical_slam-srv:actual_place instead.")
  (actual_place m))

(cl:ensure-generic-function 'actual_pose-val :lambda-list '(m))
(cl:defmethod actual_pose-val ((m <CreateSemMsg-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader semantical_slam-srv:actual_pose-val is deprecated.  Use semantical_slam-srv:actual_pose instead.")
  (actual_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CreateSemMsg-request>) ostream)
  "Serializes a message object of type '<CreateSemMsg-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'actual_place))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'actual_place))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'actual_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CreateSemMsg-request>) istream)
  "Deserializes a message object of type '<CreateSemMsg-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'actual_place) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'actual_place) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'actual_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CreateSemMsg-request>)))
  "Returns string type for a service object of type '<CreateSemMsg-request>"
  "semantical_slam/CreateSemMsgRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CreateSemMsg-request)))
  "Returns string type for a service object of type 'CreateSemMsg-request"
  "semantical_slam/CreateSemMsgRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CreateSemMsg-request>)))
  "Returns md5sum for a message object of type '<CreateSemMsg-request>"
  "2f150e66db12719ba67e40fde5c71fef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CreateSemMsg-request)))
  "Returns md5sum for a message object of type 'CreateSemMsg-request"
  "2f150e66db12719ba67e40fde5c71fef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CreateSemMsg-request>)))
  "Returns full string definition for message of type '<CreateSemMsg-request>"
  (cl:format cl:nil "string actual_place~%geometry_msgs/Pose actual_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CreateSemMsg-request)))
  "Returns full string definition for message of type 'CreateSemMsg-request"
  (cl:format cl:nil "string actual_place~%geometry_msgs/Pose actual_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CreateSemMsg-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'actual_place))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'actual_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CreateSemMsg-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CreateSemMsg-request
    (cl:cons ':actual_place (actual_place msg))
    (cl:cons ':actual_pose (actual_pose msg))
))
;//! \htmlinclude CreateSemMsg-response.msg.html

(cl:defclass <CreateSemMsg-response> (roslisp-msg-protocol:ros-message)
  ((final_message
    :reader final_message
    :initarg :final_message
    :type semantical_slam-msg:SemanticalPoint
    :initform (cl:make-instance 'semantical_slam-msg:SemanticalPoint)))
)

(cl:defclass CreateSemMsg-response (<CreateSemMsg-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CreateSemMsg-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CreateSemMsg-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name semantical_slam-srv:<CreateSemMsg-response> is deprecated: use semantical_slam-srv:CreateSemMsg-response instead.")))

(cl:ensure-generic-function 'final_message-val :lambda-list '(m))
(cl:defmethod final_message-val ((m <CreateSemMsg-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader semantical_slam-srv:final_message-val is deprecated.  Use semantical_slam-srv:final_message instead.")
  (final_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CreateSemMsg-response>) ostream)
  "Serializes a message object of type '<CreateSemMsg-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'final_message) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CreateSemMsg-response>) istream)
  "Deserializes a message object of type '<CreateSemMsg-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'final_message) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CreateSemMsg-response>)))
  "Returns string type for a service object of type '<CreateSemMsg-response>"
  "semantical_slam/CreateSemMsgResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CreateSemMsg-response)))
  "Returns string type for a service object of type 'CreateSemMsg-response"
  "semantical_slam/CreateSemMsgResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CreateSemMsg-response>)))
  "Returns md5sum for a message object of type '<CreateSemMsg-response>"
  "2f150e66db12719ba67e40fde5c71fef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CreateSemMsg-response)))
  "Returns md5sum for a message object of type 'CreateSemMsg-response"
  "2f150e66db12719ba67e40fde5c71fef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CreateSemMsg-response>)))
  "Returns full string definition for message of type '<CreateSemMsg-response>"
  (cl:format cl:nil "SemanticalPoint final_message~%~%~%~%================================================================================~%MSG: semantical_slam/SemanticalPoint~%float32 x~%float32 y~%string  place_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CreateSemMsg-response)))
  "Returns full string definition for message of type 'CreateSemMsg-response"
  (cl:format cl:nil "SemanticalPoint final_message~%~%~%~%================================================================================~%MSG: semantical_slam/SemanticalPoint~%float32 x~%float32 y~%string  place_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CreateSemMsg-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'final_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CreateSemMsg-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CreateSemMsg-response
    (cl:cons ':final_message (final_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CreateSemMsg)))
  'CreateSemMsg-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CreateSemMsg)))
  'CreateSemMsg-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CreateSemMsg)))
  "Returns string type for a service object of type '<CreateSemMsg>"
  "semantical_slam/CreateSemMsg")