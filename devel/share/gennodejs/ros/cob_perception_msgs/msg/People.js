// Auto-generated. Do not edit!

// (in-package cob_perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Person = require('./Person.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class People {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.people = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type People
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [people]
    // Serialize the length for message field [people]
    bufferOffset = _serializer.uint32(obj.people.length, buffer, bufferOffset);
    obj.people.forEach((val) => {
      bufferOffset = Person.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type People
    let len;
    let data = new People(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [people]
    // Deserialize array length for message field [people]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.people = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.people[i] = Person.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.people.forEach((val) => {
      length += Person.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cob_perception_msgs/People';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e3b3272edc8f72e2c8c666fbaeaa5f7b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #This message is used to describe a crowd of people.
    
    Header header
    cob_perception_msgs/Person[] people
    
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
    MSG: cob_perception_msgs/Person
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
    const resolved = new People(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.people !== undefined) {
      resolved.people = new Array(msg.people.length);
      for (let i = 0; i < resolved.people.length; ++i) {
        resolved.people[i] = Person.Resolve(msg.people[i]);
      }
    }
    else {
      resolved.people = []
    }

    return resolved;
    }
};

module.exports = People;
