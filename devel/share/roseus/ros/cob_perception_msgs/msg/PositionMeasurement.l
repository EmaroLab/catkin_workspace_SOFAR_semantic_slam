;; Auto-generated. Do not edit!


(when (boundp 'cob_perception_msgs::PositionMeasurement)
  (if (not (find-package "COB_PERCEPTION_MSGS"))
    (make-package "COB_PERCEPTION_MSGS"))
  (shadow 'PositionMeasurement (find-package "COB_PERCEPTION_MSGS")))
(unless (find-package "COB_PERCEPTION_MSGS::POSITIONMEASUREMENT")
  (make-package "COB_PERCEPTION_MSGS::POSITIONMEASUREMENT"))

(in-package "ROS")
;;//! \htmlinclude PositionMeasurement.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cob_perception_msgs::PositionMeasurement
  :super ros::object
  :slots (_header _name _object_id _pos _vel _reliability _covariance _initialization ))

(defmethod cob_perception_msgs::PositionMeasurement
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:name __name) "")
    ((:object_id __object_id) "")
    ((:pos __pos) (instance geometry_msgs::Point :init))
    ((:vel __vel) (instance geometry_msgs::Vector3 :init))
    ((:reliability __reliability) 0.0)
    ((:covariance __covariance) (make-array 9 :initial-element 0.0 :element-type :float))
    ((:initialization __initialization) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _name (string __name))
   (setq _object_id (string __object_id))
   (setq _pos __pos)
   (setq _vel __vel)
   (setq _reliability (float __reliability))
   (setq _covariance __covariance)
   (setq _initialization (round __initialization))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:object_id
   (&optional __object_id)
   (if __object_id (setq _object_id __object_id)) _object_id)
  (:pos
   (&rest __pos)
   (if (keywordp (car __pos))
       (send* _pos __pos)
     (progn
       (if __pos (setq _pos (car __pos)))
       _pos)))
  (:vel
   (&rest __vel)
   (if (keywordp (car __vel))
       (send* _vel __vel)
     (progn
       (if __vel (setq _vel (car __vel)))
       _vel)))
  (:reliability
   (&optional __reliability)
   (if __reliability (setq _reliability __reliability)) _reliability)
  (:covariance
   (&optional __covariance)
   (if __covariance (setq _covariance __covariance)) _covariance)
  (:initialization
   (&optional __initialization)
   (if __initialization (setq _initialization __initialization)) _initialization)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _name
    4 (length _name)
    ;; string _object_id
    4 (length _object_id)
    ;; geometry_msgs/Point _pos
    (send _pos :serialization-length)
    ;; geometry_msgs/Vector3 _vel
    (send _vel :serialization-length)
    ;; float64 _reliability
    8
    ;; float64[9] _covariance
    (* 8    9)
    ;; byte _initialization
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _object_id
       (write-long (length _object_id) s) (princ _object_id s)
     ;; geometry_msgs/Point _pos
       (send _pos :serialize s)
     ;; geometry_msgs/Vector3 _vel
       (send _vel :serialize s)
     ;; float64 _reliability
       (sys::poke _reliability (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[9] _covariance
     (dotimes (i 9)
       (sys::poke (elt _covariance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; byte _initialization
       (write-byte _initialization s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _object_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Point _pos
     (send _pos :deserialize buf ptr-) (incf ptr- (send _pos :serialization-length))
   ;; geometry_msgs/Vector3 _vel
     (send _vel :deserialize buf ptr-) (incf ptr- (send _vel :serialization-length))
   ;; float64 _reliability
     (setq _reliability (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[9] _covariance
   (dotimes (i (length _covariance))
     (setf (elt _covariance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; byte _initialization
     (setq _initialization (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _initialization 127) (setq _initialization (- _initialization 256)))
   ;;
   self)
  )

(setf (get cob_perception_msgs::PositionMeasurement :md5sum-) "a1ad9f58d180ee0dd8bd6c516af86714")
(setf (get cob_perception_msgs::PositionMeasurement :datatype-) "cob_perception_msgs/PositionMeasurement")
(setf (get cob_perception_msgs::PositionMeasurement :definition-)
      "# origin from  url = https://github.com/wg-perception/people/tree/hydro-devel/people_msgs

Header          header
string          name
string          object_id
geometry_msgs/Point pos
geometry_msgs/Vector3 vel
float64         reliability
float64[9] 		covariance
byte            initialization

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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :cob_perception_msgs/PositionMeasurement "a1ad9f58d180ee0dd8bd6c516af86714")


