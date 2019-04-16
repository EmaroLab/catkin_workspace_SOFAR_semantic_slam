// Auto-generated. Do not edit!

// (in-package cob_perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Mask = require('./Mask.js');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Detection {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.label = null;
      this.id = null;
      this.detector = null;
      this.score = null;
      this.mask = null;
      this.pose = null;
      this.bounding_box_lwh = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('label')) {
        this.label = initObj.label
      }
      else {
        this.label = '';
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('detector')) {
        this.detector = initObj.detector
      }
      else {
        this.detector = '';
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0.0;
      }
      if (initObj.hasOwnProperty('mask')) {
        this.mask = initObj.mask
      }
      else {
        this.mask = new Mask();
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('bounding_box_lwh')) {
        this.bounding_box_lwh = initObj.bounding_box_lwh
      }
      else {
        this.bounding_box_lwh = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Detection
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [label]
    bufferOffset = _serializer.string(obj.label, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [detector]
    bufferOffset = _serializer.string(obj.detector, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.float32(obj.score, buffer, bufferOffset);
    // Serialize message field [mask]
    bufferOffset = Mask.serialize(obj.mask, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [bounding_box_lwh]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.bounding_box_lwh, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Detection
    let len;
    let data = new Detection(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [label]
    data.label = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [detector]
    data.detector = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mask]
    data.mask = Mask.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [bounding_box_lwh]
    data.bounding_box_lwh = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.label.length;
    length += object.detector.length;
    length += Mask.getMessageSize(object.mask);
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.pose);
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cob_perception_msgs/Detection';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5914d80850a216f4299709f0376ee04e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string label
    int32 id
    string detector
    float32 score
    Mask mask
    geometry_msgs/PoseStamped pose
    geometry_msgs/Point bounding_box_lwh
    
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
    MSG: cob_perception_msgs/Mask
    # this message is used to mark where an object is present in an image
    # this can be done either by a roi region on the image (less precise) or a mask (more precise)
    
    Rect roi
    
    # in the case when mask is used, 'roi' specifies the image region and 'mask'
    # (which should be of the same size) a binary mask in that region
    sensor_msgs/Image mask
    
    # in the case there is 3D data available, 'indices' are used to index the 
    # part of the point cloud representing the object
    #pcl/PointIndices indices
    
    ================================================================================
    MSG: cob_perception_msgs/Rect
    int32 x
    int32 y
    int32 width
    int32 height
    
    ================================================================================
    MSG: sensor_msgs/Image
    # This message contains an uncompressed image
    # (0, 0) is at top-left corner of image
    #
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of camera
                         # +x should point to the right in the image
                         # +y should point down in the image
                         # +z should point into to plane of the image
                         # If the frame_id here and the frame_id of the CameraInfo
                         # message associated with the image conflict
                         # the behavior is undefined
    
    uint32 height         # image height, that is, number of rows
    uint32 width          # image width, that is, number of columns
    
    # The legal values for encoding are in file src/image_encodings.cpp
    # If you want to standardize a new string format, join
    # ros-users@lists.sourceforge.net and send an email proposing a new encoding.
    
    string encoding       # Encoding of pixels -- channel meaning, ordering, size
                          # taken from the list of strings in include/sensor_msgs/image_encodings.h
    
    uint8 is_bigendian    # is this data bigendian?
    uint32 step           # Full row length in bytes
    uint8[] data          # actual matrix data, size is (step * rows)
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    const resolved = new Detection(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.label !== undefined) {
      resolved.label = msg.label;
    }
    else {
      resolved.label = ''
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.detector !== undefined) {
      resolved.detector = msg.detector;
    }
    else {
      resolved.detector = ''
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0.0
    }

    if (msg.mask !== undefined) {
      resolved.mask = Mask.Resolve(msg.mask)
    }
    else {
      resolved.mask = new Mask()
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.PoseStamped.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.bounding_box_lwh !== undefined) {
      resolved.bounding_box_lwh = geometry_msgs.msg.Point.Resolve(msg.bounding_box_lwh)
    }
    else {
      resolved.bounding_box_lwh = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

module.exports = Detection;
