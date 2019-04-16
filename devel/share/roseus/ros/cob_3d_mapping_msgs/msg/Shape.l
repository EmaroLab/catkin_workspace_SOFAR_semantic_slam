;; Auto-generated. Do not edit!


(when (boundp 'cob_3d_mapping_msgs::Shape)
  (if (not (find-package "COB_3D_MAPPING_MSGS"))
    (make-package "COB_3D_MAPPING_MSGS"))
  (shadow 'Shape (find-package "COB_3D_MAPPING_MSGS")))
(unless (find-package "COB_3D_MAPPING_MSGS::SHAPE")
  (make-package "COB_3D_MAPPING_MSGS::SHAPE"))

(in-package "ROS")
;;//! \htmlinclude Shape.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*POLYGON*" (find-package "COB_3D_MAPPING_MSGS::SHAPE"))
(shadow '*POLYGON* (find-package "COB_3D_MAPPING_MSGS::SHAPE"))
(defconstant cob_3d_mapping_msgs::Shape::*POLYGON* 0)
(intern "*LINE*" (find-package "COB_3D_MAPPING_MSGS::SHAPE"))
(shadow '*LINE* (find-package "COB_3D_MAPPING_MSGS::SHAPE"))
(defconstant cob_3d_mapping_msgs::Shape::*LINE* 1)
(intern "*CURVED*" (find-package "COB_3D_MAPPING_MSGS::SHAPE"))
(shadow '*CURVED* (find-package "COB_3D_MAPPING_MSGS::SHAPE"))
(defconstant cob_3d_mapping_msgs::Shape::*CURVED* 2)
(intern "*MESH*" (find-package "COB_3D_MAPPING_MSGS::SHAPE"))
(shadow '*MESH* (find-package "COB_3D_MAPPING_MSGS::SHAPE"))
(defconstant cob_3d_mapping_msgs::Shape::*MESH* 3)
(intern "*OTHER*" (find-package "COB_3D_MAPPING_MSGS::SHAPE"))
(shadow '*OTHER* (find-package "COB_3D_MAPPING_MSGS::SHAPE"))
(defconstant cob_3d_mapping_msgs::Shape::*OTHER* 4)
(intern "*CYLINDER*" (find-package "COB_3D_MAPPING_MSGS::SHAPE"))
(shadow '*CYLINDER* (find-package "COB_3D_MAPPING_MSGS::SHAPE"))
(defconstant cob_3d_mapping_msgs::Shape::*CYLINDER* 5)
(defclass cob_3d_mapping_msgs::Shape
  :super ros::object
  :slots (_header _type _id _weight _pose _params _points _vertices _color _holes ))

(defmethod cob_3d_mapping_msgs::Shape
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:type __type) 0)
    ((:id __id) 0)
    ((:weight __weight) 0.0)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:params __params) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:points __points) (let (r) (dotimes (i 0) (push (instance sensor_msgs::PointCloud2 :init) r)) r))
    ((:vertices __vertices) (make-array 0 :initial-element 0 :element-type :integer))
    ((:color __color) (instance std_msgs::ColorRGBA :init))
    ((:holes __holes) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _type (round __type))
   (setq _id (round __id))
   (setq _weight (float __weight))
   (setq _pose __pose)
   (setq _params __params)
   (setq _points __points)
   (setq _vertices __vertices)
   (setq _color __color)
   (setq _holes __holes)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:weight
   (&optional __weight)
   (if __weight (setq _weight __weight)) _weight)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:params
   (&optional __params)
   (if __params (setq _params __params)) _params)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:vertices
   (&optional __vertices)
   (if __vertices (setq _vertices __vertices)) _vertices)
  (:color
   (&rest __color)
   (if (keywordp (car __color))
       (send* _color __color)
     (progn
       (if __color (setq _color (car __color)))
       _color)))
  (:holes
   (&optional __holes)
   (if __holes (setq _holes __holes)) _holes)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; byte _type
    1
    ;; int32 _id
    4
    ;; float32 _weight
    4
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; float64[] _params
    (* 8    (length _params)) 4
    ;; sensor_msgs/PointCloud2[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ;; int32[] _vertices
    (* 4    (length _vertices)) 4
    ;; std_msgs/ColorRGBA _color
    (send _color :serialization-length)
    ;; bool[] _holes
    (* 1    (length _holes)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; byte _type
       (write-byte _type s)
     ;; int32 _id
       (write-long _id s)
     ;; float32 _weight
       (sys::poke _weight (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; float64[] _params
     (write-long (length _params) s)
     (dotimes (i (length _params))
       (sys::poke (elt _params i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; sensor_msgs/PointCloud2[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;; int32[] _vertices
     (write-long (length _vertices) s)
     (dotimes (i (length _vertices))
       (write-long (elt _vertices i) s)
       )
     ;; std_msgs/ColorRGBA _color
       (send _color :serialize s)
     ;; bool[] _holes
     (write-long (length _holes) s)
     (dotimes (i (length _holes))
       (if (elt _holes i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; byte _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _type 127) (setq _type (- _type 256)))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _weight
     (setq _weight (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; float64[] _params
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _params (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _params i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; sensor_msgs/PointCloud2[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance sensor_msgs::PointCloud2 :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32[] _vertices
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vertices (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _vertices i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; std_msgs/ColorRGBA _color
     (send _color :deserialize buf ptr-) (incf ptr- (send _color :serialization-length))
   ;; bool[] _holes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _holes (make-list n))
     (dotimes (i n)
     (setf (elt _holes i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(setf (get cob_3d_mapping_msgs::Shape :md5sum-) "d5fc6a3556290a571009cfc613a557d0")
(setf (get cob_3d_mapping_msgs::Shape :datatype-) "cob_3d_mapping_msgs/Shape")
(setf (get cob_3d_mapping_msgs::Shape :definition-)
      "Header header

uint8 POLYGON=0
uint8 LINE=1
uint8 CURVED=2
uint8 MESH=3
uint8 OTHER=4
uint8 CYLINDER=5
# potential extensions: SPHERE, CYLINDER, BOX

byte type
int32 id
float32 weight

geometry_msgs/Pose pose

# define shape parameters
# for plane
# normal vector = params[0],params[1],params[2]
#	d = params[3]
# for line
# direction vector = params[0],params[1],params[2]
# for curved
# 3 for plane, 6 for polynom 2nd degree, ...
#
#for cylinder
# symmetry axis = params[0],params[1],params[2]
# radius	= params[3]
# min and max height (rel to origin) = params[4], params[5]
#
float64[] params

sensor_msgs/PointCloud2[] points

#### define mesh ####
# each three entries form a triangle; indices of points are stored
int32[] vertices

#geometry_msgs/Point32 centroid
std_msgs/ColorRGBA color
bool[] holes

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
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a

")



(provide :cob_3d_mapping_msgs/Shape "d5fc6a3556290a571009cfc613a557d0")


