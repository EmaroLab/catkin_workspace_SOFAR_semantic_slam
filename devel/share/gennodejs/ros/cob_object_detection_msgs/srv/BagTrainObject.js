// Auto-generated. Do not edit!

// (in-package cob_object_detection_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class BagTrainObjectRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.object_name = null;
    }
    else {
      if (initObj.hasOwnProperty('object_name')) {
        this.object_name = initObj.object_name
      }
      else {
        this.object_name = new std_msgs.msg.String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BagTrainObjectRequest
    // Serialize message field [object_name]
    bufferOffset = std_msgs.msg.String.serialize(obj.object_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BagTrainObjectRequest
    let len;
    let data = new BagTrainObjectRequest(null);
    // Deserialize message field [object_name]
    data.object_name = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.object_name);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cob_object_detection_msgs/BagTrainObjectRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'adb33ef101026c3e15d799e3decf403f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/String object_name
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BagTrainObjectRequest(null);
    if (msg.object_name !== undefined) {
      resolved.object_name = std_msgs.msg.String.Resolve(msg.object_name)
    }
    else {
      resolved.object_name = new std_msgs.msg.String()
    }

    return resolved;
    }
};

class BagTrainObjectResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.trained = null;
    }
    else {
      if (initObj.hasOwnProperty('trained')) {
        this.trained = initObj.trained
      }
      else {
        this.trained = new std_msgs.msg.String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BagTrainObjectResponse
    // Serialize message field [trained]
    bufferOffset = std_msgs.msg.String.serialize(obj.trained, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BagTrainObjectResponse
    let len;
    let data = new BagTrainObjectResponse(null);
    // Deserialize message field [trained]
    data.trained = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.trained);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cob_object_detection_msgs/BagTrainObjectResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a94192f68364f039ed20f2ad560e48fd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/String trained
    
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BagTrainObjectResponse(null);
    if (msg.trained !== undefined) {
      resolved.trained = std_msgs.msg.String.Resolve(msg.trained)
    }
    else {
      resolved.trained = new std_msgs.msg.String()
    }

    return resolved;
    }
};

module.exports = {
  Request: BagTrainObjectRequest,
  Response: BagTrainObjectResponse,
  md5sum() { return 'e054914e8be752a53cf516ce4c1d583c'; },
  datatype() { return 'cob_object_detection_msgs/BagTrainObject'; }
};
