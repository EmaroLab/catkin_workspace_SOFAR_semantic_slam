; Auto-generated. Do not edit!


(cl:in-package cob_3d_mapping_msgs-msg)


;//! \htmlinclude CurvedPolygonArray.msg.html

(cl:defclass <CurvedPolygonArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (polygons
    :reader polygons
    :initarg :polygons
    :type (cl:vector cob_3d_mapping_msgs-msg:CurvedPolygon)
   :initform (cl:make-array 0 :element-type 'cob_3d_mapping_msgs-msg:CurvedPolygon :initial-element (cl:make-instance 'cob_3d_mapping_msgs-msg:CurvedPolygon))))
)

(cl:defclass CurvedPolygonArray (<CurvedPolygonArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CurvedPolygonArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CurvedPolygonArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_3d_mapping_msgs-msg:<CurvedPolygonArray> is deprecated: use cob_3d_mapping_msgs-msg:CurvedPolygonArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CurvedPolygonArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:header-val is deprecated.  Use cob_3d_mapping_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'polygons-val :lambda-list '(m))
(cl:defmethod polygons-val ((m <CurvedPolygonArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:polygons-val is deprecated.  Use cob_3d_mapping_msgs-msg:polygons instead.")
  (polygons m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CurvedPolygonArray>) ostream)
  "Serializes a message object of type '<CurvedPolygonArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'polygons))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'polygons))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CurvedPolygonArray>) istream)
  "Deserializes a message object of type '<CurvedPolygonArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'polygons) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'polygons)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'cob_3d_mapping_msgs-msg:CurvedPolygon))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CurvedPolygonArray>)))
  "Returns string type for a message object of type '<CurvedPolygonArray>"
  "cob_3d_mapping_msgs/CurvedPolygonArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CurvedPolygonArray)))
  "Returns string type for a message object of type 'CurvedPolygonArray"
  "cob_3d_mapping_msgs/CurvedPolygonArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CurvedPolygonArray>)))
  "Returns md5sum for a message object of type '<CurvedPolygonArray>"
  "dca7a231f0d66f77a98e4e50cf3157dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CurvedPolygonArray)))
  "Returns md5sum for a message object of type 'CurvedPolygonArray"
  "dca7a231f0d66f77a98e4e50cf3157dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CurvedPolygonArray>)))
  "Returns full string definition for message of type '<CurvedPolygonArray>"
  (cl:format cl:nil "Header header~%CurvedPolygon[] polygons~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: cob_3d_mapping_msgs/CurvedPolygon~%time stamp~%uint32 ID~%float32[6] parameter~%#float32[][3] polyline~%SimilarityScore[] score~%PolylinePoint[] polyline~%Feature[] features~%string energy~%float32 weight~%~%================================================================================~%MSG: cob_3d_mapping_msgs/SimilarityScore~%uint32 ID~%float32 prob~%================================================================================~%MSG: cob_3d_mapping_msgs/PolylinePoint~%float32 x~%float32 y~%float32 edge_prob~%================================================================================~%MSG: cob_3d_mapping_msgs/Feature~%float32 x~%float32 y~%float32 z~%uint32 ID~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CurvedPolygonArray)))
  "Returns full string definition for message of type 'CurvedPolygonArray"
  (cl:format cl:nil "Header header~%CurvedPolygon[] polygons~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: cob_3d_mapping_msgs/CurvedPolygon~%time stamp~%uint32 ID~%float32[6] parameter~%#float32[][3] polyline~%SimilarityScore[] score~%PolylinePoint[] polyline~%Feature[] features~%string energy~%float32 weight~%~%================================================================================~%MSG: cob_3d_mapping_msgs/SimilarityScore~%uint32 ID~%float32 prob~%================================================================================~%MSG: cob_3d_mapping_msgs/PolylinePoint~%float32 x~%float32 y~%float32 edge_prob~%================================================================================~%MSG: cob_3d_mapping_msgs/Feature~%float32 x~%float32 y~%float32 z~%uint32 ID~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CurvedPolygonArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'polygons) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CurvedPolygonArray>))
  "Converts a ROS message object to a list"
  (cl:list 'CurvedPolygonArray
    (cl:cons ':header (header msg))
    (cl:cons ':polygons (polygons msg))
))
