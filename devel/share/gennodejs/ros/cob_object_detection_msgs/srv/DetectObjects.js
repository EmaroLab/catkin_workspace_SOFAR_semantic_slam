// Auto-generated. Do not edit!

// (in-package cob_object_detection_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

let DetectionArray = require('../msg/DetectionArray.js');

//-----------------------------------------------------------

class DetectObjectsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.object_name = null;
      this.roi = null;
    }
    else {
      if (initObj.hasOwnProperty('object_name')) {
        this.object_name = initObj.object_name
      }
      else {
        this.object_name = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('roi')) {
        this.roi = initObj.roi
      }
      else {
        this.roi = new sensor_msgs.msg.RegionOfInterest();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DetectObjectsRequest
    // Serialize message field [object_name]
    bufferOffset = std_msgs.msg.String.serialize(obj.object_name, buffer, bufferOffset);
    // Serialize message field [roi]
    bufferOffset = sensor_msgs.msg.RegionOfInterest.serialize(obj.roi, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DetectObjectsRequest
    let len;
    let data = new DetectObjectsRequest(null);
    // Deserialize message field [object_name]
    data.object_name = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [roi]
    data.roi = sensor_msgs.msg.RegionOfInterest.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.object_name);
    return length + 17;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cob_object_detection_msgs/DetectObjectsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8d651fac3fa327d154d291de842e3994';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/String object_name
    sensor_msgs/RegionOfInterest roi
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    ================================================================================
    MSG: sensor_msgs/RegionOfInterest
    # This message is used to specify a region of interest within an image.
    #
    # When used to specify the ROI setting of the camera when the image was
    # taken, the height and width fields should either match the height and
    # width fields for the associated image; or height = width = 0
    # indicates that the full resolution image was captured.
    
    uint32 x_offset  # Leftmost pixel of the ROI
                     # (0 if the ROI includes the left edge of the image)
    uint32 y_offset  # Topmost pixel of the ROI
                     # (0 if the ROI includes the top edge of the image)
    uint32 height    # Height of ROI
    uint32 width     # Width of ROI
    
    # True if a distinct rectified ROI should be calculated from the "raw"
    # ROI in this message. Typically this should be False if the full image
    # is captured (ROI not used), and True if a subwindow is captured (ROI
    # used).
    bool do_rectify
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DetectObjectsRequest(null);
    if (msg.object_name !== undefined) {
      resolved.object_name = std_msgs.msg.String.Resolve(msg.object_name)
    }
    else {
      resolved.object_name = new std_msgs.msg.String()
    }

    if (msg.roi !== undefined) {
      resolved.roi = sensor_msgs.msg.RegionOfInterest.Resolve(msg.roi)
    }
    else {
      resolved.roi = new sensor_msgs.msg.RegionOfInterest()
    }

    return resolved;
    }
};

class DetectObjectsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.object_list = null;
    }
    else {
      if (initObj.hasOwnProperty('object_list')) {
        this.object_list = initObj.object_list
      }
      else {
        this.object_list = new DetectionArray();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DetectObjectsResponse
    // Serialize message field [object_list]
    bufferOffset = DetectionArray.serialize(obj.object_list, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DetectObjectsResponse
    let len;
    let data = new DetectObjectsResponse(null);
    // Deserialize message field [object_list]
    data.object_list = DetectionArray.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += DetectionArray.getMessageSize(object.object_list);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cob_object_detection_msgs/DetectObjectsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6da5c76956a10a2b2a7e649614ba9504';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    cob_object_detection_msgs/DetectionArray object_list
    
    
    ================================================================================
    MSG: cob_object_detection_msgs/DetectionArray
    Header header
    Detection[] detections
    
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
    MSG: cob_object_detection_msgs/Detection
    Header header
    string label
    int32 id
    string detector
    float32 score
    Mask mask
    geometry_msgs/PoseStamped pose
    geometry_msgs/Point bounding_box_lwh
    
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
    const resolved = new DetectObjectsResponse(null);
    if (msg.object_list !== undefined) {
      resolved.object_list = DetectionArray.Resolve(msg.object_list)
    }
    else {
      resolved.object_list = new DetectionArray()
    }

    return resolved;
    }
};

module.exports = {
  Request: DetectObjectsRequest,
  Response: DetectObjectsResponse,
  md5sum() { return 'f609b54d4b922c8b97b8a0fc3dd91fdb'; },
  datatype() { return 'cob_object_detection_msgs/DetectObjects'; }
};
