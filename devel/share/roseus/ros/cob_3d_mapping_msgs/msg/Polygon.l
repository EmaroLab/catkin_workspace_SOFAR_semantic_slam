;; Auto-generated. Do not edit!


(when (boundp 'cob_3d_mapping_msgs::Polygon)
  (if (not (find-package "COB_3D_MAPPING_MSGS"))
    (make-package "COB_3D_MAPPING_MSGS"))
  (shadow 'Polygon (find-package "COB_3D_MAPPING_MSGS")))
(unless (find-package "COB_3D_MAPPING_MSGS::POLYGON")
  (make-package "COB_3D_MAPPING_MSGS::POLYGON"))

(in-package "ROS")
;;//! \htmlinclude Polygon.msg.html


(defclass cob_3d_mapping_msgs::Polygon
  :super ros::object
  :slots (_points ))

(defmethod cob_3d_mapping_msgs::Polygon
  (:init
   (&key
    ((:points __points) (let (r) (dotimes (i 0) (push (instance cob_3d_mapping_msgs::Point2D :init) r)) r))
    )
   (send-super :init)
   (setq _points __points)
   self)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; cob_3d_mapping_msgs/Point2D[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; cob_3d_mapping_msgs/Point2D[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; cob_3d_mapping_msgs/Point2D[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance cob_3d_mapping_msgs::Point2D :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get cob_3d_mapping_msgs::Polygon :md5sum-) "cb7dcdfd4dd77d10f2403c82af407d79")
(setf (get cob_3d_mapping_msgs::Polygon :datatype-) "cob_3d_mapping_msgs/Polygon")
(setf (get cob_3d_mapping_msgs::Polygon :definition-)
      "#points describing polygon
Point2D[] points

================================================================================
MSG: cob_3d_mapping_msgs/Point2D
#coordinate on surface
float32 x
float32 y

#texture cooridante
float32 tex_x
float32 tex_y

float32 var

")



(provide :cob_3d_mapping_msgs/Polygon "cb7dcdfd4dd77d10f2403c82af407d79")


