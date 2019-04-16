;; Auto-generated. Do not edit!


(when (boundp 'cob_perception_msgs::PositionMeasurementArray)
  (if (not (find-package "COB_PERCEPTION_MSGS"))
    (make-package "COB_PERCEPTION_MSGS"))
  (shadow 'PositionMeasurementArray (find-package "COB_PERCEPTION_MSGS")))
(unless (find-package "COB_PERCEPTION_MSGS::POSITIONMEASUREMENTARRAY")
  (make-package "COB_PERCEPTION_MSGS::POSITIONMEASUREMENTARRAY"))

(in-package "ROS")
;;//! \htmlinclude PositionMeasurementArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cob_perception_msgs::PositionMeasurementArray
  :super ros::object
  :slots (_header _people _cooccurrence ))

(defmethod cob_perception_msgs::PositionMeasurementArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:people __people) (let (r) (dotimes (i 0) (push (instance cob_perception_msgs::PositionMeasurement :init) r)) r))
    ((:cooccurrence __cooccurrence) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _people __people)
   (setq _cooccurrence __cooccurrence)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:people
   (&rest __people)
   (if (keywordp (car __people))
       (send* _people __people)
     (progn
       (if __people (setq _people (car __people)))
       _people)))
  (:cooccurrence
   (&optional __cooccurrence)
   (if __cooccurrence (setq _cooccurrence __cooccurrence)) _cooccurrence)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; cob_perception_msgs/PositionMeasurement[] _people
    (apply #'+ (send-all _people :serialization-length)) 4
    ;; float32[] _cooccurrence
    (* 4    (length _cooccurrence)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; cob_perception_msgs/PositionMeasurement[] _people
     (write-long (length _people) s)
     (dolist (elem _people)
       (send elem :serialize s)
       )
     ;; float32[] _cooccurrence
     (write-long (length _cooccurrence) s)
     (dotimes (i (length _cooccurrence))
       (sys::poke (elt _cooccurrence i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; cob_perception_msgs/PositionMeasurement[] _people
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _people (let (r) (dotimes (i n) (push (instance cob_perception_msgs::PositionMeasurement :init) r)) r))
     (dolist (elem- _people)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32[] _cooccurrence
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cooccurrence (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _cooccurrence i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get cob_perception_msgs::PositionMeasurementArray :md5sum-) "f76f3d050aeed243c9f1fbf9cfa040ee")
(setf (get cob_perception_msgs::PositionMeasurementArray :datatype-) "cob_perception_msgs/PositionMeasurementArray")
(setf (get cob_perception_msgs::PositionMeasurementArray :definition-)
      "# origin from  url = https://github.com/wg-perception/people/tree/hydro-devel/people_msgs

Header          header

# All of the people found
cob_perception_msgs/PositionMeasurement[] people

# The co-occurrence matrix between people
float32[] cooccurrence

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
MSG: cob_perception_msgs/PositionMeasurement
# origin from  url = https://github.com/wg-perception/people/tree/hydro-devel/people_msgs

Header          header
string          name
string          object_id
geometry_msgs/Point pos
geometry_msgs/Vector3 vel
float64         reliability
float64[9] 		covariance
byte            initialization

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



(provide :cob_perception_msgs/PositionMeasurementArray "f76f3d050aeed243c9f1fbf9cfa040ee")


