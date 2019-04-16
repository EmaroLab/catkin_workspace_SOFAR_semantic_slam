;; Auto-generated. Do not edit!


(when (boundp 'cob_3d_mapping_msgs::Point2D)
  (if (not (find-package "COB_3D_MAPPING_MSGS"))
    (make-package "COB_3D_MAPPING_MSGS"))
  (shadow 'Point2D (find-package "COB_3D_MAPPING_MSGS")))
(unless (find-package "COB_3D_MAPPING_MSGS::POINT2D")
  (make-package "COB_3D_MAPPING_MSGS::POINT2D"))

(in-package "ROS")
;;//! \htmlinclude Point2D.msg.html


(defclass cob_3d_mapping_msgs::Point2D
  :super ros::object
  :slots (_x _y _tex_x _tex_y _var ))

(defmethod cob_3d_mapping_msgs::Point2D
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:tex_x __tex_x) 0.0)
    ((:tex_y __tex_y) 0.0)
    ((:var __var) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _tex_x (float __tex_x))
   (setq _tex_y (float __tex_y))
   (setq _var (float __var))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:tex_x
   (&optional __tex_x)
   (if __tex_x (setq _tex_x __tex_x)) _tex_x)
  (:tex_y
   (&optional __tex_y)
   (if __tex_y (setq _tex_y __tex_y)) _tex_y)
  (:var
   (&optional __var)
   (if __var (setq _var __var)) _var)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _tex_x
    4
    ;; float32 _tex_y
    4
    ;; float32 _var
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
     ;; float32 _tex_x
       (sys::poke _tex_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tex_y
       (sys::poke _tex_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _var
       (sys::poke _var (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tex_x
     (setq _tex_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tex_y
     (setq _tex_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _var
     (setq _var (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get cob_3d_mapping_msgs::Point2D :md5sum-) "fc725bda50adf2bf28e55ed21147f45e")
(setf (get cob_3d_mapping_msgs::Point2D :datatype-) "cob_3d_mapping_msgs/Point2D")
(setf (get cob_3d_mapping_msgs::Point2D :definition-)
      "#coordinate on surface
float32 x
float32 y

#texture cooridante
float32 tex_x
float32 tex_y

float32 var

")



(provide :cob_3d_mapping_msgs/Point2D "fc725bda50adf2bf28e55ed21147f45e")


