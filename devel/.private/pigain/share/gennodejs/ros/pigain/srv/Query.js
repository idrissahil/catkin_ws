// Auto-generated. Do not edit!

// (in-package pigain.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class QueryRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.point = null;
    }
    else {
      if (initObj.hasOwnProperty('point')) {
        this.point = initObj.point
      }
      else {
        this.point = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type QueryRequest
    // Serialize message field [point]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.point, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type QueryRequest
    let len;
    let data = new QueryRequest(null);
    // Deserialize message field [point]
    data.point = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pigain/QueryRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a7c84ff13976aa04656e56e300124444';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point point
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new QueryRequest(null);
    if (msg.point !== undefined) {
      resolved.point = geometry_msgs.msg.Point.Resolve(msg.point)
    }
    else {
      resolved.point = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

class QueryResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mu = null;
      this.sigma = null;
      this.yaw = null;
    }
    else {
      if (initObj.hasOwnProperty('mu')) {
        this.mu = initObj.mu
      }
      else {
        this.mu = 0.0;
      }
      if (initObj.hasOwnProperty('sigma')) {
        this.sigma = initObj.sigma
      }
      else {
        this.sigma = 0.0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type QueryResponse
    // Serialize message field [mu]
    bufferOffset = _serializer.float64(obj.mu, buffer, bufferOffset);
    // Serialize message field [sigma]
    bufferOffset = _serializer.float64(obj.sigma, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float64(obj.yaw, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type QueryResponse
    let len;
    let data = new QueryResponse(null);
    // Deserialize message field [mu]
    data.mu = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [sigma]
    data.sigma = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pigain/QueryResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '09c416af56bccb0613e4f50335cc025a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 mu
    float64 sigma
    float64 yaw
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new QueryResponse(null);
    if (msg.mu !== undefined) {
      resolved.mu = msg.mu;
    }
    else {
      resolved.mu = 0.0
    }

    if (msg.sigma !== undefined) {
      resolved.sigma = msg.sigma;
    }
    else {
      resolved.sigma = 0.0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: QueryRequest,
  Response: QueryResponse,
  md5sum() { return 'cfbeffb732fb085ef41c291ee034ea65'; },
  datatype() { return 'pigain/Query'; }
};
