; Auto-generated. Do not edit!


(cl:in-package cob_3d_mapping_msgs-msg)


;//! \htmlinclude CurvedPolygon.msg.html

(cl:defclass <CurvedPolygon> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (ID
    :reader ID
    :initarg :ID
    :type cl:integer
    :initform 0)
   (parameter
    :reader parameter
    :initarg :parameter
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0))
   (score
    :reader score
    :initarg :score
    :type (cl:vector cob_3d_mapping_msgs-msg:SimilarityScore)
   :initform (cl:make-array 0 :element-type 'cob_3d_mapping_msgs-msg:SimilarityScore :initial-element (cl:make-instance 'cob_3d_mapping_msgs-msg:SimilarityScore)))
   (polyline
    :reader polyline
    :initarg :polyline
    :type (cl:vector cob_3d_mapping_msgs-msg:PolylinePoint)
   :initform (cl:make-array 0 :element-type 'cob_3d_mapping_msgs-msg:PolylinePoint :initial-element (cl:make-instance 'cob_3d_mapping_msgs-msg:PolylinePoint)))
   (features
    :reader features
    :initarg :features
    :type (cl:vector cob_3d_mapping_msgs-msg:Feature)
   :initform (cl:make-array 0 :element-type 'cob_3d_mapping_msgs-msg:Feature :initial-element (cl:make-instance 'cob_3d_mapping_msgs-msg:Feature)))
   (energy
    :reader energy
    :initarg :energy
    :type cl:string
    :initform "")
   (weight
    :reader weight
    :initarg :weight
    :type cl:float
    :initform 0.0))
)

(cl:defclass CurvedPolygon (<CurvedPolygon>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CurvedPolygon>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CurvedPolygon)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_3d_mapping_msgs-msg:<CurvedPolygon> is deprecated: use cob_3d_mapping_msgs-msg:CurvedPolygon instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <CurvedPolygon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:stamp-val is deprecated.  Use cob_3d_mapping_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'ID-val :lambda-list '(m))
(cl:defmethod ID-val ((m <CurvedPolygon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:ID-val is deprecated.  Use cob_3d_mapping_msgs-msg:ID instead.")
  (ID m))

(cl:ensure-generic-function 'parameter-val :lambda-list '(m))
(cl:defmethod parameter-val ((m <CurvedPolygon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:parameter-val is deprecated.  Use cob_3d_mapping_msgs-msg:parameter instead.")
  (parameter m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <CurvedPolygon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:score-val is deprecated.  Use cob_3d_mapping_msgs-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'polyline-val :lambda-list '(m))
(cl:defmethod polyline-val ((m <CurvedPolygon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:polyline-val is deprecated.  Use cob_3d_mapping_msgs-msg:polyline instead.")
  (polyline m))

(cl:ensure-generic-function 'features-val :lambda-list '(m))
(cl:defmethod features-val ((m <CurvedPolygon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:features-val is deprecated.  Use cob_3d_mapping_msgs-msg:features instead.")
  (features m))

(cl:ensure-generic-function 'energy-val :lambda-list '(m))
(cl:defmethod energy-val ((m <CurvedPolygon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:energy-val is deprecated.  Use cob_3d_mapping_msgs-msg:energy instead.")
  (energy m))

(cl:ensure-generic-function 'weight-val :lambda-list '(m))
(cl:defmethod weight-val ((m <CurvedPolygon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:weight-val is deprecated.  Use cob_3d_mapping_msgs-msg:weight instead.")
  (weight m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CurvedPolygon>) ostream)
  "Serializes a message object of type '<CurvedPolygon>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ID)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'parameter))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'score))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'score))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'polyline))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'polyline))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'features))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'features))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'energy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'energy))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'weight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CurvedPolygon>) istream)
  "Deserializes a message object of type '<CurvedPolygon>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'ID)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'parameter) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'parameter)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'score) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'score)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'cob_3d_mapping_msgs-msg:SimilarityScore))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'polyline) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'polyline)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'cob_3d_mapping_msgs-msg:PolylinePoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'features) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'features)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'cob_3d_mapping_msgs-msg:Feature))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'energy) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'energy) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'weight) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CurvedPolygon>)))
  "Returns string type for a message object of type '<CurvedPolygon>"
  "cob_3d_mapping_msgs/CurvedPolygon")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CurvedPolygon)))
  "Returns string type for a message object of type 'CurvedPolygon"
  "cob_3d_mapping_msgs/CurvedPolygon")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CurvedPolygon>)))
  "Returns md5sum for a message object of type '<CurvedPolygon>"
  "44b9c6adf55085288b1561faf0dcdb6d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CurvedPolygon)))
  "Returns md5sum for a message object of type 'CurvedPolygon"
  "44b9c6adf55085288b1561faf0dcdb6d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CurvedPolygon>)))
  "Returns full string definition for message of type '<CurvedPolygon>"
  (cl:format cl:nil "time stamp~%uint32 ID~%float32[6] parameter~%#float32[][3] polyline~%SimilarityScore[] score~%PolylinePoint[] polyline~%Feature[] features~%string energy~%float32 weight~%~%================================================================================~%MSG: cob_3d_mapping_msgs/SimilarityScore~%uint32 ID~%float32 prob~%================================================================================~%MSG: cob_3d_mapping_msgs/PolylinePoint~%float32 x~%float32 y~%float32 edge_prob~%================================================================================~%MSG: cob_3d_mapping_msgs/Feature~%float32 x~%float32 y~%float32 z~%uint32 ID~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CurvedPolygon)))
  "Returns full string definition for message of type 'CurvedPolygon"
  (cl:format cl:nil "time stamp~%uint32 ID~%float32[6] parameter~%#float32[][3] polyline~%SimilarityScore[] score~%PolylinePoint[] polyline~%Feature[] features~%string energy~%float32 weight~%~%================================================================================~%MSG: cob_3d_mapping_msgs/SimilarityScore~%uint32 ID~%float32 prob~%================================================================================~%MSG: cob_3d_mapping_msgs/PolylinePoint~%float32 x~%float32 y~%float32 edge_prob~%================================================================================~%MSG: cob_3d_mapping_msgs/Feature~%float32 x~%float32 y~%float32 z~%uint32 ID~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CurvedPolygon>))
  (cl:+ 0
     8
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'parameter) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'score) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'polyline) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'features) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'energy))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CurvedPolygon>))
  "Converts a ROS message object to a list"
  (cl:list 'CurvedPolygon
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':ID (ID msg))
    (cl:cons ':parameter (parameter msg))
    (cl:cons ':score (score msg))
    (cl:cons ':polyline (polyline msg))
    (cl:cons ':features (features msg))
    (cl:cons ':energy (energy msg))
    (cl:cons ':weight (weight msg))
))
