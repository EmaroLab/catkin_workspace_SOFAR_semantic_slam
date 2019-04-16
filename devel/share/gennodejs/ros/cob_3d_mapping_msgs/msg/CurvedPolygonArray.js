// Auto-generated. Do not edit!

// (in-package cob_3d_mapping_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CurvedPolygon = require('./CurvedPolygon.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class CurvedPolygonArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.polygons = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('polygons')) {
        this.polygons = initObj.polygons
      }
      else {
        this.polygons = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CurvedPolygonArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [polygons]
    // Serialize the length for message field [polygons]
    bufferOffset = _serializer.uint32(obj.polygons.length, buffer, bufferOffset);
    obj.polygons.forEach((val) => {
      bufferOffset = CurvedPolygon.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CurvedPolygonArray
    let len;
    let data = new CurvedPolygonArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [polygons]
    // Deserialize array length for message field [polygons]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.polygons = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.polygons[i] = CurvedPolygon.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.polygons.forEach((val) => {
      length += CurvedPolygon.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cob_3d_mapping_msgs/CurvedPolygonArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dca7a231f0d66f77a98e4e50cf3157dc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    CurvedPolygon[] polygons
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
    MSG: cob_3d_mapping_msgs/CurvedPolygon
    time stamp
    uint32 ID
    float32[6] parameter
    #float32[][3] polyline
    SimilarityScore[] score
    PolylinePoint[] polyline
    Feature[] features
    string energy
    float32 weight
    
    ================================================================================
    MSG: cob_3d_mapping_msgs/SimilarityScore
    uint32 ID
    float32 prob
    ================================================================================
    MSG: cob_3d_mapping_msgs/PolylinePoint
    float32 x
    float32 y
    float32 edge_prob
    ================================================================================
    MSG: cob_3d_mapping_msgs/Feature
    float32 x
    float32 y
    float32 z
    uint32 ID
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CurvedPolygonArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.polygons !== undefined) {
      resolved.polygons = new Array(msg.polygons.length);
      for (let i = 0; i < resolved.polygons.length; ++i) {
        resolved.polygons[i] = CurvedPolygon.Resolve(msg.polygons[i]);
      }
    }
    else {
      resolved.polygons = []
    }

    return resolved;
    }
};

module.exports = CurvedPolygonArray;
