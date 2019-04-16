// Auto-generated. Do not edit!

// (in-package cob_3d_mapping_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Shape {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.type = null;
      this.id = null;
      this.weight = null;
      this.pose = null;
      this.params = null;
      this.points = null;
      this.vertices = null;
      this.color = null;
      this.holes = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('weight')) {
        this.weight = initObj.weight
      }
      else {
        this.weight = 0.0;
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('params')) {
        this.params = initObj.params
      }
      else {
        this.params = [];
      }
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = [];
      }
      if (initObj.hasOwnProperty('vertices')) {
        this.vertices = initObj.vertices
      }
      else {
        this.vertices = [];
      }
      if (initObj.hasOwnProperty('color')) {
        this.color = initObj.color
      }
      else {
        this.color = new std_msgs.msg.ColorRGBA();
      }
      if (initObj.hasOwnProperty('holes')) {
        this.holes = initObj.holes
      }
      else {
        this.holes = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Shape
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.byte(obj.type, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [weight]
    bufferOffset = _serializer.float32(obj.weight, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [params]
    bufferOffset = _arraySerializer.float64(obj.params, buffer, bufferOffset, null);
    // Serialize message field [points]
    // Serialize the length for message field [points]
    bufferOffset = _serializer.uint32(obj.points.length, buffer, bufferOffset);
    obj.points.forEach((val) => {
      bufferOffset = sensor_msgs.msg.PointCloud2.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [vertices]
    bufferOffset = _arraySerializer.int32(obj.vertices, buffer, bufferOffset, null);
    // Serialize message field [color]
    bufferOffset = std_msgs.msg.ColorRGBA.serialize(obj.color, buffer, bufferOffset);
    // Serialize message field [holes]
    bufferOffset = _arraySerializer.bool(obj.holes, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Shape
    let len;
    let data = new Shape(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.byte(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [weight]
    data.weight = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [params]
    data.params = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [points]
    // Deserialize array length for message field [points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points[i] = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [vertices]
    data.vertices = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [color]
    data.color = std_msgs.msg.ColorRGBA.deserialize(buffer, bufferOffset);
    // Deserialize message field [holes]
    data.holes = _arrayDeserializer.bool(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 8 * object.params.length;
    object.points.forEach((val) => {
      length += sensor_msgs.msg.PointCloud2.getMessageSize(val);
    });
    length += 4 * object.vertices.length;
    length += object.holes.length;
    return length + 97;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cob_3d_mapping_msgs/Shape';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd5fc6a3556290a571009cfc613a557d0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Shape(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.weight !== undefined) {
      resolved.weight = msg.weight;
    }
    else {
      resolved.weight = 0.0
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.params !== undefined) {
      resolved.params = msg.params;
    }
    else {
      resolved.params = []
    }

    if (msg.points !== undefined) {
      resolved.points = new Array(msg.points.length);
      for (let i = 0; i < resolved.points.length; ++i) {
        resolved.points[i] = sensor_msgs.msg.PointCloud2.Resolve(msg.points[i]);
      }
    }
    else {
      resolved.points = []
    }

    if (msg.vertices !== undefined) {
      resolved.vertices = msg.vertices;
    }
    else {
      resolved.vertices = []
    }

    if (msg.color !== undefined) {
      resolved.color = std_msgs.msg.ColorRGBA.Resolve(msg.color)
    }
    else {
      resolved.color = new std_msgs.msg.ColorRGBA()
    }

    if (msg.holes !== undefined) {
      resolved.holes = msg.holes;
    }
    else {
      resolved.holes = []
    }

    return resolved;
    }
};

// Constants for message
Shape.Constants = {
  POLYGON: 0,
  LINE: 1,
  CURVED: 2,
  MESH: 3,
  OTHER: 4,
  CYLINDER: 5,
}

module.exports = Shape;
