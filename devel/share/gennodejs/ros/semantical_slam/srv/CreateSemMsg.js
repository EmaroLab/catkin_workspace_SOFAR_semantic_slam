// Auto-generated. Do not edit!

// (in-package semantical_slam.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

let SemanticalPoint = require('../msg/SemanticalPoint.js');

//-----------------------------------------------------------

class CreateSemMsgRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.actual_place = null;
      this.actual_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('actual_place')) {
        this.actual_place = initObj.actual_place
      }
      else {
        this.actual_place = '';
      }
      if (initObj.hasOwnProperty('actual_pose')) {
        this.actual_pose = initObj.actual_pose
      }
      else {
        this.actual_pose = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CreateSemMsgRequest
    // Serialize message field [actual_place]
    bufferOffset = _serializer.string(obj.actual_place, buffer, bufferOffset);
    // Serialize message field [actual_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.actual_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CreateSemMsgRequest
    let len;
    let data = new CreateSemMsgRequest(null);
    // Deserialize message field [actual_place]
    data.actual_place = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [actual_pose]
    data.actual_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.actual_place.length;
    return length + 60;
  }

  static datatype() {
    // Returns string type for a service object
    return 'semantical_slam/CreateSemMsgRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '55feb702256ffa772e72dc3fe8b20fa1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string actual_place
    geometry_msgs/Pose actual_pose
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CreateSemMsgRequest(null);
    if (msg.actual_place !== undefined) {
      resolved.actual_place = msg.actual_place;
    }
    else {
      resolved.actual_place = ''
    }

    if (msg.actual_pose !== undefined) {
      resolved.actual_pose = geometry_msgs.msg.Pose.Resolve(msg.actual_pose)
    }
    else {
      resolved.actual_pose = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

class CreateSemMsgResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.final_message = null;
    }
    else {
      if (initObj.hasOwnProperty('final_message')) {
        this.final_message = initObj.final_message
      }
      else {
        this.final_message = new SemanticalPoint();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CreateSemMsgResponse
    // Serialize message field [final_message]
    bufferOffset = SemanticalPoint.serialize(obj.final_message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CreateSemMsgResponse
    let len;
    let data = new CreateSemMsgResponse(null);
    // Deserialize message field [final_message]
    data.final_message = SemanticalPoint.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += SemanticalPoint.getMessageSize(object.final_message);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'semantical_slam/CreateSemMsgResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dc88fcb706a77bf09f4deef4601303c4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    SemanticalPoint final_message
    
    
    
    ================================================================================
    MSG: semantical_slam/SemanticalPoint
    float32 x
    float32 y
    string  place_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CreateSemMsgResponse(null);
    if (msg.final_message !== undefined) {
      resolved.final_message = SemanticalPoint.Resolve(msg.final_message)
    }
    else {
      resolved.final_message = new SemanticalPoint()
    }

    return resolved;
    }
};

module.exports = {
  Request: CreateSemMsgRequest,
  Response: CreateSemMsgResponse,
  md5sum() { return '2f150e66db12719ba67e40fde5c71fef'; },
  datatype() { return 'semantical_slam/CreateSemMsg'; }
};
