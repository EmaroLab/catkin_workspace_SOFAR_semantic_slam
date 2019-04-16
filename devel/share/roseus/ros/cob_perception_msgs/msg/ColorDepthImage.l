;; Auto-generated. Do not edit!


(when (boundp 'cob_perception_msgs::ColorDepthImage)
  (if (not (find-package "COB_PERCEPTION_MSGS"))
    (make-package "COB_PERCEPTION_MSGS"))
  (shadow 'ColorDepthImage (find-package "COB_PERCEPTION_MSGS")))
(unless (find-package "COB_PERCEPTION_MSGS::COLORDEPTHIMAGE")
  (make-package "COB_PERCEPTION_MSGS::COLORDEPTHIMAGE"))

(in-package "ROS")
;;//! \htmlinclude ColorDepthImage.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass cob_perception_msgs::ColorDepthImage
  :super ros::object
  :slots (_head_detection _color_image _depth_image _face_detections ))

(defmethod cob_perception_msgs::ColorDepthImage
  (:init
   (&key
    ((:head_detection __head_detection) (instance cob_perception_msgs::Rect :init))
    ((:color_image __color_image) (instance sensor_msgs::Image :init))
    ((:depth_image __depth_image) (instance sensor_msgs::Image :init))
    ((:face_detections __face_detections) (let (r) (dotimes (i 0) (push (instance cob_perception_msgs::Rect :init) r)) r))
    )
   (send-super :init)
   (setq _head_detection __head_detection)
   (setq _color_image __color_image)
   (setq _depth_image __depth_image)
   (setq _face_detections __face_detections)
   self)
  (:head_detection
   (&rest __head_detection)
   (if (keywordp (car __head_detection))
       (send* _head_detection __head_detection)
     (progn
       (if __head_detection (setq _head_detection (car __head_detection)))
       _head_detection)))
  (:color_image
   (&rest __color_image)
   (if (keywordp (car __color_image))
       (send* _color_image __color_image)
     (progn
       (if __color_image (setq _color_image (car __color_image)))
       _color_image)))
  (:depth_image
   (&rest __depth_image)
   (if (keywordp (car __depth_image))
       (send* _depth_image __depth_image)
     (progn
       (if __depth_image (setq _depth_image (car __depth_image)))
       _depth_image)))
  (:face_detections
   (&rest __face_detections)
   (if (keywordp (car __face_detections))
       (send* _face_detections __face_detections)
     (progn
       (if __face_detections (setq _face_detections (car __face_detections)))
       _face_detections)))
  (:serialization-length
   ()
   (+
    ;; cob_perception_msgs/Rect _head_detection
    (send _head_detection :serialization-length)
    ;; sensor_msgs/Image _color_image
    (send _color_image :serialization-length)
    ;; sensor_msgs/Image _depth_image
    (send _depth_image :serialization-length)
    ;; cob_perception_msgs/Rect[] _face_detections
    (apply #'+ (send-all _face_detections :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; cob_perception_msgs/Rect _head_detection
       (send _head_detection :serialize s)
     ;; sensor_msgs/Image _color_image
       (send _color_image :serialize s)
     ;; sensor_msgs/Image _depth_image
       (send _depth_image :serialize s)
     ;; cob_perception_msgs/Rect[] _face_detections
     (write-long (length _face_detections) s)
     (dolist (elem _face_detections)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; cob_perception_msgs/Rect _head_detection
     (send _head_detection :deserialize buf ptr-) (incf ptr- (send _head_detection :serialization-length))
   ;; sensor_msgs/Image _color_image
     (send _color_image :deserialize buf ptr-) (incf ptr- (send _color_image :serialization-length))
   ;; sensor_msgs/Image _depth_image
     (send _depth_image :deserialize buf ptr-) (incf ptr- (send _depth_image :serialization-length))
   ;; cob_perception_msgs/Rect[] _face_detections
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _face_detections (let (r) (dotimes (i n) (push (instance cob_perception_msgs::Rect :init) r)) r))
     (dolist (elem- _face_detections)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get cob_perception_msgs::ColorDepthImage :md5sum-) "03f1995e7c816d8ab016aa6ceb57208a")
(setf (get cob_perception_msgs::ColorDepthImage :datatype-) "cob_perception_msgs/ColorDepthImage")
(setf (get cob_perception_msgs::ColorDepthImage :definition-)
      "Rect head_detection		# bounding box of detected head (coordinates in relation to whole image coordinate system)
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



(provide :cob_perception_msgs/ColorDepthImage "03f1995e7c816d8ab016aa6ceb57208a")


