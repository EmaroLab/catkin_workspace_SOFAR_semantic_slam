;; Auto-generated. Do not edit!


(when (boundp 'semantical_slam::SemanticalPoint)
  (if (not (find-package "SEMANTICAL_SLAM"))
    (make-package "SEMANTICAL_SLAM"))
  (shadow 'SemanticalPoint (find-package "SEMANTICAL_SLAM")))
(unless (find-package "SEMANTICAL_SLAM::SEMANTICALPOINT")
  (make-package "SEMANTICAL_SLAM::SEMANTICALPOINT"))

(in-package "ROS")
;;//! \htmlinclude SemanticalPoint.msg.html


(defclass semantical_slam::SemanticalPoint
  :super ros::object
  :slots (_x _y _place_name ))

(defmethod semantical_slam::SemanticalPoint
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:place_name __place_name) "")
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _place_name (string __place_name))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:place_name
   (&optional __place_name)
   (if __place_name (setq _place_name __place_name)) _place_name)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; string _place_name
    4 (length _place_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _place_name
       (write-long (length _place_name) s) (princ _place_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _place_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _place_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get semantical_slam::SemanticalPoint :md5sum-) "6dfe1ecd745796b16f1823a92c8841ae")
(setf (get semantical_slam::SemanticalPoint :datatype-) "semantical_slam/SemanticalPoint")
(setf (get semantical_slam::SemanticalPoint :definition-)
      "float32 x
float32 y
string  place_name

")



(provide :semantical_slam/SemanticalPoint "6dfe1ecd745796b16f1823a92c8841ae")


