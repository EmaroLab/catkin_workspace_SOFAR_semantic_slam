; Auto-generated. Do not edit!


(cl:in-package cob_3d_mapping_msgs-msg)


;//! \htmlinclude Polygon.msg.html

(cl:defclass <Polygon> (roslisp-msg-protocol:ros-message)
  ((points
    :reader points
    :initarg :points
    :type (cl:vector cob_3d_mapping_msgs-msg:Point2D)
   :initform (cl:make-array 0 :element-type 'cob_3d_mapping_msgs-msg:Point2D :initial-element (cl:make-instance 'cob_3d_mapping_msgs-msg:Point2D))))
)

(cl:defclass Polygon (<Polygon>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Polygon>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Polygon)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_3d_mapping_msgs-msg:<Polygon> is deprecated: use cob_3d_mapping_msgs-msg:Polygon instead.")))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <Polygon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:points-val is deprecated.  Use cob_3d_mapping_msgs-msg:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Polygon>) ostream)
  "Serializes a message object of type '<Polygon>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Polygon>) istream)
  "Deserializes a message object of type '<Polygon>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'cob_3d_mapping_msgs-msg:Point2D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Polygon>)))
  "Returns string type for a message object of type '<Polygon>"
  "cob_3d_mapping_msgs/Polygon")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Polygon)))
  "Returns string type for a message object of type 'Polygon"
  "cob_3d_mapping_msgs/Polygon")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Polygon>)))
  "Returns md5sum for a message object of type '<Polygon>"
  "cb7dcdfd4dd77d10f2403c82af407d79")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Polygon)))
  "Returns md5sum for a message object of type 'Polygon"
  "cb7dcdfd4dd77d10f2403c82af407d79")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Polygon>)))
  "Returns full string definition for message of type '<Polygon>"
  (cl:format cl:nil "#points describing polygon~%Point2D[] points~%~%================================================================================~%MSG: cob_3d_mapping_msgs/Point2D~%#coordinate on surface~%float32 x~%float32 y~%~%#texture cooridante~%float32 tex_x~%float32 tex_y~%~%float32 var~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Polygon)))
  "Returns full string definition for message of type 'Polygon"
  (cl:format cl:nil "#points describing polygon~%Point2D[] points~%~%================================================================================~%MSG: cob_3d_mapping_msgs/Point2D~%#coordinate on surface~%float32 x~%float32 y~%~%#texture cooridante~%float32 tex_x~%float32 tex_y~%~%float32 var~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Polygon>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Polygon>))
  "Converts a ROS message object to a list"
  (cl:list 'Polygon
    (cl:cons ':points (points msg))
))
