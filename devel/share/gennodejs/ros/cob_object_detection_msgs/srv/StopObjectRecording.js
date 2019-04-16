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

class StopObjectRecordingRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stop_although_model_is_incomplete = null;
    }
    else {
      if (initObj.hasOwnProperty('stop_although_model_is_incomplete')) {
        this.stop_although_model_is_incomplete = initObj.stop_although_model_is_incomplete
      }
      else {
        this.stop_although_model_is_incomplete = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StopObjectRecordingRequest
    // Serialize message field [stop_although_model_is_incomplete]
    bufferOffset = _serializer.bool(obj.stop_although_model_is_incomplete, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StopObjectRecordingRequest
    let len;
    let data = new StopObjectRecordingRequest(null);
    // Deserialize message field [stop_although_model_is_incomplete]
    data.stop_although_model_is_incomplete = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cob_object_detection_msgs/StopObjectRecordingRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '60ec7755ba9c0b6779b757eba0e03e82';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    bool stop_although_model_is_incomplete
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StopObjectRecordingRequest(null);
    if (msg.stop_although_model_is_incomplete !== undefined) {
      resolved.stop_although_model_is_incomplete = msg.stop_although_model_is_incomplete;
    }
    else {
      resolved.stop_although_model_is_incomplete = false
    }

    return resolved;
    }
};

class StopObjectRecordingResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.recording_stopped = null;
    }
    else {
      if (initObj.hasOwnProperty('recording_stopped')) {
        this.recording_stopped = initObj.recording_stopped
      }
      else {
        this.recording_stopped = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StopObjectRecordingResponse
    // Serialize message field [recording_stopped]
    bufferOffset = _serializer.bool(obj.recording_stopped, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StopObjectRecordingResponse
    let len;
    let data = new StopObjectRecordingResponse(null);
    // Deserialize message field [recording_stopped]
    data.recording_stopped = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cob_object_detection_msgs/StopObjectRecordingResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6c4ef6fc8891dd138a543e6ac4a818da';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    bool recording_stopped
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StopObjectRecordingResponse(null);
    if (msg.recording_stopped !== undefined) {
      resolved.recording_stopped = msg.recording_stopped;
    }
    else {
      resolved.recording_stopped = false
    }

    return resolved;
    }
};

module.exports = {
  Request: StopObjectRecordingRequest,
  Response: StopObjectRecordingResponse,
  md5sum() { return 'b115df286bf93d57db01286b71c91409'; },
  datatype() { return 'cob_object_detection_msgs/StopObjectRecording'; }
};
