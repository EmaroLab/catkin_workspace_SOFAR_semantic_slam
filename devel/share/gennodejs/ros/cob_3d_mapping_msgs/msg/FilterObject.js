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

class FilterObject {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.height = null;
      this.width = null;
      this.curv_h = null;
      this.curv_w = null;
    }
    else {
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0.0;
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0.0;
      }
      if (initObj.hasOwnProperty('curv_h')) {
        this.curv_h = initObj.curv_h
      }
      else {
        this.curv_h = 0.0;
      }
      if (initObj.hasOwnProperty('curv_w')) {
        this.curv_w = initObj.curv_w
      }
      else {
        this.curv_w = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FilterObject
    // Serialize message field [height]
    bufferOffset = _serializer.float32(obj.height, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.float32(obj.width, buffer, bufferOffset);
    // Serialize message field [curv_h]
    bufferOffset = _serializer.float32(obj.curv_h, buffer, bufferOffset);
    // Serialize message field [curv_w]
    bufferOffset = _serializer.float32(obj.curv_w, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FilterObject
    let len;
    let data = new FilterObject(null);
    // Deserialize message field [height]
    data.height = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [curv_h]
    data.curv_h = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [curv_w]
    data.curv_w = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cob_3d_mapping_msgs/FilterObject';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3ce8bd944e4374d48880ed66855bf0be';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 height	#longer side
    float32 width	#smaller side
    float32 curv_h	#curvature to height
    float32 curv_w	#curvature to width
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FilterObject(null);
    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0.0
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0.0
    }

    if (msg.curv_h !== undefined) {
      resolved.curv_h = msg.curv_h;
    }
    else {
      resolved.curv_h = 0.0
    }

    if (msg.curv_w !== undefined) {
      resolved.curv_w = msg.curv_w;
    }
    else {
      resolved.curv_w = 0.0
    }

    return resolved;
    }
};

module.exports = FilterObject;
