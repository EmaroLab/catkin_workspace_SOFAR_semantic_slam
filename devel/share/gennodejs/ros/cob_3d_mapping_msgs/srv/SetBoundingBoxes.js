// Auto-generated. Do not edit!

// (in-package cob_3d_mapping_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let cob_object_detection_msgs = _finder('cob_object_detection_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetBoundingBoxesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.bounding_boxes = null;
    }
    else {
      if (initObj.hasOwnProperty('bounding_boxes')) {
        this.bounding_boxes = initObj.bounding_boxes
      }
      else {
        this.bounding_boxes = new cob_object_detection_msgs.msg.DetectionArray();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetBoundingBoxesRequest
    // Serialize message field [bounding_boxes]
    bufferOffset = cob_object_detection_msgs.msg.DetectionArray.serialize(obj.bounding_boxes, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetBoundingBoxesRequest
    let len;
    let data = new SetBoundingBoxesRequest(null);
    // Deserialize message field [bounding_boxes]
    data.bounding_boxes = cob_object_detection_msgs.msg.DetectionArray.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += cob_object_detection_msgs.msg.DetectionArray.getMessageSize(object.bounding_boxes);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cob_3d_mapping_msgs/SetBoundingBoxesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'de59b28161e64013a1dd6ca094ca3cc7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    cob_object_detection_msgs/DetectionArray bounding_boxes
    
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
    const resolved = new SetBoundingBoxesRequest(null);
    if (msg.bounding_boxes !== undefined) {
      resolved.bounding_boxes = cob_object_detection_msgs.msg.DetectionArray.Resolve(msg.bounding_boxes)
    }
    else {
      resolved.bounding_boxes = new cob_object_detection_msgs.msg.DetectionArray()
    }

    return resolved;
    }
};

class SetBoundingBoxesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetBoundingBoxesResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetBoundingBoxesResponse
    let len;
    let data = new SetBoundingBoxesResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cob_3d_mapping_msgs/SetBoundingBoxesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetBoundingBoxesResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: SetBoundingBoxesRequest,
  Response: SetBoundingBoxesResponse,
  md5sum() { return 'de59b28161e64013a1dd6ca094ca3cc7'; },
  datatype() { return 'cob_3d_mapping_msgs/SetBoundingBoxes'; }
};
