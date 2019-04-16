; Auto-generated. Do not edit!


(cl:in-package cob_object_detection_msgs-srv)


;//! \htmlinclude BaTestEnvironment-request.msg.html

(cl:defclass <BaTestEnvironment-request> (roslisp-msg-protocol:ros-message)
  ((number_points
    :reader number_points
    :initarg :number_points
    :type cl:integer
    :initform 0)
   (frame_view_number
    :reader frame_view_number
    :initarg :frame_view_number
    :type cl:float
    :initform 0.0)
   (cone_points_per_plane
    :reader cone_points_per_plane
    :initarg :cone_points_per_plane
    :type cl:float
    :initform 0.0)
   (limit_error_matching
    :reader limit_error_matching
    :initarg :limit_error_matching
    :type cl:float
    :initform 0.0)
   (ba_kernel_param
    :reader ba_kernel_param
    :initarg :ba_kernel_param
    :type cl:float
    :initform 0.0)
   (ba_num_iter
    :reader ba_num_iter
    :initarg :ba_num_iter
    :type cl:integer
    :initform 0)
   (ba_initial_mu
    :reader ba_initial_mu
    :initarg :ba_initial_mu
    :type cl:float
    :initform 0.0)
   (ba_final_mu_factor
    :reader ba_final_mu_factor
    :initarg :ba_final_mu_factor
    :type cl:float
    :initform 0.0)
   (ba_tau
    :reader ba_tau
    :initarg :ba_tau
    :type cl:float
    :initform 0.0)
   (angle_sigma_degree
    :reader angle_sigma_degree
    :initarg :angle_sigma_degree
    :type cl:float
    :initform 0.0)
   (translate_sigma_m
    :reader translate_sigma_m
    :initarg :translate_sigma_m
    :type cl:float
    :initform 0.0)
   (obs_point_sigma_m
    :reader obs_point_sigma_m
    :initarg :obs_point_sigma_m
    :type cl:float
    :initform 0.0)
   (world_point_sigma_m
    :reader world_point_sigma_m
    :initarg :world_point_sigma_m
    :type cl:float
    :initform 0.0))
)

(cl:defclass BaTestEnvironment-request (<BaTestEnvironment-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BaTestEnvironment-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BaTestEnvironment-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_object_detection_msgs-srv:<BaTestEnvironment-request> is deprecated: use cob_object_detection_msgs-srv:BaTestEnvironment-request instead.")))

(cl:ensure-generic-function 'number_points-val :lambda-list '(m))
(cl:defmethod number_points-val ((m <BaTestEnvironment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_object_detection_msgs-srv:number_points-val is deprecated.  Use cob_object_detection_msgs-srv:number_points instead.")
  (number_points m))

(cl:ensure-generic-function 'frame_view_number-val :lambda-list '(m))
(cl:defmethod frame_view_number-val ((m <BaTestEnvironment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_object_detection_msgs-srv:frame_view_number-val is deprecated.  Use cob_object_detection_msgs-srv:frame_view_number instead.")
  (frame_view_number m))

(cl:ensure-generic-function 'cone_points_per_plane-val :lambda-list '(m))
(cl:defmethod cone_points_per_plane-val ((m <BaTestEnvironment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_object_detection_msgs-srv:cone_points_per_plane-val is deprecated.  Use cob_object_detection_msgs-srv:cone_points_per_plane instead.")
  (cone_points_per_plane m))

(cl:ensure-generic-function 'limit_error_matching-val :lambda-list '(m))
(cl:defmethod limit_error_matching-val ((m <BaTestEnvironment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_object_detection_msgs-srv:limit_error_matching-val is deprecated.  Use cob_object_detection_msgs-srv:limit_error_matching instead.")
  (limit_error_matching m))

(cl:ensure-generic-function 'ba_kernel_param-val :lambda-list '(m))
(cl:defmethod ba_kernel_param-val ((m <BaTestEnvironment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_object_detection_msgs-srv:ba_kernel_param-val is deprecated.  Use cob_object_detection_msgs-srv:ba_kernel_param instead.")
  (ba_kernel_param m))

(cl:ensure-generic-function 'ba_num_iter-val :lambda-list '(m))
(cl:defmethod ba_num_iter-val ((m <BaTestEnvironment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_object_detection_msgs-srv:ba_num_iter-val is deprecated.  Use cob_object_detection_msgs-srv:ba_num_iter instead.")
  (ba_num_iter m))

(cl:ensure-generic-function 'ba_initial_mu-val :lambda-list '(m))
(cl:defmethod ba_initial_mu-val ((m <BaTestEnvironment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_object_detection_msgs-srv:ba_initial_mu-val is deprecated.  Use cob_object_detection_msgs-srv:ba_initial_mu instead.")
  (ba_initial_mu m))

(cl:ensure-generic-function 'ba_final_mu_factor-val :lambda-list '(m))
(cl:defmethod ba_final_mu_factor-val ((m <BaTestEnvironment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_object_detection_msgs-srv:ba_final_mu_factor-val is deprecated.  Use cob_object_detection_msgs-srv:ba_final_mu_factor instead.")
  (ba_final_mu_factor m))

(cl:ensure-generic-function 'ba_tau-val :lambda-list '(m))
(cl:defmethod ba_tau-val ((m <BaTestEnvironment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_object_detection_msgs-srv:ba_tau-val is deprecated.  Use cob_object_detection_msgs-srv:ba_tau instead.")
  (ba_tau m))

(cl:ensure-generic-function 'angle_sigma_degree-val :lambda-list '(m))
(cl:defmethod angle_sigma_degree-val ((m <BaTestEnvironment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_object_detection_msgs-srv:angle_sigma_degree-val is deprecated.  Use cob_object_detection_msgs-srv:angle_sigma_degree instead.")
  (angle_sigma_degree m))

(cl:ensure-generic-function 'translate_sigma_m-val :lambda-list '(m))
(cl:defmethod translate_sigma_m-val ((m <BaTestEnvironment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_object_detection_msgs-srv:translate_sigma_m-val is deprecated.  Use cob_object_detection_msgs-srv:translate_sigma_m instead.")
  (translate_sigma_m m))

(cl:ensure-generic-function 'obs_point_sigma_m-val :lambda-list '(m))
(cl:defmethod obs_point_sigma_m-val ((m <BaTestEnvironment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_object_detection_msgs-srv:obs_point_sigma_m-val is deprecated.  Use cob_object_detection_msgs-srv:obs_point_sigma_m instead.")
  (obs_point_sigma_m m))

(cl:ensure-generic-function 'world_point_sigma_m-val :lambda-list '(m))
(cl:defmethod world_point_sigma_m-val ((m <BaTestEnvironment-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_object_detection_msgs-srv:world_point_sigma_m-val is deprecated.  Use cob_object_detection_msgs-srv:world_point_sigma_m instead.")
  (world_point_sigma_m m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BaTestEnvironment-request>) ostream)
  "Serializes a message object of type '<BaTestEnvironment-request>"
  (cl:let* ((signed (cl:slot-value msg 'number_points)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'frame_view_number))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cone_points_per_plane))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'limit_error_matching))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ba_kernel_param))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'ba_num_iter)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ba_initial_mu))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ba_final_mu_factor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ba_tau))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle_sigma_degree))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'translate_sigma_m))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'obs_point_sigma_m))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'world_point_sigma_m))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BaTestEnvironment-request>) istream)
  "Deserializes a message object of type '<BaTestEnvironment-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'number_points) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'frame_view_number) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cone_points_per_plane) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'limit_error_matching) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ba_kernel_param) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ba_num_iter) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ba_initial_mu) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ba_final_mu_factor) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ba_tau) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle_sigma_degree) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'translate_sigma_m) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'obs_point_sigma_m) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'world_point_sigma_m) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BaTestEnvironment-request>)))
  "Returns string type for a service object of type '<BaTestEnvironment-request>"
  "cob_object_detection_msgs/BaTestEnvironmentRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BaTestEnvironment-request)))
  "Returns string type for a service object of type 'BaTestEnvironment-request"
  "cob_object_detection_msgs/BaTestEnvironmentRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BaTestEnvironment-request>)))
  "Returns md5sum for a message object of type '<BaTestEnvironment-request>"
  "e3abe6b136e84d507dcba74e019ba61e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BaTestEnvironment-request)))
  "Returns md5sum for a message object of type 'BaTestEnvironment-request"
  "e3abe6b136e84d507dcba74e019ba61e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BaTestEnvironment-request>)))
  "Returns full string definition for message of type '<BaTestEnvironment-request>"
  (cl:format cl:nil "~%~%int32 number_points~%float32 frame_view_number~%float32 cone_points_per_plane~%~%~%float32 limit_error_matching~%~%float32 ba_kernel_param~%int32 ba_num_iter~%float32 ba_initial_mu~%float32 ba_final_mu_factor~%float32 ba_tau~%~%float32 angle_sigma_degree~%float32 translate_sigma_m~%float32 obs_point_sigma_m~%float32 world_point_sigma_m~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BaTestEnvironment-request)))
  "Returns full string definition for message of type 'BaTestEnvironment-request"
  (cl:format cl:nil "~%~%int32 number_points~%float32 frame_view_number~%float32 cone_points_per_plane~%~%~%float32 limit_error_matching~%~%float32 ba_kernel_param~%int32 ba_num_iter~%float32 ba_initial_mu~%float32 ba_final_mu_factor~%float32 ba_tau~%~%float32 angle_sigma_degree~%float32 translate_sigma_m~%float32 obs_point_sigma_m~%float32 world_point_sigma_m~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BaTestEnvironment-request>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BaTestEnvironment-request>))
  "Converts a ROS message object to a list"
  (cl:list 'BaTestEnvironment-request
    (cl:cons ':number_points (number_points msg))
    (cl:cons ':frame_view_number (frame_view_number msg))
    (cl:cons ':cone_points_per_plane (cone_points_per_plane msg))
    (cl:cons ':limit_error_matching (limit_error_matching msg))
    (cl:cons ':ba_kernel_param (ba_kernel_param msg))
    (cl:cons ':ba_num_iter (ba_num_iter msg))
    (cl:cons ':ba_initial_mu (ba_initial_mu msg))
    (cl:cons ':ba_final_mu_factor (ba_final_mu_factor msg))
    (cl:cons ':ba_tau (ba_tau msg))
    (cl:cons ':angle_sigma_degree (angle_sigma_degree msg))
    (cl:cons ':translate_sigma_m (translate_sigma_m msg))
    (cl:cons ':obs_point_sigma_m (obs_point_sigma_m msg))
    (cl:cons ':world_point_sigma_m (world_point_sigma_m msg))
))
;//! \htmlinclude BaTestEnvironment-response.msg.html

(cl:defclass <BaTestEnvironment-response> (roslisp-msg-protocol:ros-message)
  ((mean_error
    :reader mean_error
    :initarg :mean_error
    :type cl:float
    :initform 0.0)
   (std_dev
    :reader std_dev
    :initarg :std_dev
    :type cl:float
    :initform 0.0)
   (min_error
    :reader min_error
    :initarg :min_error
    :type cl:float
    :initform 0.0)
   (max_error
    :reader max_error
    :initarg :max_error
    :type cl:float
    :initform 0.0)
   (runs_count
    :reader runs_count
    :initarg :runs_count
    :type cl:float
    :initform 0.0)
   (runs_sum
    :reader runs_sum
    :initarg :runs_sum
    :type cl:float
    :initform 0.0)
   (runs_sum2
    :reader runs_sum2
    :initarg :runs_sum2
    :type cl:float
    :initform 0.0)
   (time_duration
    :reader time_duration
    :initarg :time_duration
    :type cl:float
    :initform 0.0)
   (observations
    :reader observations
    :initarg :observations
    :type cl:integer
    :initform 0)
   (false_matchings
    :reader false_matchings
    :initarg :false_matchings
    :type cl:integer
    :initform 0)
   (result
    :reader result
    :initarg :result
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass BaTestEnvironment-response (<BaTestEnvironment-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BaTestEnvironment-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BaTestEnvironment-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_object_detection_msgs-srv:<BaTestEnvironment-response> is deprecated: use cob_object_detection_msgs-srv:BaTestEnvironment-response instead.")))

(cl:ensure-generic-function 'mean_error-val :lambda-list '(m))
(cl:defmethod mean_error-val ((m <BaTestEnvironment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_object_detection_msgs-srv:mean_error-val is deprecated.  Use cob_object_detection_msgs-srv:mean_error instead.")
  (mean_error m))

(cl:ensure-generic-function 'std_dev-val :lambda-list '(m))
(cl:defmethod std_dev-val ((m <BaTestEnvironment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_object_detection_msgs-srv:std_dev-val is deprecated.  Use cob_object_detection_msgs-srv:std_dev instead.")
  (std_dev m))

(cl:ensure-generic-function 'min_error-val :lambda-list '(m))
(cl:defmethod min_error-val ((m <BaTestEnvironment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_object_detection_msgs-srv:min_error-val is deprecated.  Use cob_object_detection_msgs-srv:min_error instead.")
  (min_error m))

(cl:ensure-generic-function 'max_error-val :lambda-list '(m))
(cl:defmethod max_error-val ((m <BaTestEnvironment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_object_detection_msgs-srv:max_error-val is deprecated.  Use cob_object_detection_msgs-srv:max_error instead.")
  (max_error m))

(cl:ensure-generic-function 'runs_count-val :lambda-list '(m))
(cl:defmethod runs_count-val ((m <BaTestEnvironment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_object_detection_msgs-srv:runs_count-val is deprecated.  Use cob_object_detection_msgs-srv:runs_count instead.")
  (runs_count m))

(cl:ensure-generic-function 'runs_sum-val :lambda-list '(m))
(cl:defmethod runs_sum-val ((m <BaTestEnvironment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_object_detection_msgs-srv:runs_sum-val is deprecated.  Use cob_object_detection_msgs-srv:runs_sum instead.")
  (runs_sum m))

(cl:ensure-generic-function 'runs_sum2-val :lambda-list '(m))
(cl:defmethod runs_sum2-val ((m <BaTestEnvironment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_object_detection_msgs-srv:runs_sum2-val is deprecated.  Use cob_object_detection_msgs-srv:runs_sum2 instead.")
  (runs_sum2 m))

(cl:ensure-generic-function 'time_duration-val :lambda-list '(m))
(cl:defmethod time_duration-val ((m <BaTestEnvironment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_object_detection_msgs-srv:time_duration-val is deprecated.  Use cob_object_detection_msgs-srv:time_duration instead.")
  (time_duration m))

(cl:ensure-generic-function 'observations-val :lambda-list '(m))
(cl:defmethod observations-val ((m <BaTestEnvironment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_object_detection_msgs-srv:observations-val is deprecated.  Use cob_object_detection_msgs-srv:observations instead.")
  (observations m))

(cl:ensure-generic-function 'false_matchings-val :lambda-list '(m))
(cl:defmethod false_matchings-val ((m <BaTestEnvironment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_object_detection_msgs-srv:false_matchings-val is deprecated.  Use cob_object_detection_msgs-srv:false_matchings instead.")
  (false_matchings m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <BaTestEnvironment-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_object_detection_msgs-srv:result-val is deprecated.  Use cob_object_detection_msgs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BaTestEnvironment-response>) ostream)
  "Serializes a message object of type '<BaTestEnvironment-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mean_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'std_dev))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'min_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_error))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'runs_count))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'runs_sum))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'runs_sum2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time_duration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'observations)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'false_matchings)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'result) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BaTestEnvironment-response>) istream)
  "Deserializes a message object of type '<BaTestEnvironment-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mean_error) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'std_dev) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_error) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_error) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'runs_count) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'runs_sum) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'runs_sum2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time_duration) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'observations) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'false_matchings) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'result) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BaTestEnvironment-response>)))
  "Returns string type for a service object of type '<BaTestEnvironment-response>"
  "cob_object_detection_msgs/BaTestEnvironmentResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BaTestEnvironment-response)))
  "Returns string type for a service object of type 'BaTestEnvironment-response"
  "cob_object_detection_msgs/BaTestEnvironmentResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BaTestEnvironment-response>)))
  "Returns md5sum for a message object of type '<BaTestEnvironment-response>"
  "e3abe6b136e84d507dcba74e019ba61e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BaTestEnvironment-response)))
  "Returns md5sum for a message object of type 'BaTestEnvironment-response"
  "e3abe6b136e84d507dcba74e019ba61e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BaTestEnvironment-response>)))
  "Returns full string definition for message of type '<BaTestEnvironment-response>"
  (cl:format cl:nil "float32 mean_error~%float32 std_dev~%float32 min_error~%float32 max_error~%float32 runs_count~%float32 runs_sum~%float32 runs_sum2~%~%float32 time_duration~%int32 observations~%int32 false_matchings~%~%std_msgs/String result~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BaTestEnvironment-response)))
  "Returns full string definition for message of type 'BaTestEnvironment-response"
  (cl:format cl:nil "float32 mean_error~%float32 std_dev~%float32 min_error~%float32 max_error~%float32 runs_count~%float32 runs_sum~%float32 runs_sum2~%~%float32 time_duration~%int32 observations~%int32 false_matchings~%~%std_msgs/String result~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BaTestEnvironment-response>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BaTestEnvironment-response>))
  "Converts a ROS message object to a list"
  (cl:list 'BaTestEnvironment-response
    (cl:cons ':mean_error (mean_error msg))
    (cl:cons ':std_dev (std_dev msg))
    (cl:cons ':min_error (min_error msg))
    (cl:cons ':max_error (max_error msg))
    (cl:cons ':runs_count (runs_count msg))
    (cl:cons ':runs_sum (runs_sum msg))
    (cl:cons ':runs_sum2 (runs_sum2 msg))
    (cl:cons ':time_duration (time_duration msg))
    (cl:cons ':observations (observations msg))
    (cl:cons ':false_matchings (false_matchings msg))
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'BaTestEnvironment)))
  'BaTestEnvironment-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'BaTestEnvironment)))
  'BaTestEnvironment-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BaTestEnvironment)))
  "Returns string type for a service object of type '<BaTestEnvironment>"
  "cob_object_detection_msgs/BaTestEnvironment")