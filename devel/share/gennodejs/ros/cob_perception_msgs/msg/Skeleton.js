// Auto-generated. Do not edit!

// (in-package cob_perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Skeleton {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joints = null;
    }
    else {
      if (initObj.hasOwnProperty('joints')) {
        this.joints = initObj.joints
      }
      else {
        this.joints = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Skeleton
    // Serialize message field [joints]
    // Serialize the length for message field [joints]
    bufferOffset = _serializer.uint32(obj.joints.length, buffer, bufferOffset);
    obj.joints.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Skeleton
    let len;
    let data = new Skeleton(null);
    // Deserialize message field [joints]
    // Deserialize array length for message field [joints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.joints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.joints[i] = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 56 * object.joints.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cob_perception_msgs/Skeleton';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2ffad426b6c23b6289166d68b5570546';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This messages is used to describe a skeleton and defines joints of a tracked person
    
    # the same enum as defined in NiteCEnums.h of the Nite body tracker
    uint8 JOINT_HEAD = 0
    uint8 JOINT_NECK = 1
    uint8 JOINT_LEFT_SHOULDER = 2
    uint8 JOINT_RIGHT_SHOULDER = 3
    uint8 JOINT_LEFT_ELBOW = 4
    uint8 JOINT_RIGHT_ELBOW = 5
    uint8 JOINT_LEFT_HAND = 6
    uint8 JOINT_RIGHT_HAND = 7
    uint8 JOINT_TORSO = 8
    uint8 JOINT_LEFT_HIP = 9
    uint8 JOINT_RIGHT_HIP = 10
    uint8 JOINT_LEFT_KNEE = 11
    uint8 JOINT_RIGHT_KNEE = 12
    uint8 JOINT_LEFT_FOOT = 13
    uint8 JOINT_RIGHT_FOOT = 14
    uint8 JOINT_NUMBER = 15
    
    geometry_msgs/Pose[] joints
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
    const resolved = new Skeleton(null);
    if (msg.joints !== undefined) {
      resolved.joints = new Array(msg.joints.length);
      for (let i = 0; i < resolved.joints.length; ++i) {
        resolved.joints[i] = geometry_msgs.msg.Pose.Resolve(msg.joints[i]);
      }
    }
    else {
      resolved.joints = []
    }

    return resolved;
    }
};

// Constants for message
Skeleton.Constants = {
  JOINT_HEAD: 0,
  JOINT_NECK: 1,
  JOINT_LEFT_SHOULDER: 2,
  JOINT_RIGHT_SHOULDER: 3,
  JOINT_LEFT_ELBOW: 4,
  JOINT_RIGHT_ELBOW: 5,
  JOINT_LEFT_HAND: 6,
  JOINT_RIGHT_HAND: 7,
  JOINT_TORSO: 8,
  JOINT_LEFT_HIP: 9,
  JOINT_RIGHT_HIP: 10,
  JOINT_LEFT_KNEE: 11,
  JOINT_RIGHT_KNEE: 12,
  JOINT_LEFT_FOOT: 13,
  JOINT_RIGHT_FOOT: 14,
  JOINT_NUMBER: 15,
}

module.exports = Skeleton;
