; Auto-generated. Do not edit!


(cl:in-package cob_perception_msgs-msg)


;//! \htmlinclude ColorDepthImageArray.msg.html

(cl:defclass <ColorDepthImageArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (head_detections
    :reader head_detections
    :initarg :head_detections
    :type (cl:vector cob_perception_msgs-msg:ColorDepthImage)
   :initform (cl:make-array 0 :element-type 'cob_perception_msgs-msg:ColorDepthImage :initial-element (cl:make-instance 'cob_perception_msgs-msg:ColorDepthImage))))
)

(cl:defclass ColorDepthImageArray (<ColorDepthImageArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ColorDepthImageArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ColorDepthImageArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_perception_msgs-msg:<ColorDepthImageArray> is deprecated: use cob_perception_msgs-msg:ColorDepthImageArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ColorDepthImageArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_perception_msgs-msg:header-val is deprecated.  Use cob_perception_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'head_detections-val :lambda-list '(m))
(cl:defmethod head_detections-val ((m <ColorDepthImageArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_perception_msgs-msg:head_detections-val is deprecated.  Use cob_perception_msgs-msg:head_detections instead.")
  (head_detections m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ColorDepthImageArray>) ostream)
  "Serializes a message object of type '<ColorDepthImageArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'head_detections))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'head_detections))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ColorDepthImageArray>) istream)
  "Deserializes a message object of type '<ColorDepthImageArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'head_detections) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'head_detections)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'cob_perception_msgs-msg:ColorDepthImage))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ColorDepthImageArray>)))
  "Returns string type for a message object of type '<ColorDepthImageArray>"
  "cob_perception_msgs/ColorDepthImageArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ColorDepthImageArray)))
  "Returns string type for a message object of type 'ColorDepthImageArray"
  "cob_perception_msgs/ColorDepthImageArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ColorDepthImageArray>)))
  "Returns md5sum for a message object of type '<ColorDepthImageArray>"
  "11e05088e9df0279d7f4df2d773584c2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ColorDepthImageArray)))
  "Returns md5sum for a message object of type 'ColorDepthImageArray"
  "11e05088e9df0279d7f4df2d773584c2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ColorDepthImageArray>)))
  "Returns full string definition for message of type '<ColorDepthImageArray>"
  (cl:format cl:nil "Header header				# timestamp etc.~%ColorDepthImage[] head_detections	# each entry contains the bounding box, color image, depth image and color image face detections of a head region~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: cob_perception_msgs/ColorDepthImage~%Rect head_detection		# bounding box of detected head (coordinates in relation to whole image coordinate system)~%sensor_msgs/Image color_image	# color image patch at bounding box head_detection (i.e. same size as head region, not only face region)~%sensor_msgs/Image depth_image	# depth image patch at bounding box head_detection~%Rect[] face_detections		# faces detected in color image inside the head's bounding box (coordinates in relation to head's bounding box)~%~%~%================================================================================~%MSG: cob_perception_msgs/Rect~%int32 x~%int32 y~%int32 width~%int32 height~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ColorDepthImageArray)))
  "Returns full string definition for message of type 'ColorDepthImageArray"
  (cl:format cl:nil "Header header				# timestamp etc.~%ColorDepthImage[] head_detections	# each entry contains the bounding box, color image, depth image and color image face detections of a head region~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: cob_perception_msgs/ColorDepthImage~%Rect head_detection		# bounding box of detected head (coordinates in relation to whole image coordinate system)~%sensor_msgs/Image color_image	# color image patch at bounding box head_detection (i.e. same size as head region, not only face region)~%sensor_msgs/Image depth_image	# depth image patch at bounding box head_detection~%Rect[] face_detections		# faces detected in color image inside the head's bounding box (coordinates in relation to head's bounding box)~%~%~%================================================================================~%MSG: cob_perception_msgs/Rect~%int32 x~%int32 y~%int32 width~%int32 height~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ColorDepthImageArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'head_detections) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ColorDepthImageArray>))
  "Converts a ROS message object to a list"
  (cl:list 'ColorDepthImageArray
    (cl:cons ':header (header msg))
    (cl:cons ':head_detections (head_detections msg))
))
