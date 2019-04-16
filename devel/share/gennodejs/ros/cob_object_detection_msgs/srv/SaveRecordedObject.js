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

class SaveRecordedObjectRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.storage_location = null;
    }
    else {
      if (initObj.hasOwnProperty('storage_location')) {
        this.storage_location = initObj.storage_location
      }
      else {
        this.storage_location = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SaveRecordedObjectRequest
    // Serialize message field [storage_location]
    bufferOffset = _serializer.string(obj.storage_location, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveRecordedObjectRequest
    let len;
    let data = new SaveRecordedObjectRequest(null);
    // Deserialize message field [storage_location]
    data.storage_location = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.storage_location.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cob_object_detection_msgs/SaveRecordedObjectRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '980da3132a7c1c17973e490fc0fbba86';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    string storage_location
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SaveRecordedObjectRequest(null);
    if (msg.storage_location !== undefined) {
      resolved.storage_location = msg.storage_location;
    }
    else {
      resolved.storage_location = ''
    }

    return resolved;
    }
};

class SaveRecordedObjectResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SaveRecordedObjectResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveRecordedObjectResponse
    let len;
    let data = new SaveRecordedObjectResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cob_object_detection_msgs/SaveRecordedObjectResponse';
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
    const resolved = new SaveRecordedObjectResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SaveRecordedObjectRequest,
  Response: SaveRecordedObjectResponse,
  md5sum() { return '980da3132a7c1c17973e490fc0fbba86'; },
  datatype() { return 'cob_object_detection_msgs/SaveRecordedObject'; }
};
