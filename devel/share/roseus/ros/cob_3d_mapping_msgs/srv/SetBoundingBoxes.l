;; Auto-generated. Do not edit!


(when (boundp 'cob_3d_mapping_msgs::SetBoundingBoxes)
  (if (not (find-package "COB_3D_MAPPING_MSGS"))
    (make-package "COB_3D_MAPPING_MSGS"))
  (shadow 'SetBoundingBoxes (find-package "COB_3D_MAPPING_MSGS")))
(unless (find-package "COB_3D_MAPPING_MSGS::SETBOUNDINGBOXES")
  (make-package "COB_3D_MAPPING_MSGS::SETBOUNDINGBOXES"))
(unless (find-package "COB_3D_MAPPING_MSGS::SETBOUNDINGBOXESREQUEST")
  (make-package "COB_3D_MAPPING_MSGS::SETBOUNDINGBOXESREQUEST"))
(unless (find-package "COB_3D_MAPPING_MSGS::SETBOUNDINGBOXESRESPONSE")
  (make-package "COB_3D_MAPPING_MSGS::SETBOUNDINGBOXESRESPONSE"))

(in-package "ROS")

(if (not (find-package "COB_OBJECT_DETECTION_MSGS"))
  (ros::roseus-add-msgs "cob_object_detection_msgs"))




(defclass cob_3d_mapping_msgs::SetBoundingBoxesRequest
  :super ros::object
  :slots (_bounding_boxes ))

(defmethod cob_3d_mapping_msgs::SetBoundingBoxesRequest
  (:init
   (&key
    ((:bounding_boxes __bounding_boxes) (instance cob_object_detection_msgs::DetectionArray :init))
    )
   (send-super :init)
   (setq _bounding_boxes __bounding_boxes)
   self)
  (:bounding_boxes
   (&rest __bounding_boxes)
   (if (keywordp (car __bounding_boxes))
       (send* _bounding_boxes __bounding_boxes)
     (progn
       (if __bounding_boxes (setq _bounding_boxes (car __bounding_boxes)))
       _bounding_boxes)))
  (:serialization-length
   ()
   (+
    ;; cob_object_detection_msgs/DetectionArray _bounding_boxes
    (send _bounding_boxes :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; cob_object_detection_msgs/DetectionArray _bounding_boxes
       (send _bounding_boxes :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; cob_object_detection_msgs/DetectionArray _bounding_boxes
     (send _bounding_boxes :deserialize buf ptr-) (incf ptr- (send _bounding_boxes :serialization-length))
   ;;
   self)
  )

(defclass cob_3d_mapping_msgs::SetBoundingBoxesResponse
  :super ros::object
  :slots ())

(defmethod cob_3d_mapping_msgs::SetBoundingBoxesResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass cob_3d_mapping_msgs::SetBoundingBoxes
  :super ros::object
  :slots ())

(setf (get cob_3d_mapping_msgs::SetBoundingBoxes :md5sum-) "de59b28161e64013a1dd6ca094ca3cc7")
(setf (get cob_3d_mapping_msgs::SetBoundingBoxes :datatype-) "cob_3d_mapping_msgs/SetBoundingBoxes")
(setf (get cob_3d_mapping_msgs::SetBoundingBoxes :request) cob_3d_mapping_msgs::SetBoundingBoxesRequest)
(setf (get cob_3d_mapping_msgs::SetBoundingBoxes :response) cob_3d_mapping_msgs::SetBoundingBoxesResponse)

(defmethod cob_3d_mapping_msgs::SetBoundingBoxesRequest
  (:response () (instance cob_3d_mapping_msgs::SetBoundingBoxesResponse :init)))

(setf (get cob_3d_mapping_msgs::SetBoundingBoxesRequest :md5sum-) "de59b28161e64013a1dd6ca094ca3cc7")
(setf (get cob_3d_mapping_msgs::SetBoundingBoxesRequest :datatype-) "cob_3d_mapping_msgs/SetBoundingBoxesRequest")
(setf (get cob_3d_mapping_msgs::SetBoundingBoxesRequest :definition-)
      "cob_object_detection_msgs/DetectionArray bounding_boxes

================================================================================
MSG: cob_object_detection_msgs/DetectionArray
Header header
Detection[] detections

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: cob_object_detection_msgs/Detection
Header header
string label
int32 id
string detector
float32 score
Mask mask
geometry_msgs/PoseStamped pose
geometry_msgs/Point bounding_box_lwh

================================================================================
MSG: cob_object_detection_msgs/Mask
# this message is used to mark where an object is present in an image
# this can be done either by a roi region on the image (less precise) or a mask (more precise)

Rect roi

# in the case when mask is used, 'roi' specifies the image region and 'mask'
# (which should be of the same size) a binary mask in that region
sensor_msgs/Image mask

# in the case there is 3D data available, 'indices' are used to index the 
# part of the point cloud representing the object
#pcl/PointIndices indices

================================================================================
MSG: cob_object_detection_msgs/Rect
int32 x
int32 y
int32 width
int32 height

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
")

(setf (get cob_3d_mapping_msgs::SetBoundingBoxesResponse :md5sum-) "de59b28161e64013a1dd6ca094ca3cc7")
(setf (get cob_3d_mapping_msgs::SetBoundingBoxesResponse :datatype-) "cob_3d_mapping_msgs/SetBoundingBoxesResponse")
(setf (get cob_3d_mapping_msgs::SetBoundingBoxesResponse :definition-)
      "cob_object_detection_msgs/DetectionArray bounding_boxes

================================================================================
MSG: cob_object_detection_msgs/DetectionArray
Header header
Detection[] detections

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: cob_object_detection_msgs/Detection
Header header
string label
int32 id
string detector
float32 score
Mask mask
geometry_msgs/PoseStamped pose
geometry_msgs/Point bounding_box_lwh

================================================================================
MSG: cob_object_detection_msgs/Mask
# this message is used to mark where an object is present in an image
# this can be done either by a roi region on the image (less precise) or a mask (more precise)

Rect roi

# in the case when mask is used, 'roi' specifies the image region and 'mask'
# (which should be of the same size) a binary mask in that region
sensor_msgs/Image mask

# in the case there is 3D data available, 'indices' are used to index the 
# part of the point cloud representing the object
#pcl/PointIndices indices

================================================================================
MSG: cob_object_detection_msgs/Rect
int32 x
int32 y
int32 width
int32 height

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---
")



(provide :cob_3d_mapping_msgs/SetBoundingBoxes "de59b28161e64013a1dd6ca094ca3cc7")


