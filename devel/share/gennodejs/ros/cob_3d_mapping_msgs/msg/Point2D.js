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

class Point2D {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.tex_x = null;
      this.tex_y = null;
      this.var = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('tex_x')) {
        this.tex_x = initObj.tex_x
      }
      else {
        this.tex_x = 0.0;
      }
      if (initObj.hasOwnProperty('tex_y')) {
        this.tex_y = initObj.tex_y
      }
      else {
        this.tex_y = 0.0;
      }
      if (initObj.hasOwnProperty('var')) {
        this.var = initObj.var
      }
      else {
        this.var = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Point2D
    // Serialize message field [x]
    bufferOffset = _serializer.float32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float32(obj.y, buffer, bufferOffset);
    // Serialize message field [tex_x]
    bufferOffset = _serializer.float32(obj.tex_x, buffer, bufferOffset);
    // Serialize message field [tex_y]
    bufferOffset = _serializer.float32(obj.tex_y, buffer, bufferOffset);
    // Serialize message field [var]
    bufferOffset = _serializer.float32(obj.var, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Point2D
    let len;
    let data = new Point2D(null);
    // Deserialize message field [x]
    data.x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tex_x]
    data.tex_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [tex_y]
    data.tex_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [var]
    data.var = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cob_3d_mapping_msgs/Point2D';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fc725bda50adf2bf28e55ed21147f45e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #coordinate on surface
    float32 x
    float32 y
    
    #texture cooridante
    float32 tex_x
    float32 tex_y
    
    float32 var
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Point2D(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.tex_x !== undefined) {
      resolved.tex_x = msg.tex_x;
    }
    else {
      resolved.tex_x = 0.0
    }

    if (msg.tex_y !== undefined) {
      resolved.tex_y = msg.tex_y;
    }
    else {
      resolved.tex_y = 0.0
    }

    if (msg.var !== undefined) {
      resolved.var = msg.var;
    }
    else {
      resolved.var = 0.0
    }

    return resolved;
    }
};

module.exports = Point2D;
