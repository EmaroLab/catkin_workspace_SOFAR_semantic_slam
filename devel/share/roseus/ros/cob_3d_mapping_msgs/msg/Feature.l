;; Auto-generated. Do not edit!


(when (boundp 'cob_3d_mapping_msgs::Feature)
  (if (not (find-package "COB_3D_MAPPING_MSGS"))
    (make-package "COB_3D_MAPPING_MSGS"))
  (shadow 'Feature (find-package "COB_3D_MAPPING_MSGS")))
(unless (find-package "COB_3D_MAPPING_MSGS::FEATURE")
  (make-package "COB_3D_MAPPING_MSGS::FEATURE"))

(in-package "ROS")
;;//! \htmlinclude Feature.msg.html


(defclass cob_3d_mapping_msgs::Feature
  :super ros::object
  :slots (_x _y _z _ID ))

(defmethod cob_3d_mapping_msgs::Feature
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:ID __ID) 0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _ID (round __ID))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:ID
   (&optional __ID)
   (if __ID (setq _ID __ID)) _ID)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _z
    4
    ;; uint32 _ID
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _z
       (sys::poke _z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _ID
       (write-long _ID s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _z
     (setq _z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _ID
     (setq _ID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get cob_3d_mapping_msgs::Feature :md5sum-) "56616874ec0e79db2402b9626b7bcd97")
(setf (get cob_3d_mapping_msgs::Feature :datatype-) "cob_3d_mapping_msgs/Feature")
(setf (get cob_3d_mapping_msgs::Feature :definition-)
      "float32 x
float32 y
float32 z
uint32 ID
")



(provide :cob_3d_mapping_msgs/Feature "56616874ec0e79db2402b9626b7bcd97")


