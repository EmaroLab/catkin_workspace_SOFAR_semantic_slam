;; Auto-generated. Do not edit!


(when (boundp 'cob_3d_mapping_msgs::ShapeArray)
  (if (not (find-package "COB_3D_MAPPING_MSGS"))
    (make-package "COB_3D_MAPPING_MSGS"))
  (shadow 'ShapeArray (find-package "COB_3D_MAPPING_MSGS")))
(unless (find-package "COB_3D_MAPPING_MSGS::SHAPEARRAY")
  (make-package "COB_3D_MAPPING_MSGS::SHAPEARRAY"))

(in-package "ROS")
;;//! \htmlinclude ShapeArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cob_3d_mapping_msgs::ShapeArray
  :super ros::object
  :slots (_header _shapes ))

(defmethod cob_3d_mapping_msgs::ShapeArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:shapes __shapes) (let (r) (dotimes (i 0) (push (instance cob_3d_mapping_msgs::Shape :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _shapes __shapes)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:shapes
   (&rest __shapes)
   (if (keywordp (car __shapes))
       (send* _shapes __shapes)
     (progn
       (if __shapes (setq _shapes (car __shapes)))
       _shapes)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; cob_3d_mapping_msgs/Shape[] _shapes
    (apply #'+ (send-all _shapes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; cob_3d_mapping_msgs/Shape[] _shapes
     (write-long (length _shapes) s)
     (dolist (elem _shapes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; cob_3d_mapping_msgs/Shape[] _shapes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _shapes (let (r) (dotimes (i n) (push (instance cob_3d_mapping_msgs::Shape :init) r)) r))
     (dolist (elem- _shapes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get cob_3d_mapping_msgs::ShapeArray :md5sum-) "bc723f28be387c6f3061c2c124641aac")
(setf (get cob_3d_mapping_msgs::ShapeArray :datatype-) "cob_3d_mapping_msgs/ShapeArray")
(setf (get cob_3d_mapping_msgs::ShapeArray :definition-)
      "# An array of poses with a header for global reference.

Header header

cob_3d_mapping_msgs/Shape[] shapes
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
MSG: cob_3d_mapping_msgs/Shape
Header header

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



(provide :cob_3d_mapping_msgs/ShapeArray "bc723f28be387c6f3061c2c124641aac")


