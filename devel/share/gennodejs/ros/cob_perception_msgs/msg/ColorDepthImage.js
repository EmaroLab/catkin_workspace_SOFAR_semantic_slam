// Auto-generated. Do not edit!

// (in-package cob_perception_msgs.msg)


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

class ColorDepthImage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.head_detection = null;
      this.color_image = null;
      this.depth_image = null;
      this.face_detections = null;
    }
    else {
      if (initObj.hasOwnProperty('head_detection')) {
        this.head_detection = initObj.head_detection
      }
      else {
        this.head_detection = new Rect();
      }
      if (initObj.hasOwnProperty('color_image')) {
        this.color_image = initObj.color_image
      }
      else {
        this.color_image = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('depth_image')) {
        this.depth_image = initObj.depth_image
      }
      else {
        this.depth_image = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('face_detections')) {
        this.face_detections = initObj.face_detections
      }
      else {
        this.face_detections = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ColorDepthImage
    // Serialize message field [head_detection]
    bufferOffset = Rect.serialize(obj.head_detection, buffer, bufferOffset);
    // Serialize message field [color_image]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.color_image, buffer, bufferOffset);
    // Serialize message field [depth_image]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.depth_image, buffer, bufferOffset);
    // Serialize message field [face_detections]
    // Serialize the length for message field [face_detections]
    bufferOffset = _serializer.uint32(obj.face_detections.length, buffer, bufferOffset);
    obj.face_detections.forEach((val) => {
      bufferOffset = Rect.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ColorDepthImage
    let len;
    let data = new ColorDepthImage(null);
    // Deserialize message field [head_detection]
    data.head_detection = Rect.deserialize(buffer, bufferOffset);
    // Deserialize message field [color_image]
    data.color_image = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [depth_image]
    data.depth_image = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [face_detections]
    // Deserialize array length for message field [face_detections]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.face_detections = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.face_detections[i] = Rect.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.Image.getMessageSize(object.color_image);
    length += sensor_msgs.msg.Image.getMessageSize(object.depth_image);
    length += 16 * object.face_detections.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cob_perception_msgs/ColorDepthImage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '03f1995e7c816d8ab016aa6ceb57208a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ColorDepthImage(null);
    if (msg.head_detection !== undefined) {
      resolved.head_detection = Rect.Resolve(msg.head_detection)
    }
    else {
      resolved.head_detection = new Rect()
    }

    if (msg.color_image !== undefined) {
      resolved.color_image = sensor_msgs.msg.Image.Resolve(msg.color_image)
    }
    else {
      resolved.color_image = new sensor_msgs.msg.Image()
    }

    if (msg.depth_image !== undefined) {
      resolved.depth_image = sensor_msgs.msg.Image.Resolve(msg.depth_image)
    }
    else {
      resolved.depth_image = new sensor_msgs.msg.Image()
    }

    if (msg.face_detections !== undefined) {
      resolved.face_detections = new Array(msg.face_detections.length);
      for (let i = 0; i < resolved.face_detections.length; ++i) {
        resolved.face_detections[i] = Rect.Resolve(msg.face_detections[i]);
      }
    }
    else {
      resolved.face_detections = []
    }

    return resolved;
    }
};

module.exports = ColorDepthImage;
