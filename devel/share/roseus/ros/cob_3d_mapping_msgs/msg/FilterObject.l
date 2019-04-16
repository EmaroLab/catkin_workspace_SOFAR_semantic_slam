;; Auto-generated. Do not edit!


(when (boundp 'cob_3d_mapping_msgs::FilterObject)
  (if (not (find-package "COB_3D_MAPPING_MSGS"))
    (make-package "COB_3D_MAPPING_MSGS"))
  (shadow 'FilterObject (find-package "COB_3D_MAPPING_MSGS")))
(unless (find-package "COB_3D_MAPPING_MSGS::FILTEROBJECT")
  (make-package "COB_3D_MAPPING_MSGS::FILTEROBJECT"))

(in-package "ROS")
;;//! \htmlinclude FilterObject.msg.html


(defclass cob_3d_mapping_msgs::FilterObject
  :super ros::object
  :slots (_height _width _curv_h _curv_w ))

(defmethod cob_3d_mapping_msgs::FilterObject
  (:init
   (&key
    ((:height __height) 0.0)
    ((:width __width) 0.0)
    ((:curv_h __curv_h) 0.0)
    ((:curv_w __curv_w) 0.0)
    )
   (send-super :init)
   (setq _height (float __height))
   (setq _width (float __width))
   (setq _curv_h (float __curv_h))
   (setq _curv_w (float __curv_w))
   self)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:curv_h
   (&optional __curv_h)
   (if __curv_h (setq _curv_h __curv_h)) _curv_h)
  (:curv_w
   (&optional __curv_w)
   (if __curv_w (setq _curv_w __curv_w)) _curv_w)
  (:serialization-length
   ()
   (+
    ;; float32 _height
    4
    ;; float32 _width
    4
    ;; float32 _curv_h
    4
    ;; float32 _curv_w
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _height
       (sys::poke _height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _curv_h
       (sys::poke _curv_h (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _curv_w
       (sys::poke _curv_w (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _height
     (setq _height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _curv_h
     (setq _curv_h (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _curv_w
     (setq _curv_w (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get cob_3d_mapping_msgs::FilterObject :md5sum-) "3ce8bd944e4374d48880ed66855bf0be")
(setf (get cob_3d_mapping_msgs::FilterObject :datatype-) "cob_3d_mapping_msgs/FilterObject")
(setf (get cob_3d_mapping_msgs::FilterObject :definition-)
      "float32 height	#longer side
float32 width	#smaller side
float32 curv_h	#curvature to height
float32 curv_w	#curvature to width

")



(provide :cob_3d_mapping_msgs/FilterObject "3ce8bd944e4374d48880ed66855bf0be")


