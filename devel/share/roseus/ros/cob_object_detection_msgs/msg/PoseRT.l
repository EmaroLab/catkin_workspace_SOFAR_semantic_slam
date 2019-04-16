;; Auto-generated. Do not edit!


(when (boundp 'cob_object_detection_msgs::PoseRT)
  (if (not (find-package "COB_OBJECT_DETECTION_MSGS"))
    (make-package "COB_OBJECT_DETECTION_MSGS"))
  (shadow 'PoseRT (find-package "COB_OBJECT_DETECTION_MSGS")))
(unless (find-package "COB_OBJECT_DETECTION_MSGS::POSERT")
  (make-package "COB_OBJECT_DETECTION_MSGS::POSERT"))

(in-package "ROS")
;;//! \htmlinclude PoseRT.msg.html


(defclass cob_object_detection_msgs::PoseRT
  :super ros::object
  :slots (_rvec _tvec ))

(defmethod cob_object_detection_msgs::PoseRT
  (:init
   (&key
    ((:rvec __rvec) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:tvec __tvec) (make-array 3 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _rvec __rvec)
   (setq _tvec __tvec)
   self)
  (:rvec
   (&optional __rvec)
   (if __rvec (setq _rvec __rvec)) _rvec)
  (:tvec
   (&optional __tvec)
   (if __tvec (setq _tvec __tvec)) _tvec)
  (:serialization-length
   ()
   (+
    ;; float64[3] _rvec
    (* 8    3)
    ;; float64[3] _tvec
    (* 8    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[3] _rvec
     (dotimes (i 3)
       (sys::poke (elt _rvec i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _tvec
     (dotimes (i 3)
       (sys::poke (elt _tvec i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[3] _rvec
   (dotimes (i (length _rvec))
     (setf (elt _rvec i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _tvec
   (dotimes (i (length _tvec))
     (setf (elt _tvec i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get cob_object_detection_msgs::PoseRT :md5sum-) "d6802a5a6d10cce0b5eea91c5defc39f")
(setf (get cob_object_detection_msgs::PoseRT :datatype-) "cob_object_detection_msgs/PoseRT")
(setf (get cob_object_detection_msgs::PoseRT :definition-)
      "#3x1 rotation vector, Rodrigues axis angle form,
#angle = norm(rvec) -- radians
#axis = rvec/norm(rvec) -- unit length
float64[3]  rvec
#3x1 translation vector, in meters
float64[3]  tvec
")



(provide :cob_object_detection_msgs/PoseRT "d6802a5a6d10cce0b5eea91c5defc39f")


