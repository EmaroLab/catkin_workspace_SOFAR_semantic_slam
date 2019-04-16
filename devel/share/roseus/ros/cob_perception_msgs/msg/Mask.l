;; Auto-generated. Do not edit!


(when (boundp 'cob_perception_msgs::Mask)
  (if (not (find-package "COB_PERCEPTION_MSGS"))
    (make-package "COB_PERCEPTION_MSGS"))
  (shadow 'Mask (find-package "COB_PERCEPTION_MSGS")))
(unless (find-package "COB_PERCEPTION_MSGS::MASK")
  (make-package "COB_PERCEPTION_MSGS::MASK"))

(in-package "ROS")
;;//! \htmlinclude Mask.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass cob_perception_msgs::Mask
  :super ros::object
  :slots (_roi _mask ))

(defmethod cob_perception_msgs::Mask
  (:init
   (&key
    ((:roi __roi) (instance cob_perception_msgs::Rect :init))
    ((:mask __mask) (instance sensor_msgs::Image :init))
    )
   (send-super :init)
   (setq _roi __roi)
   (setq _mask __mask)
   self)
  (:roi
   (&rest __roi)
   (if (keywordp (car __roi))
       (send* _roi __roi)
     (progn
       (if __roi (setq _roi (car __roi)))
       _roi)))
  (:mask
   (&rest __mask)
   (if (keywordp (car __mask))
       (send* _mask __mask)
     (progn
       (if __mask (setq _mask (car __mask)))
       _mask)))
  (:serialization-length
   ()
   (+
    ;; cob_perception_msgs/Rect _roi
    (send _roi :serialization-length)
    ;; sensor_msgs/Image _mask
    (send _mask :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; cob_perception_msgs/Rect _roi
       (send _roi :serialize s)
     ;; sensor_msgs/Image _mask
       (send _mask :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; cob_perception_msgs/Rect _roi
     (send _roi :deserialize buf ptr-) (incf ptr- (send _roi :serialization-length))
   ;; sensor_msgs/Image _mask
     (send _mask :deserialize buf ptr-) (incf ptr- (send _mask :serialization-length))
   ;;
   self)
  )

(setf (get cob_perception_msgs::Mask :md5sum-) "e1240778c6320b394ae629a7eb8c26ba")
(setf (get cob_perception_msgs::Mask :datatype-) "cob_perception_msgs/Mask")
(setf (get cob_perception_msgs::Mask :definition-)
      "# this message is used to mark where an object is present in an image
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

")



(provide :cob_perception_msgs/Mask "e1240778c6320b394ae629a7eb8c26ba")


