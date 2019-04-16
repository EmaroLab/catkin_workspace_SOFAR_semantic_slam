// Auto-generated. Do not edit!

// (in-package cob_perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ActionRecognitionmsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.labels = null;
      this.probabilities = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('labels')) {
        this.labels = initObj.labels
      }
      else {
        this.labels = [];
      }
      if (initObj.hasOwnProperty('probabilities')) {
        this.probabilities = initObj.probabilities
      }
      else {
        this.probabilities = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ActionRecognitionmsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [labels]
    bufferOffset = _arraySerializer.string(obj.labels, buffer, bufferOffset, null);
    // Serialize message field [probabilities]
    bufferOffset = _arraySerializer.float32(obj.probabilities, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ActionRecognitionmsg
    let len;
    let data = new ActionRecognitionmsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [labels]
    data.labels = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [probabilities]
    data.probabilities = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.labels.forEach((val) => {
      length += 4 + val.length;
    });
    length += 4 * object.probabilities.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cob_perception_msgs/ActionRecognitionmsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '35ce3f516ef25de507f2f0b3b42469d4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string[] labels
    float32[] probabilities 
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ActionRecognitionmsg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.labels !== undefined) {
      resolved.labels = msg.labels;
    }
    else {
      resolved.labels = []
    }

    if (msg.probabilities !== undefined) {
      resolved.probabilities = msg.probabilities;
    }
    else {
      resolved.probabilities = []
    }

    return resolved;
    }
};

module.exports = ActionRecognitionmsg;
