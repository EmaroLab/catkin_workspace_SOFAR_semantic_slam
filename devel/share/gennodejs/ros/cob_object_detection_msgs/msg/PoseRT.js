// Auto-generated. Do not edit!

// (in-package cob_object_detection_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PoseRT {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rvec = null;
      this.tvec = null;
    }
    else {
      if (initObj.hasOwnProperty('rvec')) {
        this.rvec = initObj.rvec
      }
      else {
        this.rvec = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('tvec')) {
        this.tvec = initObj.tvec
      }
      else {
        this.tvec = new Array(3).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PoseRT
    // Check that the constant length array field [rvec] has the right length
    if (obj.rvec.length !== 3) {
      throw new Error('Unable to serialize array field rvec - length must be 3')
    }
    // Serialize message field [rvec]
    bufferOffset = _arraySerializer.float64(obj.rvec, buffer, bufferOffset, 3);
    // Check that the constant length array field [tvec] has the right length
    if (obj.tvec.length !== 3) {
      throw new Error('Unable to serialize array field tvec - length must be 3')
    }
    // Serialize message field [tvec]
    bufferOffset = _arraySerializer.float64(obj.tvec, buffer, bufferOffset, 3);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PoseRT
    let len;
    let data = new PoseRT(null);
    // Deserialize message field [rvec]
    data.rvec = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    // Deserialize message field [tvec]
    data.tvec = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cob_object_detection_msgs/PoseRT';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd6802a5a6d10cce0b5eea91c5defc39f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #3x1 rotation vector, Rodrigues axis angle form,
    #angle = norm(rvec) -- radians
    #axis = rvec/norm(rvec) -- unit length
    float64[3]  rvec
    #3x1 translation vector, in meters
    float64[3]  tvec
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PoseRT(null);
    if (msg.rvec !== undefined) {
      resolved.rvec = msg.rvec;
    }
    else {
      resolved.rvec = new Array(3).fill(0)
    }

    if (msg.tvec !== undefined) {
      resolved.tvec = msg.tvec;
    }
    else {
      resolved.tvec = new Array(3).fill(0)
    }

    return resolved;
    }
};

module.exports = PoseRT;
