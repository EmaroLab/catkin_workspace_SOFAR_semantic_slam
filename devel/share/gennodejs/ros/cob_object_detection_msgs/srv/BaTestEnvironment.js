// Auto-generated. Do not edit!

// (in-package cob_object_detection_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class BaTestEnvironmentRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.number_points = null;
      this.frame_view_number = null;
      this.cone_points_per_plane = null;
      this.limit_error_matching = null;
      this.ba_kernel_param = null;
      this.ba_num_iter = null;
      this.ba_initial_mu = null;
      this.ba_final_mu_factor = null;
      this.ba_tau = null;
      this.angle_sigma_degree = null;
      this.translate_sigma_m = null;
      this.obs_point_sigma_m = null;
      this.world_point_sigma_m = null;
    }
    else {
      if (initObj.hasOwnProperty('number_points')) {
        this.number_points = initObj.number_points
      }
      else {
        this.number_points = 0;
      }
      if (initObj.hasOwnProperty('frame_view_number')) {
        this.frame_view_number = initObj.frame_view_number
      }
      else {
        this.frame_view_number = 0.0;
      }
      if (initObj.hasOwnProperty('cone_points_per_plane')) {
        this.cone_points_per_plane = initObj.cone_points_per_plane
      }
      else {
        this.cone_points_per_plane = 0.0;
      }
      if (initObj.hasOwnProperty('limit_error_matching')) {
        this.limit_error_matching = initObj.limit_error_matching
      }
      else {
        this.limit_error_matching = 0.0;
      }
      if (initObj.hasOwnProperty('ba_kernel_param')) {
        this.ba_kernel_param = initObj.ba_kernel_param
      }
      else {
        this.ba_kernel_param = 0.0;
      }
      if (initObj.hasOwnProperty('ba_num_iter')) {
        this.ba_num_iter = initObj.ba_num_iter
      }
      else {
        this.ba_num_iter = 0;
      }
      if (initObj.hasOwnProperty('ba_initial_mu')) {
        this.ba_initial_mu = initObj.ba_initial_mu
      }
      else {
        this.ba_initial_mu = 0.0;
      }
      if (initObj.hasOwnProperty('ba_final_mu_factor')) {
        this.ba_final_mu_factor = initObj.ba_final_mu_factor
      }
      else {
        this.ba_final_mu_factor = 0.0;
      }
      if (initObj.hasOwnProperty('ba_tau')) {
        this.ba_tau = initObj.ba_tau
      }
      else {
        this.ba_tau = 0.0;
      }
      if (initObj.hasOwnProperty('angle_sigma_degree')) {
        this.angle_sigma_degree = initObj.angle_sigma_degree
      }
      else {
        this.angle_sigma_degree = 0.0;
      }
      if (initObj.hasOwnProperty('translate_sigma_m')) {
        this.translate_sigma_m = initObj.translate_sigma_m
      }
      else {
        this.translate_sigma_m = 0.0;
      }
      if (initObj.hasOwnProperty('obs_point_sigma_m')) {
        this.obs_point_sigma_m = initObj.obs_point_sigma_m
      }
      else {
        this.obs_point_sigma_m = 0.0;
      }
      if (initObj.hasOwnProperty('world_point_sigma_m')) {
        this.world_point_sigma_m = initObj.world_point_sigma_m
      }
      else {
        this.world_point_sigma_m = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BaTestEnvironmentRequest
    // Serialize message field [number_points]
    bufferOffset = _serializer.int32(obj.number_points, buffer, bufferOffset);
    // Serialize message field [frame_view_number]
    bufferOffset = _serializer.float32(obj.frame_view_number, buffer, bufferOffset);
    // Serialize message field [cone_points_per_plane]
    bufferOffset = _serializer.float32(obj.cone_points_per_plane, buffer, bufferOffset);
    // Serialize message field [limit_error_matching]
    bufferOffset = _serializer.float32(obj.limit_error_matching, buffer, bufferOffset);
    // Serialize message field [ba_kernel_param]
    bufferOffset = _serializer.float32(obj.ba_kernel_param, buffer, bufferOffset);
    // Serialize message field [ba_num_iter]
    bufferOffset = _serializer.int32(obj.ba_num_iter, buffer, bufferOffset);
    // Serialize message field [ba_initial_mu]
    bufferOffset = _serializer.float32(obj.ba_initial_mu, buffer, bufferOffset);
    // Serialize message field [ba_final_mu_factor]
    bufferOffset = _serializer.float32(obj.ba_final_mu_factor, buffer, bufferOffset);
    // Serialize message field [ba_tau]
    bufferOffset = _serializer.float32(obj.ba_tau, buffer, bufferOffset);
    // Serialize message field [angle_sigma_degree]
    bufferOffset = _serializer.float32(obj.angle_sigma_degree, buffer, bufferOffset);
    // Serialize message field [translate_sigma_m]
    bufferOffset = _serializer.float32(obj.translate_sigma_m, buffer, bufferOffset);
    // Serialize message field [obs_point_sigma_m]
    bufferOffset = _serializer.float32(obj.obs_point_sigma_m, buffer, bufferOffset);
    // Serialize message field [world_point_sigma_m]
    bufferOffset = _serializer.float32(obj.world_point_sigma_m, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BaTestEnvironmentRequest
    let len;
    let data = new BaTestEnvironmentRequest(null);
    // Deserialize message field [number_points]
    data.number_points = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [frame_view_number]
    data.frame_view_number = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cone_points_per_plane]
    data.cone_points_per_plane = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [limit_error_matching]
    data.limit_error_matching = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ba_kernel_param]
    data.ba_kernel_param = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ba_num_iter]
    data.ba_num_iter = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [ba_initial_mu]
    data.ba_initial_mu = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ba_final_mu_factor]
    data.ba_final_mu_factor = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ba_tau]
    data.ba_tau = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angle_sigma_degree]
    data.angle_sigma_degree = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [translate_sigma_m]
    data.translate_sigma_m = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [obs_point_sigma_m]
    data.obs_point_sigma_m = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [world_point_sigma_m]
    data.world_point_sigma_m = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 52;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cob_object_detection_msgs/BaTestEnvironmentRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '65aeb9eaa6cbc248861e82cf7f7464c0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    int32 number_points
    float32 frame_view_number
    float32 cone_points_per_plane
    
    
    float32 limit_error_matching
    
    float32 ba_kernel_param
    int32 ba_num_iter
    float32 ba_initial_mu
    float32 ba_final_mu_factor
    float32 ba_tau
    
    float32 angle_sigma_degree
    float32 translate_sigma_m
    float32 obs_point_sigma_m
    float32 world_point_sigma_m
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BaTestEnvironmentRequest(null);
    if (msg.number_points !== undefined) {
      resolved.number_points = msg.number_points;
    }
    else {
      resolved.number_points = 0
    }

    if (msg.frame_view_number !== undefined) {
      resolved.frame_view_number = msg.frame_view_number;
    }
    else {
      resolved.frame_view_number = 0.0
    }

    if (msg.cone_points_per_plane !== undefined) {
      resolved.cone_points_per_plane = msg.cone_points_per_plane;
    }
    else {
      resolved.cone_points_per_plane = 0.0
    }

    if (msg.limit_error_matching !== undefined) {
      resolved.limit_error_matching = msg.limit_error_matching;
    }
    else {
      resolved.limit_error_matching = 0.0
    }

    if (msg.ba_kernel_param !== undefined) {
      resolved.ba_kernel_param = msg.ba_kernel_param;
    }
    else {
      resolved.ba_kernel_param = 0.0
    }

    if (msg.ba_num_iter !== undefined) {
      resolved.ba_num_iter = msg.ba_num_iter;
    }
    else {
      resolved.ba_num_iter = 0
    }

    if (msg.ba_initial_mu !== undefined) {
      resolved.ba_initial_mu = msg.ba_initial_mu;
    }
    else {
      resolved.ba_initial_mu = 0.0
    }

    if (msg.ba_final_mu_factor !== undefined) {
      resolved.ba_final_mu_factor = msg.ba_final_mu_factor;
    }
    else {
      resolved.ba_final_mu_factor = 0.0
    }

    if (msg.ba_tau !== undefined) {
      resolved.ba_tau = msg.ba_tau;
    }
    else {
      resolved.ba_tau = 0.0
    }

    if (msg.angle_sigma_degree !== undefined) {
      resolved.angle_sigma_degree = msg.angle_sigma_degree;
    }
    else {
      resolved.angle_sigma_degree = 0.0
    }

    if (msg.translate_sigma_m !== undefined) {
      resolved.translate_sigma_m = msg.translate_sigma_m;
    }
    else {
      resolved.translate_sigma_m = 0.0
    }

    if (msg.obs_point_sigma_m !== undefined) {
      resolved.obs_point_sigma_m = msg.obs_point_sigma_m;
    }
    else {
      resolved.obs_point_sigma_m = 0.0
    }

    if (msg.world_point_sigma_m !== undefined) {
      resolved.world_point_sigma_m = msg.world_point_sigma_m;
    }
    else {
      resolved.world_point_sigma_m = 0.0
    }

    return resolved;
    }
};

class BaTestEnvironmentResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mean_error = null;
      this.std_dev = null;
      this.min_error = null;
      this.max_error = null;
      this.runs_count = null;
      this.runs_sum = null;
      this.runs_sum2 = null;
      this.time_duration = null;
      this.observations = null;
      this.false_matchings = null;
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('mean_error')) {
        this.mean_error = initObj.mean_error
      }
      else {
        this.mean_error = 0.0;
      }
      if (initObj.hasOwnProperty('std_dev')) {
        this.std_dev = initObj.std_dev
      }
      else {
        this.std_dev = 0.0;
      }
      if (initObj.hasOwnProperty('min_error')) {
        this.min_error = initObj.min_error
      }
      else {
        this.min_error = 0.0;
      }
      if (initObj.hasOwnProperty('max_error')) {
        this.max_error = initObj.max_error
      }
      else {
        this.max_error = 0.0;
      }
      if (initObj.hasOwnProperty('runs_count')) {
        this.runs_count = initObj.runs_count
      }
      else {
        this.runs_count = 0.0;
      }
      if (initObj.hasOwnProperty('runs_sum')) {
        this.runs_sum = initObj.runs_sum
      }
      else {
        this.runs_sum = 0.0;
      }
      if (initObj.hasOwnProperty('runs_sum2')) {
        this.runs_sum2 = initObj.runs_sum2
      }
      else {
        this.runs_sum2 = 0.0;
      }
      if (initObj.hasOwnProperty('time_duration')) {
        this.time_duration = initObj.time_duration
      }
      else {
        this.time_duration = 0.0;
      }
      if (initObj.hasOwnProperty('observations')) {
        this.observations = initObj.observations
      }
      else {
        this.observations = 0;
      }
      if (initObj.hasOwnProperty('false_matchings')) {
        this.false_matchings = initObj.false_matchings
      }
      else {
        this.false_matchings = 0;
      }
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = new std_msgs.msg.String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BaTestEnvironmentResponse
    // Serialize message field [mean_error]
    bufferOffset = _serializer.float32(obj.mean_error, buffer, bufferOffset);
    // Serialize message field [std_dev]
    bufferOffset = _serializer.float32(obj.std_dev, buffer, bufferOffset);
    // Serialize message field [min_error]
    bufferOffset = _serializer.float32(obj.min_error, buffer, bufferOffset);
    // Serialize message field [max_error]
    bufferOffset = _serializer.float32(obj.max_error, buffer, bufferOffset);
    // Serialize message field [runs_count]
    bufferOffset = _serializer.float32(obj.runs_count, buffer, bufferOffset);
    // Serialize message field [runs_sum]
    bufferOffset = _serializer.float32(obj.runs_sum, buffer, bufferOffset);
    // Serialize message field [runs_sum2]
    bufferOffset = _serializer.float32(obj.runs_sum2, buffer, bufferOffset);
    // Serialize message field [time_duration]
    bufferOffset = _serializer.float32(obj.time_duration, buffer, bufferOffset);
    // Serialize message field [observations]
    bufferOffset = _serializer.int32(obj.observations, buffer, bufferOffset);
    // Serialize message field [false_matchings]
    bufferOffset = _serializer.int32(obj.false_matchings, buffer, bufferOffset);
    // Serialize message field [result]
    bufferOffset = std_msgs.msg.String.serialize(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BaTestEnvironmentResponse
    let len;
    let data = new BaTestEnvironmentResponse(null);
    // Deserialize message field [mean_error]
    data.mean_error = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [std_dev]
    data.std_dev = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [min_error]
    data.min_error = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_error]
    data.max_error = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [runs_count]
    data.runs_count = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [runs_sum]
    data.runs_sum = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [runs_sum2]
    data.runs_sum2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [time_duration]
    data.time_duration = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [observations]
    data.observations = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [false_matchings]
    data.false_matchings = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [result]
    data.result = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.result);
    return length + 40;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cob_object_detection_msgs/BaTestEnvironmentResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '73db4f13e99b7e554aa13b596abbef41';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 mean_error
    float32 std_dev
    float32 min_error
    float32 max_error
    float32 runs_count
    float32 runs_sum
    float32 runs_sum2
    
    float32 time_duration
    int32 observations
    int32 false_matchings
    
    std_msgs/String result
    
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BaTestEnvironmentResponse(null);
    if (msg.mean_error !== undefined) {
      resolved.mean_error = msg.mean_error;
    }
    else {
      resolved.mean_error = 0.0
    }

    if (msg.std_dev !== undefined) {
      resolved.std_dev = msg.std_dev;
    }
    else {
      resolved.std_dev = 0.0
    }

    if (msg.min_error !== undefined) {
      resolved.min_error = msg.min_error;
    }
    else {
      resolved.min_error = 0.0
    }

    if (msg.max_error !== undefined) {
      resolved.max_error = msg.max_error;
    }
    else {
      resolved.max_error = 0.0
    }

    if (msg.runs_count !== undefined) {
      resolved.runs_count = msg.runs_count;
    }
    else {
      resolved.runs_count = 0.0
    }

    if (msg.runs_sum !== undefined) {
      resolved.runs_sum = msg.runs_sum;
    }
    else {
      resolved.runs_sum = 0.0
    }

    if (msg.runs_sum2 !== undefined) {
      resolved.runs_sum2 = msg.runs_sum2;
    }
    else {
      resolved.runs_sum2 = 0.0
    }

    if (msg.time_duration !== undefined) {
      resolved.time_duration = msg.time_duration;
    }
    else {
      resolved.time_duration = 0.0
    }

    if (msg.observations !== undefined) {
      resolved.observations = msg.observations;
    }
    else {
      resolved.observations = 0
    }

    if (msg.false_matchings !== undefined) {
      resolved.false_matchings = msg.false_matchings;
    }
    else {
      resolved.false_matchings = 0
    }

    if (msg.result !== undefined) {
      resolved.result = std_msgs.msg.String.Resolve(msg.result)
    }
    else {
      resolved.result = new std_msgs.msg.String()
    }

    return resolved;
    }
};

module.exports = {
  Request: BaTestEnvironmentRequest,
  Response: BaTestEnvironmentResponse,
  md5sum() { return 'e3abe6b136e84d507dcba74e019ba61e'; },
  datatype() { return 'cob_object_detection_msgs/BaTestEnvironment'; }
};
