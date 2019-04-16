// Auto-generated. Do not edit!

// (in-package cob_3d_mapping_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

let ShapeArray = require('../msg/ShapeArray.js');

//-----------------------------------------------------------

class GetObjectsOfClassRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.class_id = null;
    }
    else {
      if (initObj.hasOwnProperty('class_id')) {
        this.class_id = initObj.class_id
      }
      else {
        this.class_id = new std_msgs.msg.UInt32();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetObjectsOfClassRequest
    // Serialize message field [class_id]
    bufferOffset = std_msgs.msg.UInt32.serialize(obj.class_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetObjectsOfClassRequest
    let len;
    let data = new GetObjectsOfClassRequest(null);
    // Deserialize message field [class_id]
    data.class_id = std_msgs.msg.UInt32.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cob_3d_mapping_msgs/GetObjectsOfClassRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8cd17435496133fe7b904bdd1a1f66ee';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/UInt32 class_id
    
    ================================================================================
    MSG: std_msgs/UInt32
    uint32 data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetObjectsOfClassRequest(null);
    if (msg.class_id !== undefined) {
      resolved.class_id = std_msgs.msg.UInt32.Resolve(msg.class_id)
    }
    else {
      resolved.class_id = new std_msgs.msg.UInt32()
    }

    return resolved;
    }
};

class GetObjectsOfClassResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.objects = null;
    }
    else {
      if (initObj.hasOwnProperty('objects')) {
        this.objects = initObj.objects
      }
      else {
        this.objects = new ShapeArray();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetObjectsOfClassResponse
    // Serialize message field [objects]
    bufferOffset = ShapeArray.serialize(obj.objects, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetObjectsOfClassResponse
    let len;
    let data = new GetObjectsOfClassResponse(null);
    // Deserialize message field [objects]
    data.objects = ShapeArray.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ShapeArray.getMessageSize(object.objects);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cob_3d_mapping_msgs/GetObjectsOfClassResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd3aa665b847f46ea666781345b385880';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    cob_3d_mapping_msgs/ShapeArray objects
    
    
    ================================================================================
    MSG: cob_3d_mapping_msgs/ShapeArray
    # An array of poses with a header for global reference.
    
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
    const resolved = new GetObjectsOfClassResponse(null);
    if (msg.objects !== undefined) {
      resolved.objects = ShapeArray.Resolve(msg.objects)
    }
    else {
      resolved.objects = new ShapeArray()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetObjectsOfClassRequest,
  Response: GetObjectsOfClassResponse,
  md5sum() { return 'bb62786e2e510337925d5e129d0dd7cb'; },
  datatype() { return 'cob_3d_mapping_msgs/GetObjectsOfClass'; }
};
