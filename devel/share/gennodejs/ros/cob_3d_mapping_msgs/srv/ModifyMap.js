// Auto-generated. Do not edit!

// (in-package cob_3d_mapping_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ShapeArray = require('../msg/ShapeArray.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ModifyMapRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action = null;
      this.shapes = null;
    }
    else {
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = 0;
      }
      if (initObj.hasOwnProperty('shapes')) {
        this.shapes = initObj.shapes
      }
      else {
        this.shapes = new ShapeArray();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ModifyMapRequest
    // Serialize message field [action]
    bufferOffset = _serializer.int32(obj.action, buffer, bufferOffset);
    // Serialize message field [shapes]
    bufferOffset = ShapeArray.serialize(obj.shapes, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ModifyMapRequest
    let len;
    let data = new ModifyMapRequest(null);
    // Deserialize message field [action]
    data.action = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [shapes]
    data.shapes = ShapeArray.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ShapeArray.getMessageSize(object.shapes);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cob_3d_mapping_msgs/ModifyMapRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ea968d0c07a800a6b17527a191a32e88';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 ADD=0
    uint8 MODIFY=1
    uint8 DELETE=2
    
    int32 action
    cob_3d_mapping_msgs/ShapeArray shapes
    
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
    const resolved = new ModifyMapRequest(null);
    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = 0
    }

    if (msg.shapes !== undefined) {
      resolved.shapes = ShapeArray.Resolve(msg.shapes)
    }
    else {
      resolved.shapes = new ShapeArray()
    }

    return resolved;
    }
};

// Constants for message
ModifyMapRequest.Constants = {
  ADD: 0,
  MODIFY: 1,
  DELETE: 2,
}

class ModifyMapResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ModifyMapResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ModifyMapResponse
    let len;
    let data = new ModifyMapResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cob_3d_mapping_msgs/ModifyMapResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ModifyMapResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: ModifyMapRequest,
  Response: ModifyMapResponse,
  md5sum() { return 'ea968d0c07a800a6b17527a191a32e88'; },
  datatype() { return 'cob_3d_mapping_msgs/ModifyMap'; }
};
