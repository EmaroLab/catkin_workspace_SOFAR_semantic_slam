// Auto-generated. Do not edit!

// (in-package cob_object_detection_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Rect = require('./Rect.js');
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class Mask {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.roi = null;
      this.mask = null;
    }
    else {
      if (initObj.hasOwnProperty('roi')) {
        this.roi = initObj.roi
      }
      else {
        this.roi = new Rect();
      }
      if (initObj.hasOwnProperty('mask')) {
        this.mask = initObj.mask
      }
      else {
        this.mask = new sensor_msgs.msg.Image();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Mask
    // Serialize message field [roi]
    bufferOffset = Rect.serialize(obj.roi, buffer, bufferOffset);
    // Serialize message field [mask]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.mask, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Mask
    let len;
    let data = new Mask(null);
    // Deserialize message field [roi]
    data.roi = Rect.deserialize(buffer, bufferOffset);
    // Deserialize message field [mask]
    data.mask = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Image.getMessageSize(object.mask);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cob_object_detection_msgs/Mask';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e1240778c6320b394ae629a7eb8c26ba';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Mask(null);
    if (msg.roi !== undefined) {
      resolved.roi = Rect.Resolve(msg.roi)
    }
    else {
      resolved.roi = new Rect()
    }

    if (msg.mask !== undefined) {
      resolved.mask = sensor_msgs.msg.Image.Resolve(msg.mask)
    }
    else {
      resolved.mask = new sensor_msgs.msg.Image()
    }

    return resolved;
    }
};

module.exports = Mask;
