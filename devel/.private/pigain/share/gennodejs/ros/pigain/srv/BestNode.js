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

class BestNodeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pos = null;
      this.threshold = null;
    }
    else {
      if (initObj.hasOwnProperty('pos')) {
        this.pos = initObj.pos
      }
      else {
        this.pos = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('threshold')) {
        this.threshold = initObj.threshold
      }
      else {
        this.threshold = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BestNodeRequest
    // Serialize message field [pos]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.pos, buffer, bufferOffset);
    // Serialize message field [threshold]
    bufferOffset = _serializer.float64(obj.threshold, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BestNodeRequest
    let len;
    let data = new BestNodeRequest(null);
    // Deserialize message field [pos]
    data.pos = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [threshold]
    data.threshold = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pigain/BestNodeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '175655a8173e44d2022f409e7e374544';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point pos
    float64 threshold
    
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
    const resolved = new BestNodeRequest(null);
    if (msg.pos !== undefined) {
      resolved.pos = geometry_msgs.msg.Point.Resolve(msg.pos)
    }
    else {
      resolved.pos = new geometry_msgs.msg.Point()
    }

    if (msg.threshold !== undefined) {
      resolved.threshold = msg.threshold;
    }
    else {
      resolved.threshold = 0.0
    }

    return resolved;
    }
};

class BestNodeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.best_node = null;
      this.gain = null;
    }
    else {
      if (initObj.hasOwnProperty('best_node')) {
        this.best_node = initObj.best_node
      }
      else {
        this.best_node = [];
      }
      if (initObj.hasOwnProperty('gain')) {
        this.gain = initObj.gain
      }
      else {
        this.gain = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BestNodeResponse
    // Serialize message field [best_node]
    // Serialize the length for message field [best_node]
    bufferOffset = _serializer.uint32(obj.best_node.length, buffer, bufferOffset);
    obj.best_node.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [gain]
    bufferOffset = _serializer.float64(obj.gain, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BestNodeResponse
    let len;
    let data = new BestNodeResponse(null);
    // Deserialize message field [best_node]
    // Deserialize array length for message field [best_node]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.best_node = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.best_node[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [gain]
    data.gain = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.best_node.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pigain/BestNodeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aa72b0c3593d8d5143961cb50a19c5e1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point[] best_node
    float64 gain
    
    
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
    const resolved = new BestNodeResponse(null);
    if (msg.best_node !== undefined) {
      resolved.best_node = new Array(msg.best_node.length);
      for (let i = 0; i < resolved.best_node.length; ++i) {
        resolved.best_node[i] = geometry_msgs.msg.Point.Resolve(msg.best_node[i]);
      }
    }
    else {
      resolved.best_node = []
    }

    if (msg.gain !== undefined) {
      resolved.gain = msg.gain;
    }
    else {
      resolved.gain = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: BestNodeRequest,
  Response: BestNodeResponse,
  md5sum() { return '6ef124f7650f66bfe5fcee2adc4b7d2c'; },
  datatype() { return 'pigain/BestNode'; }
};
