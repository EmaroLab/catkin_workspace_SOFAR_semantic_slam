;; Auto-generated. Do not edit!


(when (boundp 'cob_perception_msgs::Detection)
  (if (not (find-package "COB_PERCEPTION_MSGS"))
    (make-package "COB_PERCEPTION_MSGS"))
  (shadow 'Detection (find-package "COB_PERCEPTION_MSGS")))
(unless (find-package "COB_PERCEPTION_MSGS::DETECTION")
  (make-package "COB_PERCEPTION_MSGS::DETECTION"))

(in-package "ROS")
;;//! \htmlinclude Detection.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cob_perception_msgs::Detection
  :super ros::object
  :slots (_header _label _id _detector _score _mask _pose _bounding_box_lwh ))

(defmethod cob_perception_msgs::Detection
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:label __label) "")
    ((:id __id) 0)
    ((:detector __detector) "")
    ((:score __score) 0.0)
    ((:mask __mask) (instance cob_perception_msgs::Mask :init))
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    ((:bounding_box_lwh __bounding_box_lwh) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _label (string __label))
   (setq _id (round __id))
   (setq _detector (string __detector))
   (setq _score (float __score))
   (setq _mask __mask)
   (setq _pose __pose)
   (setq _bounding_box_lwh __bounding_box_lwh)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:detector
   (&optional __detector)
   (if __detector (setq _detector __detector)) _detector)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:mask
   (&rest __mask)
   (if (keywordp (car __mask))
       (send* _mask __mask)
     (progn
       (if __mask (setq _mask (car __mask)))
       _mask)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:bounding_box_lwh
   (&rest __bounding_box_lwh)
   (if (keywordp (car __bounding_box_lwh))
       (send* _bounding_box_lwh __bounding_box_lwh)
     (progn
       (if __bounding_box_lwh (setq _bounding_box_lwh (car __bounding_box_lwh)))
       _bounding_box_lwh)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _label
    4 (length _label)
    ;; int32 _id
    4
    ;; string _detector
    4 (length _detector)
    ;; float32 _score
    4
    ;; cob_perception_msgs/Mask _mask
    (send _mask :serialization-length)
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/Point _bounding_box_lwh
    (send _bounding_box_lwh :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;; int32 _id
       (write-long _id s)
     ;; string _detector
       (write-long (length _detector) s) (princ _detector s)
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; cob_perception_msgs/Mask _mask
       (send _mask :serialize s)
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;; geometry_msgs/Point _bounding_box_lwh
       (send _bounding_box_lwh :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _detector
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _detector (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; cob_perception_msgs/Mask _mask
     (send _mask :deserialize buf ptr-) (incf ptr- (send _mask :serialization-length))
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/Point _bounding_box_lwh
     (send _bounding_box_lwh :deserialize buf ptr-) (incf ptr- (send _bounding_box_lwh :serialization-length))
   ;;
   self)
  )

(setf (get cob_perception_msgs::Detection :md5sum-) "5914d80850a216f4299709f0376ee04e")
(setf (get cob_perception_msgs::Detection :datatype-) "cob_perception_msgs/Detection")
(setf (get cob_perception_msgs::Detection :definition-)
      "Header header
string label
int32 id
string detector
float32 score
Mask mask
geometry_msgs/PoseStamped pose
geometry_msgs/Point bounding_box_lwh

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
MSG: cob_perception_msgs/Mask
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
MSG: cob_perception_msgs/Rect
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



(provide :cob_perception_msgs/Detection "5914d80850a216f4299709f0376ee04e")


