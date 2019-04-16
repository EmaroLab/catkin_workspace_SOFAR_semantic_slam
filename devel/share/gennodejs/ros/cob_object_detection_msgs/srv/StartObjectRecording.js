// Auto-generated. Do not edit!

// (in-package cob_object_detection_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class StartObjectRecordingRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.object_label = null;
    }
    else {
      if (initObj.hasOwnProperty('object_label')) {
        this.object_label = initObj.object_label
      }
      else {
        this.object_label = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StartObjectRecordingRequest
    // Serialize message field [object_label]
    bufferOffset = _serializer.string(obj.object_label, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StartObjectRecordingRequest
    let len;
    let data = new StartObjectRecordingRequest(null);
    // Deserialize message field [object_label]
    data.object_label = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.object_label.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cob_object_detection_msgs/StartObjectRecordingRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ed3bc845528a8aed5f5a16c86665300a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    string object_label
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StartObjectRecordingRequest(null);
    if (msg.object_label !== undefined) {
      resolved.object_label = msg.object_label;
    }
    else {
      resolved.object_label = ''
    }

    return resolved;
    }
};

class StartObjectRecordingResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StartObjectRecordingResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StartObjectRecordingResponse
    let len;
    let data = new StartObjectRecordingResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cob_object_detection_msgs/StartObjectRecordingResponse';
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
    const resolved = new StartObjectRecordingResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: StartObjectRecordingRequest,
  Response: StartObjectRecordingResponse,
  md5sum() { return 'ed3bc845528a8aed5f5a16c86665300a'; },
  datatype() { return 'cob_object_detection_msgs/StartObjectRecording'; }
};
