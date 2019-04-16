;; Auto-generated. Do not edit!


(when (boundp 'cob_object_detection_msgs::MaskArray)
  (if (not (find-package "COB_OBJECT_DETECTION_MSGS"))
    (make-package "COB_OBJECT_DETECTION_MSGS"))
  (shadow 'MaskArray (find-package "COB_OBJECT_DETECTION_MSGS")))
(unless (find-package "COB_OBJECT_DETECTION_MSGS::MASKARRAY")
  (make-package "COB_OBJECT_DETECTION_MSGS::MASKARRAY"))

(in-package "ROS")
;;//! \htmlinclude MaskArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cob_object_detection_msgs::MaskArray
  :super ros::object
  :slots (_header _masks ))

(defmethod cob_object_detection_msgs::MaskArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:masks __masks) (let (r) (dotimes (i 0) (push (instance cob_object_detection_msgs::Mask :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _masks __masks)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:masks
   (&rest __masks)
   (if (keywordp (car __masks))
       (send* _masks __masks)
     (progn
       (if __masks (setq _masks (car __masks)))
       _masks)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; cob_object_detection_msgs/Mask[] _masks
    (apply #'+ (send-all _masks :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; cob_object_detection_msgs/Mask[] _masks
     (write-long (length _masks) s)
     (dolist (elem _masks)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; cob_object_detection_msgs/Mask[] _masks
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _masks (let (r) (dotimes (i n) (push (instance cob_object_detection_msgs::Mask :init) r)) r))
     (dolist (elem- _masks)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get cob_object_detection_msgs::MaskArray :md5sum-) "1d4620a4218f096b919a95d7fb64146f")
(setf (get cob_object_detection_msgs::MaskArray :datatype-) "cob_object_detection_msgs/MaskArray")
(setf (get cob_object_detection_msgs::MaskArray :definition-)
      "Header header
Mask[] masks

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

")



(provide :cob_object_detection_msgs/MaskArray "1d4620a4218f096b919a95d7fb64146f")


