// Auto-generated. Do not edit!

// (in-package cob_perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ColorDepthImage = require('./ColorDepthImage.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ColorDepthImageArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.head_detections = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('head_detections')) {
        this.head_detections = initObj.head_detections
      }
      else {
        this.head_detections = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ColorDepthImageArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [head_detections]
    // Serialize the length for message field [head_detections]
    bufferOffset = _serializer.uint32(obj.head_detections.length, buffer, bufferOffset);
    obj.head_detections.forEach((val) => {
      bufferOffset = ColorDepthImage.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ColorDepthImageArray
    let len;
    let data = new ColorDepthImageArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [head_detections]
    // Deserialize array length for message field [head_detections]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.head_detections = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.head_detections[i] = ColorDepthImage.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.head_detections.forEach((val) => {
      length += ColorDepthImage.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cob_perception_msgs/ColorDepthImageArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '11e05088e9df0279d7f4df2d773584c2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header				# timestamp etc.
    ColorDepthImage[] head_detections	# each entry contains the bounding box, color image, depth image and color image face detections of a head region
    
    
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
    MSG: cob_perception_msgs/ColorDepthImage
    Rect head_detection		# bounding box of detected head (coordinates in relation to whole image coordinate system)
    sensor_msgs/Image color_image	# color image patch at bounding box head_detection (i.e. same size as head region, not only face region)
    sensor_msgs/Image depth_image	# depth image patch at bounding box head_detection
    Rect[] face_detections		# faces detected in color image inside the head's bounding box (coordinates in relation to head's bounding box)
    
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ColorDepthImageArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.head_detections !== undefined) {
      resolved.head_detections = new Array(msg.head_detections.length);
      for (let i = 0; i < resolved.head_detections.length; ++i) {
        resolved.head_detections[i] = ColorDepthImage.Resolve(msg.head_detections[i]);
      }
    }
    else {
      resolved.head_detections = []
    }

    return resolved;
    }
};

module.exports = ColorDepthImageArray;
