// Auto-generated. Do not edit!

// (in-package cob_3d_mapping_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SimilarityScore = require('./SimilarityScore.js');
let PolylinePoint = require('./PolylinePoint.js');
let Feature = require('./Feature.js');

//-----------------------------------------------------------

class CurvedPolygon {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.ID = null;
      this.parameter = null;
      this.score = null;
      this.polyline = null;
      this.features = null;
      this.energy = null;
      this.weight = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('ID')) {
        this.ID = initObj.ID
      }
      else {
        this.ID = 0;
      }
      if (initObj.hasOwnProperty('parameter')) {
        this.parameter = initObj.parameter
      }
      else {
        this.parameter = new Array(6).fill(0);
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = [];
      }
      if (initObj.hasOwnProperty('polyline')) {
        this.polyline = initObj.polyline
      }
      else {
        this.polyline = [];
      }
      if (initObj.hasOwnProperty('features')) {
        this.features = initObj.features
      }
      else {
        this.features = [];
      }
      if (initObj.hasOwnProperty('energy')) {
        this.energy = initObj.energy
      }
      else {
        this.energy = '';
      }
      if (initObj.hasOwnProperty('weight')) {
        this.weight = initObj.weight
      }
      else {
        this.weight = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CurvedPolygon
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [ID]
    bufferOffset = _serializer.uint32(obj.ID, buffer, bufferOffset);
    // Check that the constant length array field [parameter] has the right length
    if (obj.parameter.length !== 6) {
      throw new Error('Unable to serialize array field parameter - length must be 6')
    }
    // Serialize message field [parameter]
    bufferOffset = _arraySerializer.float32(obj.parameter, buffer, bufferOffset, 6);
    // Serialize message field [score]
    // Serialize the length for message field [score]
    bufferOffset = _serializer.uint32(obj.score.length, buffer, bufferOffset);
    obj.score.forEach((val) => {
      bufferOffset = SimilarityScore.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [polyline]
    // Serialize the length for message field [polyline]
    bufferOffset = _serializer.uint32(obj.polyline.length, buffer, bufferOffset);
    obj.polyline.forEach((val) => {
      bufferOffset = PolylinePoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [features]
    // Serialize the length for message field [features]
    bufferOffset = _serializer.uint32(obj.features.length, buffer, bufferOffset);
    obj.features.forEach((val) => {
      bufferOffset = Feature.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [energy]
    bufferOffset = _serializer.string(obj.energy, buffer, bufferOffset);
    // Serialize message field [weight]
    bufferOffset = _serializer.float32(obj.weight, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CurvedPolygon
    let len;
    let data = new CurvedPolygon(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [ID]
    data.ID = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [parameter]
    data.parameter = _arrayDeserializer.float32(buffer, bufferOffset, 6)
    // Deserialize message field [score]
    // Deserialize array length for message field [score]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.score = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.score[i] = SimilarityScore.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [polyline]
    // Deserialize array length for message field [polyline]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.polyline = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.polyline[i] = PolylinePoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [features]
    // Deserialize array length for message field [features]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.features = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.features[i] = Feature.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [energy]
    data.energy = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [weight]
    data.weight = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.score.length;
    length += 12 * object.polyline.length;
    length += 16 * object.features.length;
    length += object.energy.length;
    return length + 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cob_3d_mapping_msgs/CurvedPolygon';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '44b9c6adf55085288b1561faf0dcdb6d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new CurvedPolygon(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.ID !== undefined) {
      resolved.ID = msg.ID;
    }
    else {
      resolved.ID = 0
    }

    if (msg.parameter !== undefined) {
      resolved.parameter = msg.parameter;
    }
    else {
      resolved.parameter = new Array(6).fill(0)
    }

    if (msg.score !== undefined) {
      resolved.score = new Array(msg.score.length);
      for (let i = 0; i < resolved.score.length; ++i) {
        resolved.score[i] = SimilarityScore.Resolve(msg.score[i]);
      }
    }
    else {
      resolved.score = []
    }

    if (msg.polyline !== undefined) {
      resolved.polyline = new Array(msg.polyline.length);
      for (let i = 0; i < resolved.polyline.length; ++i) {
        resolved.polyline[i] = PolylinePoint.Resolve(msg.polyline[i]);
      }
    }
    else {
      resolved.polyline = []
    }

    if (msg.features !== undefined) {
      resolved.features = new Array(msg.features.length);
      for (let i = 0; i < resolved.features.length; ++i) {
        resolved.features[i] = Feature.Resolve(msg.features[i]);
      }
    }
    else {
      resolved.features = []
    }

    if (msg.energy !== undefined) {
      resolved.energy = msg.energy;
    }
    else {
      resolved.energy = ''
    }

    if (msg.weight !== undefined) {
      resolved.weight = msg.weight;
    }
    else {
      resolved.weight = 0.0
    }

    return resolved;
    }
};

module.exports = CurvedPolygon;
