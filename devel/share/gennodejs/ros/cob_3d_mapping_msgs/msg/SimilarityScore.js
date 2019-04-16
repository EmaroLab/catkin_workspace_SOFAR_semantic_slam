// Auto-generated. Do not edit!

// (in-package cob_3d_mapping_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class SimilarityScore {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ID = null;
      this.prob = null;
    }
    else {
      if (initObj.hasOwnProperty('ID')) {
        this.ID = initObj.ID
      }
      else {
        this.ID = 0;
      }
      if (initObj.hasOwnProperty('prob')) {
        this.prob = initObj.prob
      }
      else {
        this.prob = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SimilarityScore
    // Serialize message field [ID]
    bufferOffset = _serializer.uint32(obj.ID, buffer, bufferOffset);
    // Serialize message field [prob]
    bufferOffset = _serializer.float32(obj.prob, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SimilarityScore
    let len;
    let data = new SimilarityScore(null);
    // Deserialize message field [ID]
    data.ID = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [prob]
    data.prob = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cob_3d_mapping_msgs/SimilarityScore';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bae66c7dce1ddf1ccfcfb042f78f22aa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 ID
    float32 prob
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SimilarityScore(null);
    if (msg.ID !== undefined) {
      resolved.ID = msg.ID;
    }
    else {
      resolved.ID = 0
    }

    if (msg.prob !== undefined) {
      resolved.prob = msg.prob;
    }
    else {
      resolved.prob = 0.0
    }

    return resolved;
    }
};

module.exports = SimilarityScore;
