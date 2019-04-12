// Auto-generated. Do not edit!

// (in-package aeplanner.srv)


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

class ReevaluateRequest {
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
        this.point = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ReevaluateRequest
    // Serialize message field [point]
    // Serialize the length for message field [point]
    bufferOffset = _serializer.uint32(obj.point.length, buffer, bufferOffset);
    obj.point.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReevaluateRequest
    let len;
    let data = new ReevaluateRequest(null);
    // Deserialize message field [point]
    // Deserialize array length for message field [point]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.point = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.point[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.point.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aeplanner/ReevaluateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a7c84ff13976aa04656e56e300124444';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point[] point
    
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
    const resolved = new ReevaluateRequest(null);
    if (msg.point !== undefined) {
      resolved.point = new Array(msg.point.length);
      for (let i = 0; i < resolved.point.length; ++i) {
        resolved.point[i] = geometry_msgs.msg.Point.Resolve(msg.point[i]);
      }
    }
    else {
      resolved.point = []
    }

    return resolved;
    }
};

class ReevaluateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gain = null;
      this.yaw = null;
    }
    else {
      if (initObj.hasOwnProperty('gain')) {
        this.gain = initObj.gain
      }
      else {
        this.gain = [];
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ReevaluateResponse
    // Serialize message field [gain]
    bufferOffset = _arraySerializer.float64(obj.gain, buffer, bufferOffset, null);
    // Serialize message field [yaw]
    bufferOffset = _arraySerializer.float64(obj.yaw, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReevaluateResponse
    let len;
    let data = new ReevaluateResponse(null);
    // Deserialize message field [gain]
    data.gain = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [yaw]
    data.yaw = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.gain.length;
    length += 8 * object.yaw.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'aeplanner/ReevaluateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c438d60b887bb182c86699eb4d27de35';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] gain
    float64[] yaw
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ReevaluateResponse(null);
    if (msg.gain !== undefined) {
      resolved.gain = msg.gain;
    }
    else {
      resolved.gain = []
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = []
    }

    return resolved;
    }
};

module.exports = {
  Request: ReevaluateRequest,
  Response: ReevaluateResponse,
  md5sum() { return '2280f373a6f208a73c4e2808d32c69a4'; },
  datatype() { return 'aeplanner/Reevaluate'; }
};
