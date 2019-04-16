// Auto-generated. Do not edit!

// (in-package cob_3d_mapping_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Shape = require('../msg/Shape.js');

//-----------------------------------------------------------

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class GetApproachPoseForPolygonRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.polygon = null;
    }
    else {
      if (initObj.hasOwnProperty('polygon')) {
        this.polygon = initObj.polygon
      }
      else {
        this.polygon = new Shape();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetApproachPoseForPolygonRequest
    // Serialize message field [polygon]
    bufferOffset = Shape.serialize(obj.polygon, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetApproachPoseForPolygonRequest
    let len;
    let data = new GetApproachPoseForPolygonRequest(null);
    // Deserialize message field [polygon]
    data.polygon = Shape.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Shape.getMessageSize(object.polygon);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cob_3d_mapping_msgs/GetApproachPoseForPolygonRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a515bd312108ad51f996146221a5438a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    cob_3d_mapping_msgs/Shape polygon
    
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
    # contents of the "fields" array.
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetApproachPoseForPolygonRequest(null);
    if (msg.polygon !== undefined) {
      resolved.polygon = Shape.Resolve(msg.polygon)
    }
    else {
      resolved.polygon = new Shape()
    }

    return resolved;
    }
};

class GetApproachPoseForPolygonResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.approach_poses = null;
    }
    else {
      if (initObj.hasOwnProperty('approach_poses')) {
        this.approach_poses = initObj.approach_poses
      }
      else {
        this.approach_poses = new geometry_msgs.msg.PoseArray();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetApproachPoseForPolygonResponse
    // Serialize message field [approach_poses]
    bufferOffset = geometry_msgs.msg.PoseArray.serialize(obj.approach_poses, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetApproachPoseForPolygonResponse
    let len;
    let data = new GetApproachPoseForPolygonResponse(null);
    // Deserialize message field [approach_poses]
    data.approach_poses = geometry_msgs.msg.PoseArray.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseArray.getMessageSize(object.approach_poses);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cob_3d_mapping_msgs/GetApproachPoseForPolygonResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '19bb4815c71649ba6ce299aa4a70b51e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetApproachPoseForPolygonResponse(null);
    if (msg.approach_poses !== undefined) {
      resolved.approach_poses = geometry_msgs.msg.PoseArray.Resolve(msg.approach_poses)
    }
    else {
      resolved.approach_poses = new geometry_msgs.msg.PoseArray()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetApproachPoseForPolygonRequest,
  Response: GetApproachPoseForPolygonResponse,
  md5sum() { return '2e4a014d60955a8917ce409cfc03b74d'; },
  datatype() { return 'cob_3d_mapping_msgs/GetApproachPoseForPolygon'; }
};
