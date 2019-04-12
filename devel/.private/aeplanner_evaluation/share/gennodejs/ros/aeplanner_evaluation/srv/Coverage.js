// Auto-generated. Do not edit!

// (in-package aeplanner_evaluation.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class CoverageRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CoverageRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CoverageRequest
    let len;
    let data = new CoverageRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aeplanner_evaluation/CoverageRequest';
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
    const resolved = new CoverageRequest(null);
    return resolved;
    }
};

class CoverageResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.coverage = null;
      this.free = null;
      this.occupied = null;
      this.unmapped = null;
    }
    else {
      if (initObj.hasOwnProperty('coverage')) {
        this.coverage = initObj.coverage
      }
      else {
        this.coverage = 0.0;
      }
      if (initObj.hasOwnProperty('free')) {
        this.free = initObj.free
      }
      else {
        this.free = 0.0;
      }
      if (initObj.hasOwnProperty('occupied')) {
        this.occupied = initObj.occupied
      }
      else {
        this.occupied = 0.0;
      }
      if (initObj.hasOwnProperty('unmapped')) {
        this.unmapped = initObj.unmapped
      }
      else {
        this.unmapped = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CoverageResponse
    // Serialize message field [coverage]
    bufferOffset = _serializer.float64(obj.coverage, buffer, bufferOffset);
    // Serialize message field [free]
    bufferOffset = _serializer.float64(obj.free, buffer, bufferOffset);
    // Serialize message field [occupied]
    bufferOffset = _serializer.float64(obj.occupied, buffer, bufferOffset);
    // Serialize message field [unmapped]
    bufferOffset = _serializer.float64(obj.unmapped, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CoverageResponse
    let len;
    let data = new CoverageResponse(null);
    // Deserialize message field [coverage]
    data.coverage = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [free]
    data.free = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [occupied]
    data.occupied = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [unmapped]
    data.unmapped = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aeplanner_evaluation/CoverageResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5436f3000508ef50908df092cf89c062';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 coverage
    float64 free
    float64 occupied
    float64 unmapped
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CoverageResponse(null);
    if (msg.coverage !== undefined) {
      resolved.coverage = msg.coverage;
    }
    else {
      resolved.coverage = 0.0
    }

    if (msg.free !== undefined) {
      resolved.free = msg.free;
    }
    else {
      resolved.free = 0.0
    }

    if (msg.occupied !== undefined) {
      resolved.occupied = msg.occupied;
    }
    else {
      resolved.occupied = 0.0
    }

    if (msg.unmapped !== undefined) {
      resolved.unmapped = msg.unmapped;
    }
    else {
      resolved.unmapped = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: CoverageRequest,
  Response: CoverageResponse,
  md5sum() { return '5436f3000508ef50908df092cf89c062'; },
  datatype() { return 'aeplanner_evaluation/Coverage'; }
};
