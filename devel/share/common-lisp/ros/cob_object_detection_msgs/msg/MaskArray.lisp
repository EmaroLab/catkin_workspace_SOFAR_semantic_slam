; Auto-generated. Do not edit!


(cl:in-package cob_object_detection_msgs-msg)


;//! \htmlinclude MaskArray.msg.html

(cl:defclass <MaskArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (masks
    :reader masks
    :initarg :masks
    :type (cl:vector cob_object_detection_msgs-msg:Mask)
   :initform (cl:make-array 0 :element-type 'cob_object_detection_msgs-msg:Mask :initial-element (cl:make-instance 'cob_object_detection_msgs-msg:Mask))))
)

(cl:defclass MaskArray (<MaskArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MaskArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MaskArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_object_detection_msgs-msg:<MaskArray> is deprecated: use cob_object_detection_msgs-msg:MaskArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MaskArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_object_detection_msgs-msg:header-val is deprecated.  Use cob_object_detection_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'masks-val :lambda-list '(m))
(cl:defmethod masks-val ((m <MaskArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_object_detection_msgs-msg:masks-val is deprecated.  Use cob_object_detection_msgs-msg:masks instead.")
  (masks m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MaskArray>) ostream)
  "Serializes a message object of type '<MaskArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'masks))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'masks))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MaskArray>) istream)
  "Deserializes a message object of type '<MaskArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'masks) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'masks)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'cob_object_detection_msgs-msg:Mask))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MaskArray>)))
  "Returns string type for a message object of type '<MaskArray>"
  "cob_object_detection_msgs/MaskArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MaskArray)))
  "Returns string type for a message object of type 'MaskArray"
  "cob_object_detection_msgs/MaskArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MaskArray>)))
  "Returns md5sum for a message object of type '<MaskArray>"
  "1d4620a4218f096b919a95d7fb64146f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MaskArray)))
  "Returns md5sum for a message object of type 'MaskArray"
  "1d4620a4218f096b919a95d7fb64146f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MaskArray>)))
  "Returns full string definition for message of type '<MaskArray>"
  (cl:format cl:nil "Header header~%Mask[] masks~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: cob_object_detection_msgs/Mask~%# this message is used to mark where an object is present in an image~%# this can be done either by a roi region on the image (less precise) or a mask (more precise)~%~%Rect roi~%~%# in the case when mask is used, 'roi' specifies the image region and 'mask'~%# (which should be of the same size) a binary mask in that region~%sensor_msgs/Image mask~%~%# in the case there is 3D data available, 'indices' are used to index the ~%# part of the point cloud representing the object~%#pcl/PointIndices indices~%~%================================================================================~%MSG: cob_object_detection_msgs/Rect~%int32 x~%int32 y~%int32 width~%int32 height~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MaskArray)))
  "Returns full string definition for message of type 'MaskArray"
  (cl:format cl:nil "Header header~%Mask[] masks~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: cob_object_detection_msgs/Mask~%# this message is used to mark where an object is present in an image~%# this can be done either by a roi region on the image (less precise) or a mask (more precise)~%~%Rect roi~%~%# in the case when mask is used, 'roi' specifies the image region and 'mask'~%# (which should be of the same size) a binary mask in that region~%sensor_msgs/Image mask~%~%# in the case there is 3D data available, 'indices' are used to index the ~%# part of the point cloud representing the object~%#pcl/PointIndices indices~%~%================================================================================~%MSG: cob_object_detection_msgs/Rect~%int32 x~%int32 y~%int32 width~%int32 height~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MaskArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'masks) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MaskArray>))
  "Converts a ROS message object to a list"
  (cl:list 'MaskArray
    (cl:cons ':header (header msg))
    (cl:cons ':masks (masks msg))
))
