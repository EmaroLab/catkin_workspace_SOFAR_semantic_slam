; Auto-generated. Do not edit!


(cl:in-package cob_perception_msgs-msg)


;//! \htmlinclude Skeleton.msg.html

(cl:defclass <Skeleton> (roslisp-msg-protocol:ros-message)
  ((joints
    :reader joints
    :initarg :joints
    :type (cl:vector geometry_msgs-msg:Pose)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Pose :initial-element (cl:make-instance 'geometry_msgs-msg:Pose))))
)

(cl:defclass Skeleton (<Skeleton>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Skeleton>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Skeleton)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_perception_msgs-msg:<Skeleton> is deprecated: use cob_perception_msgs-msg:Skeleton instead.")))

(cl:ensure-generic-function 'joints-val :lambda-list '(m))
(cl:defmethod joints-val ((m <Skeleton>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_perception_msgs-msg:joints-val is deprecated.  Use cob_perception_msgs-msg:joints instead.")
  (joints m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Skeleton>)))
    "Constants for message type '<Skeleton>"
  '((:JOINT_HEAD . 0)
    (:JOINT_NECK . 1)
    (:JOINT_LEFT_SHOULDER . 2)
    (:JOINT_RIGHT_SHOULDER . 3)
    (:JOINT_LEFT_ELBOW . 4)
    (:JOINT_RIGHT_ELBOW . 5)
    (:JOINT_LEFT_HAND . 6)
    (:JOINT_RIGHT_HAND . 7)
    (:JOINT_TORSO . 8)
    (:JOINT_LEFT_HIP . 9)
    (:JOINT_RIGHT_HIP . 10)
    (:JOINT_LEFT_KNEE . 11)
    (:JOINT_RIGHT_KNEE . 12)
    (:JOINT_LEFT_FOOT . 13)
    (:JOINT_RIGHT_FOOT . 14)
    (:JOINT_NUMBER . 15))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Skeleton)))
    "Constants for message type 'Skeleton"
  '((:JOINT_HEAD . 0)
    (:JOINT_NECK . 1)
    (:JOINT_LEFT_SHOULDER . 2)
    (:JOINT_RIGHT_SHOULDER . 3)
    (:JOINT_LEFT_ELBOW . 4)
    (:JOINT_RIGHT_ELBOW . 5)
    (:JOINT_LEFT_HAND . 6)
    (:JOINT_RIGHT_HAND . 7)
    (:JOINT_TORSO . 8)
    (:JOINT_LEFT_HIP . 9)
    (:JOINT_RIGHT_HIP . 10)
    (:JOINT_LEFT_KNEE . 11)
    (:JOINT_RIGHT_KNEE . 12)
    (:JOINT_LEFT_FOOT . 13)
    (:JOINT_RIGHT_FOOT . 14)
    (:JOINT_NUMBER . 15))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Skeleton>) ostream)
  "Serializes a message object of type '<Skeleton>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'joints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Skeleton>) istream)
  "Deserializes a message object of type '<Skeleton>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Pose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Skeleton>)))
  "Returns string type for a message object of type '<Skeleton>"
  "cob_perception_msgs/Skeleton")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Skeleton)))
  "Returns string type for a message object of type 'Skeleton"
  "cob_perception_msgs/Skeleton")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Skeleton>)))
  "Returns md5sum for a message object of type '<Skeleton>"
  "2ffad426b6c23b6289166d68b5570546")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Skeleton)))
  "Returns md5sum for a message object of type 'Skeleton"
  "2ffad426b6c23b6289166d68b5570546")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Skeleton>)))
  "Returns full string definition for message of type '<Skeleton>"
  (cl:format cl:nil "# This messages is used to describe a skeleton and defines joints of a tracked person~%~%# the same enum as defined in NiteCEnums.h of the Nite body tracker~%uint8 JOINT_HEAD = 0~%uint8 JOINT_NECK = 1~%uint8 JOINT_LEFT_SHOULDER = 2~%uint8 JOINT_RIGHT_SHOULDER = 3~%uint8 JOINT_LEFT_ELBOW = 4~%uint8 JOINT_RIGHT_ELBOW = 5~%uint8 JOINT_LEFT_HAND = 6~%uint8 JOINT_RIGHT_HAND = 7~%uint8 JOINT_TORSO = 8~%uint8 JOINT_LEFT_HIP = 9~%uint8 JOINT_RIGHT_HIP = 10~%uint8 JOINT_LEFT_KNEE = 11~%uint8 JOINT_RIGHT_KNEE = 12~%uint8 JOINT_LEFT_FOOT = 13~%uint8 JOINT_RIGHT_FOOT = 14~%uint8 JOINT_NUMBER = 15~%~%geometry_msgs/Pose[] joints~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Skeleton)))
  "Returns full string definition for message of type 'Skeleton"
  (cl:format cl:nil "# This messages is used to describe a skeleton and defines joints of a tracked person~%~%# the same enum as defined in NiteCEnums.h of the Nite body tracker~%uint8 JOINT_HEAD = 0~%uint8 JOINT_NECK = 1~%uint8 JOINT_LEFT_SHOULDER = 2~%uint8 JOINT_RIGHT_SHOULDER = 3~%uint8 JOINT_LEFT_ELBOW = 4~%uint8 JOINT_RIGHT_ELBOW = 5~%uint8 JOINT_LEFT_HAND = 6~%uint8 JOINT_RIGHT_HAND = 7~%uint8 JOINT_TORSO = 8~%uint8 JOINT_LEFT_HIP = 9~%uint8 JOINT_RIGHT_HIP = 10~%uint8 JOINT_LEFT_KNEE = 11~%uint8 JOINT_RIGHT_KNEE = 12~%uint8 JOINT_LEFT_FOOT = 13~%uint8 JOINT_RIGHT_FOOT = 14~%uint8 JOINT_NUMBER = 15~%~%geometry_msgs/Pose[] joints~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Skeleton>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Skeleton>))
  "Converts a ROS message object to a list"
  (cl:list 'Skeleton
    (cl:cons ':joints (joints msg))
))
