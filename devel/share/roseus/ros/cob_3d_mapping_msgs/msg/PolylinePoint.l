;; Auto-generated. Do not edit!


(when (boundp 'cob_3d_mapping_msgs::PolylinePoint)
  (if (not (find-package "COB_3D_MAPPING_MSGS"))
    (make-package "COB_3D_MAPPING_MSGS"))
  (shadow 'PolylinePoint (find-package "COB_3D_MAPPING_MSGS")))
(unless (find-package "COB_3D_MAPPING_MSGS::POLYLINEPOINT")
  (make-package "COB_3D_MAPPING_MSGS::POLYLINEPOINT"))

(in-package "ROS")
;;//! \htmlinclude PolylinePoint.msg.html


(defclass cob_3d_mapping_msgs::PolylinePoint
  :super ros::object
  :slots (_x _y _edge_prob ))

(defmethod cob_3d_mapping_msgs::PolylinePoint
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:edge_prob __edge_prob) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _edge_prob (float __edge_prob))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:edge_prob
   (&optional __edge_prob)
   (if __edge_prob (setq _edge_prob __edge_prob)) _edge_prob)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _edge_prob
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
     ;; float32 _edge_prob
       (sys::poke _edge_prob (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _edge_prob
     (setq _edge_prob (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get cob_3d_mapping_msgs::PolylinePoint :md5sum-) "850eb4aee753d09ff5d16e6f86ee6353")
(setf (get cob_3d_mapping_msgs::PolylinePoint :datatype-) "cob_3d_mapping_msgs/PolylinePoint")
(setf (get cob_3d_mapping_msgs::PolylinePoint :definition-)
      "float32 x
float32 y
float32 edge_prob
")



(provide :cob_3d_mapping_msgs/PolylinePoint "850eb4aee753d09ff5d16e6f86ee6353")


