// Auto-generated. Do not edit!

// (in-package cob_perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Skeleton = require('./Skeleton.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Person {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.detector = null;
      this.position = null;
      this.velocity = null;
      this.skeleton = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('detector')) {
        this.detector = initObj.detector
      }
      else {
        this.detector = '';
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('skeleton')) {
        this.skeleton = initObj.skeleton
      }
      else {
        this.skeleton = new Skeleton();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Person
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [detector]
    bufferOffset = _serializer.string(obj.detector, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [skeleton]
    bufferOffset = Skeleton.serialize(obj.skeleton, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Person
    let len;
    let data = new Person(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [detector]
    data.detector = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [skeleton]
    data.skeleton = Skeleton.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    length += object.detector.length;
    length += Skeleton.getMessageSize(object.skeleton);
    return length + 88;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cob_perception_msgs/Person';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0726793e65e7420b1c7d52ed8e449b17';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #This message is used to describe a person
     
    string              name				#id of a person
    string              detector			#used device for detection (scan, camera)
    geometry_msgs/Pose  position			#position in space
    geometry_msgs/Point velocity			#speed
    
    cob_perception_msgs/Skeleton skeleton	#assigned skeleton to a tracked person
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
    
    ================================================================================
    MSG: cob_perception_msgs/Skeleton
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Person(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.detector !== undefined) {
      resolved.detector = msg.detector;
    }
    else {
      resolved.detector = ''
    }

    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Pose.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Pose()
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = geometry_msgs.msg.Point.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new geometry_msgs.msg.Point()
    }

    if (msg.skeleton !== undefined) {
      resolved.skeleton = Skeleton.Resolve(msg.skeleton)
    }
    else {
      resolved.skeleton = new Skeleton()
    }

    return resolved;
    }
};

module.exports = Person;
