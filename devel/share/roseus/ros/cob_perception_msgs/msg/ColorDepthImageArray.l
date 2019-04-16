;; Auto-generated. Do not edit!


(when (boundp 'cob_perception_msgs::ColorDepthImageArray)
  (if (not (find-package "COB_PERCEPTION_MSGS"))
    (make-package "COB_PERCEPTION_MSGS"))
  (shadow 'ColorDepthImageArray (find-package "COB_PERCEPTION_MSGS")))
(unless (find-package "COB_PERCEPTION_MSGS::COLORDEPTHIMAGEARRAY")
  (make-package "COB_PERCEPTION_MSGS::COLORDEPTHIMAGEARRAY"))

(in-package "ROS")
;;//! \htmlinclude ColorDepthImageArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cob_perception_msgs::ColorDepthImageArray
  :super ros::object
  :slots (_header _head_detections ))

(defmethod cob_perception_msgs::ColorDepthImageArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:head_detections __head_detections) (let (r) (dotimes (i 0) (push (instance cob_perception_msgs::ColorDepthImage :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _head_detections __head_detections)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:head_detections
   (&rest __head_detections)
   (if (keywordp (car __head_detections))
       (send* _head_detections __head_detections)
     (progn
       (if __head_detections (setq _head_detections (car __head_detections)))
       _head_detections)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; cob_perception_msgs/ColorDepthImage[] _head_detections
    (apply #'+ (send-all _head_detections :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; cob_perception_msgs/ColorDepthImage[] _head_detections
     (write-long (length _head_detections) s)
     (dolist (elem _head_detections)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; cob_perception_msgs/ColorDepthImage[] _head_detections
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _head_detections (let (r) (dotimes (i n) (push (instance cob_perception_msgs::ColorDepthImage :init) r)) r))
     (dolist (elem- _head_detections)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get cob_perception_msgs::ColorDepthImageArray :md5sum-) "11e05088e9df0279d7f4df2d773584c2")
(setf (get cob_perception_msgs::ColorDepthImageArray :datatype-) "cob_perception_msgs/ColorDepthImageArray")
(setf (get cob_perception_msgs::ColorDepthImageArray :definition-)
      "Header header				# timestamp etc.
ColorDepthImage[] head_detections	# each entry contains the bounding box, color image, depth image and color image face detections of a head region


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
MSG: cob_perception_msgs/ColorDepthImage
Rect head_detection		# bounding box of detected head (coordinates in relation to whole image coordinate system)
sensor_msgs/Image color_image	# color image patch at bounding box head_detection (i.e. same size as head region, not only face region)
sensor_msgs/Image depth_image	# depth image patch at bounding box head_detection
Rect[] face_detections		# faces detected in color image inside the head's bounding box (coordinates in relation to head's bounding box)


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

")



(provide :cob_perception_msgs/ColorDepthImageArray "11e05088e9df0279d7f4df2d773584c2")


