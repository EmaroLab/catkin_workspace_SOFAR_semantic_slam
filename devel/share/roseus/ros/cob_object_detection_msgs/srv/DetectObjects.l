;; Auto-generated. Do not edit!


(when (boundp 'cob_object_detection_msgs::DetectObjects)
  (if (not (find-package "COB_OBJECT_DETECTION_MSGS"))
    (make-package "COB_OBJECT_DETECTION_MSGS"))
  (shadow 'DetectObjects (find-package "COB_OBJECT_DETECTION_MSGS")))
(unless (find-package "COB_OBJECT_DETECTION_MSGS::DETECTOBJECTS")
  (make-package "COB_OBJECT_DETECTION_MSGS::DETECTOBJECTS"))
(unless (find-package "COB_OBJECT_DETECTION_MSGS::DETECTOBJECTSREQUEST")
  (make-package "COB_OBJECT_DETECTION_MSGS::DETECTOBJECTSREQUEST"))
(unless (find-package "COB_OBJECT_DETECTION_MSGS::DETECTOBJECTSRESPONSE")
  (make-package "COB_OBJECT_DETECTION_MSGS::DETECTOBJECTSRESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass cob_object_detection_msgs::DetectObjectsRequest
  :super ros::object
  :slots (_object_name _roi ))

(defmethod cob_object_detection_msgs::DetectObjectsRequest
  (:init
   (&key
    ((:object_name __object_name) (instance std_msgs::String :init))
    ((:roi __roi) (instance sensor_msgs::RegionOfInterest :init))
    )
   (send-super :init)
   (setq _object_name __object_name)
   (setq _roi __roi)
   self)
  (:object_name
   (&rest __object_name)
   (if (keywordp (car __object_name))
       (send* _object_name __object_name)
     (progn
       (if __object_name (setq _object_name (car __object_name)))
       _object_name)))
  (:roi
   (&rest __roi)
   (if (keywordp (car __roi))
       (send* _roi __roi)
     (progn
       (if __roi (setq _roi (car __roi)))
       _roi)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _object_name
    (send _object_name :serialization-length)
    ;; sensor_msgs/RegionOfInterest _roi
    (send _roi :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _object_name
       (send _object_name :serialize s)
     ;; sensor_msgs/RegionOfInterest _roi
       (send _roi :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _object_name
     (send _object_name :deserialize buf ptr-) (incf ptr- (send _object_name :serialization-length))
   ;; sensor_msgs/RegionOfInterest _roi
     (send _roi :deserialize buf ptr-) (incf ptr- (send _roi :serialization-length))
   ;;
   self)
  )

(defclass cob_object_detection_msgs::DetectObjectsResponse
  :super ros::object
  :slots (_object_list ))

(defmethod cob_object_detection_msgs::DetectObjectsResponse
  (:init
   (&key
    ((:object_list __object_list) (instance cob_object_detection_msgs::DetectionArray :init))
    )
   (send-super :init)
   (setq _object_list __object_list)
   self)
  (:object_list
   (&rest __object_list)
   (if (keywordp (car __object_list))
       (send* _object_list __object_list)
     (progn
       (if __object_list (setq _object_list (car __object_list)))
       _object_list)))
  (:serialization-length
   ()
   (+
    ;; cob_object_detection_msgs/DetectionArray _object_list
    (send _object_list :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; cob_object_detection_msgs/DetectionArray _object_list
       (send _object_list :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; cob_object_detection_msgs/DetectionArray _object_list
     (send _object_list :deserialize buf ptr-) (incf ptr- (send _object_list :serialization-length))
   ;;
   self)
  )

(defclass cob_object_detection_msgs::DetectObjects
  :super ros::object
  :slots ())

(setf (get cob_object_detection_msgs::DetectObjects :md5sum-) "f609b54d4b922c8b97b8a0fc3dd91fdb")
(setf (get cob_object_detection_msgs::DetectObjects :datatype-) "cob_object_detection_msgs/DetectObjects")
(setf (get cob_object_detection_msgs::DetectObjects :request) cob_object_detection_msgs::DetectObjectsRequest)
(setf (get cob_object_detection_msgs::DetectObjects :response) cob_object_detection_msgs::DetectObjectsResponse)

(defmethod cob_object_detection_msgs::DetectObjectsRequest
  (:response () (instance cob_object_detection_msgs::DetectObjectsResponse :init)))

(setf (get cob_object_detection_msgs::DetectObjectsRequest :md5sum-) "f609b54d4b922c8b97b8a0fc3dd91fdb")
(setf (get cob_object_detection_msgs::DetectObjectsRequest :datatype-) "cob_object_detection_msgs/DetectObjectsRequest")
(setf (get cob_object_detection_msgs::DetectObjectsRequest :definition-)
      "std_msgs/String object_name
sensor_msgs/RegionOfInterest roi

================================================================================
MSG: std_msgs/String
string data

================================================================================
MSG: sensor_msgs/RegionOfInterest
# This message is used to specify a region of interest within an image.
#
# When used to specify the ROI setting of the camera when the image was
# taken, the height and width fields should either match the height and
# width fields for the associated image; or height = width = 0
# indicates that the full resolution image was captured.

uint32 x_offset  # Leftmost pixel of the ROI
                 # (0 if the ROI includes the left edge of the image)
uint32 y_offset  # Topmost pixel of the ROI
                 # (0 if the ROI includes the top edge of the image)
uint32 height    # Height of ROI
uint32 width     # Width of ROI

# True if a distinct rectified ROI should be calculated from the \"raw\"
# ROI in this message. Typically this should be False if the full image
# is captured (ROI not used), and True if a subwindow is captured (ROI
# used).
bool do_rectify
---
cob_object_detection_msgs/DetectionArray object_list


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
")

(setf (get cob_object_detection_msgs::DetectObjectsResponse :md5sum-) "f609b54d4b922c8b97b8a0fc3dd91fdb")
(setf (get cob_object_detection_msgs::DetectObjectsResponse :datatype-) "cob_object_detection_msgs/DetectObjectsResponse")
(setf (get cob_object_detection_msgs::DetectObjectsResponse :definition-)
      "std_msgs/String object_name
sensor_msgs/RegionOfInterest roi

================================================================================
MSG: std_msgs/String
string data

================================================================================
MSG: sensor_msgs/RegionOfInterest
# This message is used to specify a region of interest within an image.
#
# When used to specify the ROI setting of the camera when the image was
# taken, the height and width fields should either match the height and
# width fields for the associated image; or height = width = 0
# indicates that the full resolution image was captured.

uint32 x_offset  # Leftmost pixel of the ROI
                 # (0 if the ROI includes the left edge of the image)
uint32 y_offset  # Topmost pixel of the ROI
                 # (0 if the ROI includes the top edge of the image)
uint32 height    # Height of ROI
uint32 width     # Width of ROI

# True if a distinct rectified ROI should be calculated from the \"raw\"
# ROI in this message. Typically this should be False if the full image
# is captured (ROI not used), and True if a subwindow is captured (ROI
# used).
bool do_rectify
---
cob_object_detection_msgs/DetectionArray object_list


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
")



(provide :cob_object_detection_msgs/DetectObjects "f609b54d4b922c8b97b8a0fc3dd91fdb")


