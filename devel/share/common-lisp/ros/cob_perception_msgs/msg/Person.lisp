; Auto-generated. Do not edit!


(cl:in-package cob_perception_msgs-msg)


;//! \htmlinclude Person.msg.html

(cl:defclass <Person> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (detector
    :reader detector
    :initarg :detector
    :type cl:string
    :initform "")
   (position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (velocity
    :reader velocity
    :initarg :velocity
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (skeleton
    :reader skeleton
    :initarg :skeleton
    :type cob_perception_msgs-msg:Skeleton
    :initform (cl:make-instance 'cob_perception_msgs-msg:Skeleton)))
)

(cl:defclass Person (<Person>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Person>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Person)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_perception_msgs-msg:<Person> is deprecated: use cob_perception_msgs-msg:Person instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Person>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_perception_msgs-msg:name-val is deprecated.  Use cob_perception_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'detector-val :lambda-list '(m))
(cl:defmethod detector-val ((m <Person>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_perception_msgs-msg:detector-val is deprecated.  Use cob_perception_msgs-msg:detector instead.")
  (detector m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <Person>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_perception_msgs-msg:position-val is deprecated.  Use cob_perception_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <Person>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_perception_msgs-msg:velocity-val is deprecated.  Use cob_perception_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'skeleton-val :lambda-list '(m))
(cl:defmethod skeleton-val ((m <Person>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_perception_msgs-msg:skeleton-val is deprecated.  Use cob_perception_msgs-msg:skeleton instead.")
  (skeleton m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Person>) ostream)
  "Serializes a message object of type '<Person>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'detector))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'detector))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'skeleton) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Person>) istream)
  "Deserializes a message object of type '<Person>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'detector) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'detector) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'skeleton) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Person>)))
  "Returns string type for a message object of type '<Person>"
  "cob_perception_msgs/Person")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Person)))
  "Returns string type for a message object of type 'Person"
  "cob_perception_msgs/Person")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Person>)))
  "Returns md5sum for a message object of type '<Person>"
  "0726793e65e7420b1c7d52ed8e449b17")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Person)))
  "Returns md5sum for a message object of type 'Person"
  "0726793e65e7420b1c7d52ed8e449b17")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Person>)))
  "Returns full string definition for message of type '<Person>"
  (cl:format cl:nil "#This message is used to describe a person~% ~%string              name				#id of a person~%string              detector			#used device for detection (scan, camera)~%geometry_msgs/Pose  position			#position in space~%geometry_msgs/Point velocity			#speed~%~%cob_perception_msgs/Skeleton skeleton	#assigned skeleton to a tracked person~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: cob_perception_msgs/Skeleton~%# This messages is used to describe a skeleton and defines joints of a tracked person~%~%# the same enum as defined in NiteCEnums.h of the Nite body tracker~%uint8 JOINT_HEAD = 0~%uint8 JOINT_NECK = 1~%uint8 JOINT_LEFT_SHOULDER = 2~%uint8 JOINT_RIGHT_SHOULDER = 3~%uint8 JOINT_LEFT_ELBOW = 4~%uint8 JOINT_RIGHT_ELBOW = 5~%uint8 JOINT_LEFT_HAND = 6~%uint8 JOINT_RIGHT_HAND = 7~%uint8 JOINT_TORSO = 8~%uint8 JOINT_LEFT_HIP = 9~%uint8 JOINT_RIGHT_HIP = 10~%uint8 JOINT_LEFT_KNEE = 11~%uint8 JOINT_RIGHT_KNEE = 12~%uint8 JOINT_LEFT_FOOT = 13~%uint8 JOINT_RIGHT_FOOT = 14~%uint8 JOINT_NUMBER = 15~%~%geometry_msgs/Pose[] joints~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Person)))
  "Returns full string definition for message of type 'Person"
  (cl:format cl:nil "#This message is used to describe a person~% ~%string              name				#id of a person~%string              detector			#used device for detection (scan, camera)~%geometry_msgs/Pose  position			#position in space~%geometry_msgs/Point velocity			#speed~%~%cob_perception_msgs/Skeleton skeleton	#assigned skeleton to a tracked person~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: cob_perception_msgs/Skeleton~%# This messages is used to describe a skeleton and defines joints of a tracked person~%~%# the same enum as defined in NiteCEnums.h of the Nite body tracker~%uint8 JOINT_HEAD = 0~%uint8 JOINT_NECK = 1~%uint8 JOINT_LEFT_SHOULDER = 2~%uint8 JOINT_RIGHT_SHOULDER = 3~%uint8 JOINT_LEFT_ELBOW = 4~%uint8 JOINT_RIGHT_ELBOW = 5~%uint8 JOINT_LEFT_HAND = 6~%uint8 JOINT_RIGHT_HAND = 7~%uint8 JOINT_TORSO = 8~%uint8 JOINT_LEFT_HIP = 9~%uint8 JOINT_RIGHT_HIP = 10~%uint8 JOINT_LEFT_KNEE = 11~%uint8 JOINT_RIGHT_KNEE = 12~%uint8 JOINT_LEFT_FOOT = 13~%uint8 JOINT_RIGHT_FOOT = 14~%uint8 JOINT_NUMBER = 15~%~%geometry_msgs/Pose[] joints~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Person>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'detector))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'skeleton))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Person>))
  "Converts a ROS message object to a list"
  (cl:list 'Person
    (cl:cons ':name (name msg))
    (cl:cons ':detector (detector msg))
    (cl:cons ':position (position msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':skeleton (skeleton msg))
))
