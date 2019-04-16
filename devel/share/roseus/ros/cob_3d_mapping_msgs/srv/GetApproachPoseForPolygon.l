;; Auto-generated. Do not edit!


(when (boundp 'cob_3d_mapping_msgs::GetApproachPoseForPolygon)
  (if (not (find-package "COB_3D_MAPPING_MSGS"))
    (make-package "COB_3D_MAPPING_MSGS"))
  (shadow 'GetApproachPoseForPolygon (find-package "COB_3D_MAPPING_MSGS")))
(unless (find-package "COB_3D_MAPPING_MSGS::GETAPPROACHPOSEFORPOLYGON")
  (make-package "COB_3D_MAPPING_MSGS::GETAPPROACHPOSEFORPOLYGON"))
(unless (find-package "COB_3D_MAPPING_MSGS::GETAPPROACHPOSEFORPOLYGONREQUEST")
  (make-package "COB_3D_MAPPING_MSGS::GETAPPROACHPOSEFORPOLYGONREQUEST"))
(unless (find-package "COB_3D_MAPPING_MSGS::GETAPPROACHPOSEFORPOLYGONRESPONSE")
  (make-package "COB_3D_MAPPING_MSGS::GETAPPROACHPOSEFORPOLYGONRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass cob_3d_mapping_msgs::GetApproachPoseForPolygonRequest
  :super ros::object
  :slots (_polygon ))

(defmethod cob_3d_mapping_msgs::GetApproachPoseForPolygonRequest
  (:init
   (&key
    ((:polygon __polygon) (instance cob_3d_mapping_msgs::Shape :init))
    )
   (send-super :init)
   (setq _polygon __polygon)
   self)
  (:polygon
   (&rest __polygon)
   (if (keywordp (car __polygon))
       (send* _polygon __polygon)
     (progn
       (if __polygon (setq _polygon (car __polygon)))
       _polygon)))
  (:serialization-length
   ()
   (+
    ;; cob_3d_mapping_msgs/Shape _polygon
    (send _polygon :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; cob_3d_mapping_msgs/Shape _polygon
       (send _polygon :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; cob_3d_mapping_msgs/Shape _polygon
     (send _polygon :deserialize buf ptr-) (incf ptr- (send _polygon :serialization-length))
   ;;
   self)
  )

(defclass cob_3d_mapping_msgs::GetApproachPoseForPolygonResponse
  :super ros::object
  :slots (_approach_poses ))

(defmethod cob_3d_mapping_msgs::GetApproachPoseForPolygonResponse
  (:init
   (&key
    ((:approach_poses __approach_poses) (instance geometry_msgs::PoseArray :init))
    )
   (send-super :init)
   (setq _approach_poses __approach_poses)
   self)
  (:approach_poses
   (&rest __approach_poses)
   (if (keywordp (car __approach_poses))
       (send* _approach_poses __approach_poses)
     (progn
       (if __approach_poses (setq _approach_poses (car __approach_poses)))
       _approach_poses)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseArray _approach_poses
    (send _approach_poses :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseArray _approach_poses
       (send _approach_poses :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseArray _approach_poses
     (send _approach_poses :deserialize buf ptr-) (incf ptr- (send _approach_poses :serialization-length))
   ;;
   self)
  )

(defclass cob_3d_mapping_msgs::GetApproachPoseForPolygon
  :super ros::object
  :slots ())

(setf (get cob_3d_mapping_msgs::GetApproachPoseForPolygon :md5sum-) "2e4a014d60955a8917ce409cfc03b74d")
(setf (get cob_3d_mapping_msgs::GetApproachPoseForPolygon :datatype-) "cob_3d_mapping_msgs/GetApproachPoseForPolygon")
(setf (get cob_3d_mapping_msgs::GetApproachPoseForPolygon :request) cob_3d_mapping_msgs::GetApproachPoseForPolygonRequest)
(setf (get cob_3d_mapping_msgs::GetApproachPoseForPolygon :response) cob_3d_mapping_msgs::GetApproachPoseForPolygonResponse)

(defmethod cob_3d_mapping_msgs::GetApproachPoseForPolygonRequest
  (:response () (instance cob_3d_mapping_msgs::GetApproachPoseForPolygonResponse :init)))

(setf (get cob_3d_mapping_msgs::GetApproachPoseForPolygonRequest :md5sum-) "2e4a014d60955a8917ce409cfc03b74d")
(setf (get cob_3d_mapping_msgs::GetApproachPoseForPolygonRequest :datatype-) "cob_3d_mapping_msgs/GetApproachPoseForPolygonRequest")
(setf (get cob_3d_mapping_msgs::GetApproachPoseForPolygonRequest :definition-)
      "cob_3d_mapping_msgs/Shape polygon

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
---
geometry_msgs/PoseArray approach_poses


================================================================================
MSG: geometry_msgs/PoseArray
# An array of poses with a header for global reference.

Header header

Pose[] poses

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
")

(setf (get cob_3d_mapping_msgs::GetApproachPoseForPolygonResponse :md5sum-) "2e4a014d60955a8917ce409cfc03b74d")
(setf (get cob_3d_mapping_msgs::GetApproachPoseForPolygonResponse :datatype-) "cob_3d_mapping_msgs/GetApproachPoseForPolygonResponse")
(setf (get cob_3d_mapping_msgs::GetApproachPoseForPolygonResponse :definition-)
      "cob_3d_mapping_msgs/Shape polygon

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
---
geometry_msgs/PoseArray approach_poses


================================================================================
MSG: geometry_msgs/PoseArray
# An array of poses with a header for global reference.

Header header

Pose[] poses

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
")



(provide :cob_3d_mapping_msgs/GetApproachPoseForPolygon "2e4a014d60955a8917ce409cfc03b74d")


