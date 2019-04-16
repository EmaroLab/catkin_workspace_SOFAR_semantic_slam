; Auto-generated. Do not edit!


(cl:in-package cob_perception_msgs-msg)


;//! \htmlinclude PersonStamped.msg.html

(cl:defclass <PersonStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (person
    :reader person
    :initarg :person
    :type cob_perception_msgs-msg:Person
    :initform (cl:make-instance 'cob_perception_msgs-msg:Person)))
)

(cl:defclass PersonStamped (<PersonStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PersonStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PersonStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_perception_msgs-msg:<PersonStamped> is deprecated: use cob_perception_msgs-msg:PersonStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PersonStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_perception_msgs-msg:header-val is deprecated.  Use cob_perception_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'person-val :lambda-list '(m))
(cl:defmethod person-val ((m <PersonStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_perception_msgs-msg:person-val is deprecated.  Use cob_perception_msgs-msg:person instead.")
  (person m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PersonStamped>) ostream)
  "Serializes a message object of type '<PersonStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'person) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PersonStamped>) istream)
  "Deserializes a message object of type '<PersonStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'person) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PersonStamped>)))
  "Returns string type for a message object of type '<PersonStamped>"
  "cob_perception_msgs/PersonStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PersonStamped)))
  "Returns string type for a message object of type 'PersonStamped"
  "cob_perception_msgs/PersonStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PersonStamped>)))
  "Returns md5sum for a message object of type '<PersonStamped>"
  "08b504f30560aab069643e77a4cb4556")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PersonStamped)))
  "Returns md5sum for a message object of type 'PersonStamped"
  "08b504f30560aab069643e77a4cb4556")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PersonStamped>)))
  "Returns full string definition for message of type '<PersonStamped>"
  (cl:format cl:nil "# origin from  url = https://github.com/wg-perception/people/tree/hydro-devel/people_msgs~%~%Header header~%cob_perception_msgs/Person person~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: cob_perception_msgs/Person~%#This message is used to describe a person~% ~%string              name				#id of a person~%string              detector			#used device for detection (scan, camera)~%geometry_msgs/Pose  position			#position in space~%geometry_msgs/Point velocity			#speed~%~%cob_perception_msgs/Skeleton skeleton	#assigned skeleton to a tracked person~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: cob_perception_msgs/Skeleton~%# This messages is used to describe a skeleton and defines joints of a tracked person~%~%# the same enum as defined in NiteCEnums.h of the Nite body tracker~%uint8 JOINT_HEAD = 0~%uint8 JOINT_NECK = 1~%uint8 JOINT_LEFT_SHOULDER = 2~%uint8 JOINT_RIGHT_SHOULDER = 3~%uint8 JOINT_LEFT_ELBOW = 4~%uint8 JOINT_RIGHT_ELBOW = 5~%uint8 JOINT_LEFT_HAND = 6~%uint8 JOINT_RIGHT_HAND = 7~%uint8 JOINT_TORSO = 8~%uint8 JOINT_LEFT_HIP = 9~%uint8 JOINT_RIGHT_HIP = 10~%uint8 JOINT_LEFT_KNEE = 11~%uint8 JOINT_RIGHT_KNEE = 12~%uint8 JOINT_LEFT_FOOT = 13~%uint8 JOINT_RIGHT_FOOT = 14~%uint8 JOINT_NUMBER = 15~%~%geometry_msgs/Pose[] joints~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PersonStamped)))
  "Returns full string definition for message of type 'PersonStamped"
  (cl:format cl:nil "# origin from  url = https://github.com/wg-perception/people/tree/hydro-devel/people_msgs~%~%Header header~%cob_perception_msgs/Person person~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: cob_perception_msgs/Person~%#This message is used to describe a person~% ~%string              name				#id of a person~%string              detector			#used device for detection (scan, camera)~%geometry_msgs/Pose  position			#position in space~%geometry_msgs/Point velocity			#speed~%~%cob_perception_msgs/Skeleton skeleton	#assigned skeleton to a tracked person~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: cob_perception_msgs/Skeleton~%# This messages is used to describe a skeleton and defines joints of a tracked person~%~%# the same enum as defined in NiteCEnums.h of the Nite body tracker~%uint8 JOINT_HEAD = 0~%uint8 JOINT_NECK = 1~%uint8 JOINT_LEFT_SHOULDER = 2~%uint8 JOINT_RIGHT_SHOULDER = 3~%uint8 JOINT_LEFT_ELBOW = 4~%uint8 JOINT_RIGHT_ELBOW = 5~%uint8 JOINT_LEFT_HAND = 6~%uint8 JOINT_RIGHT_HAND = 7~%uint8 JOINT_TORSO = 8~%uint8 JOINT_LEFT_HIP = 9~%uint8 JOINT_RIGHT_HIP = 10~%uint8 JOINT_LEFT_KNEE = 11~%uint8 JOINT_RIGHT_KNEE = 12~%uint8 JOINT_LEFT_FOOT = 13~%uint8 JOINT_RIGHT_FOOT = 14~%uint8 JOINT_NUMBER = 15~%~%geometry_msgs/Pose[] joints~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PersonStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'person))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PersonStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'PersonStamped
    (cl:cons ':header (header msg))
    (cl:cons ':person (person msg))
))
