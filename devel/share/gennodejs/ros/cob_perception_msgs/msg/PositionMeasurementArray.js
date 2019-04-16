// Auto-generated. Do not edit!

// (in-package cob_perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PositionMeasurement = require('./PositionMeasurement.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class PositionMeasurementArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.people = null;
      this.cooccurrence = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('people')) {
        this.people = initObj.people
      }
      else {
        this.people = [];
      }
      if (initObj.hasOwnProperty('cooccurrence')) {
        this.cooccurrence = initObj.cooccurrence
      }
      else {
        this.cooccurrence = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PositionMeasurementArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [people]
    // Serialize the length for message field [people]
    bufferOffset = _serializer.uint32(obj.people.length, buffer, bufferOffset);
    obj.people.forEach((val) => {
      bufferOffset = PositionMeasurement.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [cooccurrence]
    bufferOffset = _arraySerializer.float32(obj.cooccurrence, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PositionMeasurementArray
    let len;
    let data = new PositionMeasurementArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [people]
    // Deserialize array length for message field [people]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.people = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.people[i] = PositionMeasurement.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [cooccurrence]
    data.cooccurrence = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.people.forEach((val) => {
      length += PositionMeasurement.getMessageSize(val);
    });
    length += 4 * object.cooccurrence.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cob_perception_msgs/PositionMeasurementArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f76f3d050aeed243c9f1fbf9cfa040ee';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # origin from  url = https://github.com/wg-perception/people/tree/hydro-devel/people_msgs
    
    Header          header
    
    # All of the people found
    cob_perception_msgs/PositionMeasurement[] people
    
    # The co-occurrence matrix between people
    float32[] cooccurrence
    
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
    
    ================================================================================
    MSG: cob_perception_msgs/PositionMeasurement
    # origin from  url = https://github.com/wg-perception/people/tree/hydro-devel/people_msgs
    
    Header          header
    string          name
    string          object_id
    geometry_msgs/Point pos
    geometry_msgs/Vector3 vel
    float64         reliability
    float64[9] 		covariance
    byte            initialization
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PositionMeasurementArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.people !== undefined) {
      resolved.people = new Array(msg.people.length);
      for (let i = 0; i < resolved.people.length; ++i) {
        resolved.people[i] = PositionMeasurement.Resolve(msg.people[i]);
      }
    }
    else {
      resolved.people = []
    }

    if (msg.cooccurrence !== undefined) {
      resolved.cooccurrence = msg.cooccurrence;
    }
    else {
      resolved.cooccurrence = []
    }

    return resolved;
    }
};

module.exports = PositionMeasurementArray;
