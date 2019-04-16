;; Auto-generated. Do not edit!


(when (boundp 'cob_3d_mapping_msgs::Plane)
  (if (not (find-package "COB_3D_MAPPING_MSGS"))
    (make-package "COB_3D_MAPPING_MSGS"))
  (shadow 'Plane (find-package "COB_3D_MAPPING_MSGS")))
(unless (find-package "COB_3D_MAPPING_MSGS::PLANE")
  (make-package "COB_3D_MAPPING_MSGS::PLANE"))

(in-package "ROS")
;;//! \htmlinclude Plane.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cob_3d_mapping_msgs::Plane
  :super ros::object
  :slots (_polygons _pose _weight _color ))

(defmethod cob_3d_mapping_msgs::Plane
  (:init
   (&key
    ((:polygons __polygons) (let (r) (dotimes (i 0) (push (instance cob_3d_mapping_msgs::Polygon :init) r)) r))
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:weight __weight) 0.0)
    ((:color __color) (instance std_msgs::ColorRGBA :init))
    )
   (send-super :init)
   (setq _polygons __polygons)
   (setq _pose __pose)
   (setq _weight (float __weight))
   (setq _color __color)
   self)
  (:polygons
   (&rest __polygons)
   (if (keywordp (car __polygons))
       (send* _polygons __polygons)
     (progn
       (if __polygons (setq _polygons (car __polygons)))
       _polygons)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:weight
   (&optional __weight)
   (if __weight (setq _weight __weight)) _weight)
  (:color
   (&rest __color)
   (if (keywordp (car __color))
       (send* _color __color)
     (progn
       (if __color (setq _color (car __color)))
       _color)))
  (:serialization-length
   ()
   (+
    ;; cob_3d_mapping_msgs/Polygon[] _polygons
    (apply #'+ (send-all _polygons :serialization-length)) 4
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; float32 _weight
    4
    ;; std_msgs/ColorRGBA _color
    (send _color :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; cob_3d_mapping_msgs/Polygon[] _polygons
     (write-long (length _polygons) s)
     (dolist (elem _polygons)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; float32 _weight
       (sys::poke _weight (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; std_msgs/ColorRGBA _color
       (send _color :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; cob_3d_mapping_msgs/Polygon[] _polygons
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _polygons (let (r) (dotimes (i n) (push (instance cob_3d_mapping_msgs::Polygon :init) r)) r))
     (dolist (elem- _polygons)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; float32 _weight
     (setq _weight (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; std_msgs/ColorRGBA _color
     (send _color :deserialize buf ptr-) (incf ptr- (send _color :serialization-length))
   ;;
   self)
  )

(setf (get cob_3d_mapping_msgs::Plane :md5sum-) "dfaae30aed6b6175cbcc972b30123ff6")
(setf (get cob_3d_mapping_msgs::Plane :datatype-) "cob_3d_mapping_msgs/Plane")
(setf (get cob_3d_mapping_msgs::Plane :definition-)
      "#polygons describing hull
#first polygon -> outer hull
Polygon[] polygons

#pose describing parameters of plane
geometry_msgs/Pose pose

#number of points
float32 weight

#averaged color [deprecated to be removed]
std_msgs/ColorRGBA color

================================================================================
MSG: cob_3d_mapping_msgs/Polygon
#points describing polygon
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

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a

")



(provide :cob_3d_mapping_msgs/Plane "dfaae30aed6b6175cbcc972b30123ff6")


