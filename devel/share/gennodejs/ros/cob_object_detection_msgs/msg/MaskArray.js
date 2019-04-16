// Auto-generated. Do not edit!

// (in-package cob_object_detection_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Mask = require('./Mask.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MaskArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.masks = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('masks')) {
        this.masks = initObj.masks
      }
      else {
        this.masks = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MaskArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [masks]
    // Serialize the length for message field [masks]
    bufferOffset = _serializer.uint32(obj.masks.length, buffer, bufferOffset);
    obj.masks.forEach((val) => {
      bufferOffset = Mask.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MaskArray
    let len;
    let data = new MaskArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [masks]
    // Deserialize array length for message field [masks]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.masks = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.masks[i] = Mask.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.masks.forEach((val) => {
      length += Mask.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cob_object_detection_msgs/MaskArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1d4620a4218f096b919a95d7fb64146f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    Mask[] masks
    
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
    MSG: cob_object_detection_msgs/Mask
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
    MSG: cob_object_detection_msgs/Rect
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MaskArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.masks !== undefined) {
      resolved.masks = new Array(msg.masks.length);
      for (let i = 0; i < resolved.masks.length; ++i) {
        resolved.masks[i] = Mask.Resolve(msg.masks[i]);
      }
    }
    else {
      resolved.masks = []
    }

    return resolved;
    }
};

module.exports = MaskArray;
