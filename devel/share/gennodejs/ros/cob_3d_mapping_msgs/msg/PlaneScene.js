// Auto-generated. Do not edit!

// (in-package cob_3d_mapping_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Plane = require('./Plane.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PlaneScene {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.planes = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('planes')) {
        this.planes = initObj.planes
      }
      else {
        this.planes = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlaneScene
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [planes]
    // Serialize the length for message field [planes]
    bufferOffset = _serializer.uint32(obj.planes.length, buffer, bufferOffset);
    obj.planes.forEach((val) => {
      bufferOffset = Plane.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlaneScene
    let len;
    let data = new PlaneScene(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [planes]
    // Deserialize array length for message field [planes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.planes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.planes[i] = Plane.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.planes.forEach((val) => {
      length += Plane.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cob_3d_mapping_msgs/PlaneScene';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5aa30c5b0316a946cb91f45ed3f1d963';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    #summary of planes
    Plane[] planes
    
    #camera of input data
    #sensor_msgs/CameraInfo camera_info
    
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
    MSG: cob_3d_mapping_msgs/Plane
    #polygons describing hull
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlaneScene(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.planes !== undefined) {
      resolved.planes = new Array(msg.planes.length);
      for (let i = 0; i < resolved.planes.length; ++i) {
        resolved.planes[i] = Plane.Resolve(msg.planes[i]);
      }
    }
    else {
      resolved.planes = []
    }

    return resolved;
    }
};

module.exports = PlaneScene;
