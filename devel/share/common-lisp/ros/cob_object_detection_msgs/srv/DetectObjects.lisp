; Auto-generated. Do not edit!


(cl:in-package cob_object_detection_msgs-srv)


;//! \htmlinclude DetectObjects-request.msg.html

(cl:defclass <DetectObjects-request> (roslisp-msg-protocol:ros-message)
  ((object_name
    :reader object_name
    :initarg :object_name
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (roi
    :reader roi
    :initarg :roi
    :type sensor_msgs-msg:RegionOfInterest
    :initform (cl:make-instance 'sensor_msgs-msg:RegionOfInterest)))
)

(cl:defclass DetectObjects-request (<DetectObjects-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectObjects-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectObjects-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_object_detection_msgs-srv:<DetectObjects-request> is deprecated: use cob_object_detection_msgs-srv:DetectObjects-request instead.")))

(cl:ensure-generic-function 'object_name-val :lambda-list '(m))
(cl:defmethod object_name-val ((m <DetectObjects-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_object_detection_msgs-srv:object_name-val is deprecated.  Use cob_object_detection_msgs-srv:object_name instead.")
  (object_name m))

(cl:ensure-generic-function 'roi-val :lambda-list '(m))
(cl:defmethod roi-val ((m <DetectObjects-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_object_detection_msgs-srv:roi-val is deprecated.  Use cob_object_detection_msgs-srv:roi instead.")
  (roi m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectObjects-request>) ostream)
  "Serializes a message object of type '<DetectObjects-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'object_name) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'roi) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectObjects-request>) istream)
  "Deserializes a message object of type '<DetectObjects-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'object_name) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'roi) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectObjects-request>)))
  "Returns string type for a service object of type '<DetectObjects-request>"
  "cob_object_detection_msgs/DetectObjectsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectObjects-request)))
  "Returns string type for a service object of type 'DetectObjects-request"
  "cob_object_detection_msgs/DetectObjectsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectObjects-request>)))
  "Returns md5sum for a message object of type '<DetectObjects-request>"
  "f609b54d4b922c8b97b8a0fc3dd91fdb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectObjects-request)))
  "Returns md5sum for a message object of type 'DetectObjects-request"
  "f609b54d4b922c8b97b8a0fc3dd91fdb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectObjects-request>)))
  "Returns full string definition for message of type '<DetectObjects-request>"
  (cl:format cl:nil "std_msgs/String object_name~%sensor_msgs/RegionOfInterest roi~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectObjects-request)))
  "Returns full string definition for message of type 'DetectObjects-request"
  (cl:format cl:nil "std_msgs/String object_name~%sensor_msgs/RegionOfInterest roi~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectObjects-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'object_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'roi))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectObjects-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectObjects-request
    (cl:cons ':object_name (object_name msg))
    (cl:cons ':roi (roi msg))
))
;//! \htmlinclude DetectObjects-response.msg.html

(cl:defclass <DetectObjects-response> (roslisp-msg-protocol:ros-message)
  ((object_list
    :reader object_list
    :initarg :object_list
    :type cob_object_detection_msgs-msg:DetectionArray
    :initform (cl:make-instance 'cob_object_detection_msgs-msg:DetectionArray)))
)

(cl:defclass DetectObjects-response (<DetectObjects-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectObjects-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectObjects-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_object_detection_msgs-srv:<DetectObjects-response> is deprecated: use cob_object_detection_msgs-srv:DetectObjects-response instead.")))

(cl:ensure-generic-function 'object_list-val :lambda-list '(m))
(cl:defmethod object_list-val ((m <DetectObjects-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_object_detection_msgs-srv:object_list-val is deprecated.  Use cob_object_detection_msgs-srv:object_list instead.")
  (object_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectObjects-response>) ostream)
  "Serializes a message object of type '<DetectObjects-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'object_list) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectObjects-response>) istream)
  "Deserializes a message object of type '<DetectObjects-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'object_list) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectObjects-response>)))
  "Returns string type for a service object of type '<DetectObjects-response>"
  "cob_object_detection_msgs/DetectObjectsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectObjects-response)))
  "Returns string type for a service object of type 'DetectObjects-response"
  "cob_object_detection_msgs/DetectObjectsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectObjects-response>)))
  "Returns md5sum for a message object of type '<DetectObjects-response>"
  "f609b54d4b922c8b97b8a0fc3dd91fdb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectObjects-response)))
  "Returns md5sum for a message object of type 'DetectObjects-response"
  "f609b54d4b922c8b97b8a0fc3dd91fdb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectObjects-response>)))
  "Returns full string definition for message of type '<DetectObjects-response>"
  (cl:format cl:nil "cob_object_detection_msgs/DetectionArray object_list~%~%~%================================================================================~%MSG: cob_object_detection_msgs/DetectionArray~%Header header~%Detection[] detections~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: cob_object_detection_msgs/Detection~%Header header~%string label~%int32 id~%string detector~%float32 score~%Mask mask~%geometry_msgs/PoseStamped pose~%geometry_msgs/Point bounding_box_lwh~%~%================================================================================~%MSG: cob_object_detection_msgs/Mask~%# this message is used to mark where an object is present in an image~%# this can be done either by a roi region on the image (less precise) or a mask (more precise)~%~%Rect roi~%~%# in the case when mask is used, 'roi' specifies the image region and 'mask'~%# (which should be of the same size) a binary mask in that region~%sensor_msgs/Image mask~%~%# in the case there is 3D data available, 'indices' are used to index the ~%# part of the point cloud representing the object~%#pcl/PointIndices indices~%~%================================================================================~%MSG: cob_object_detection_msgs/Rect~%int32 x~%int32 y~%int32 width~%int32 height~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectObjects-response)))
  "Returns full string definition for message of type 'DetectObjects-response"
  (cl:format cl:nil "cob_object_detection_msgs/DetectionArray object_list~%~%~%================================================================================~%MSG: cob_object_detection_msgs/DetectionArray~%Header header~%Detection[] detections~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: cob_object_detection_msgs/Detection~%Header header~%string label~%int32 id~%string detector~%float32 score~%Mask mask~%geometry_msgs/PoseStamped pose~%geometry_msgs/Point bounding_box_lwh~%~%================================================================================~%MSG: cob_object_detection_msgs/Mask~%# this message is used to mark where an object is present in an image~%# this can be done either by a roi region on the image (less precise) or a mask (more precise)~%~%Rect roi~%~%# in the case when mask is used, 'roi' specifies the image region and 'mask'~%# (which should be of the same size) a binary mask in that region~%sensor_msgs/Image mask~%~%# in the case there is 3D data available, 'indices' are used to index the ~%# part of the point cloud representing the object~%#pcl/PointIndices indices~%~%================================================================================~%MSG: cob_object_detection_msgs/Rect~%int32 x~%int32 y~%int32 width~%int32 height~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectObjects-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'object_list))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectObjects-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectObjects-response
    (cl:cons ':object_list (object_list msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DetectObjects)))
  'DetectObjects-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DetectObjects)))
  'DetectObjects-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectObjects)))
  "Returns string type for a service object of type '<DetectObjects>"
  "cob_object_detection_msgs/DetectObjects")