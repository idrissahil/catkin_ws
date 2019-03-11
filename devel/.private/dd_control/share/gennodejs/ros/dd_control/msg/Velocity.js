// Auto-generated. Do not edit!

// (in-package dd_control.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Velocity {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.current_xy_vel = null;
      this.current_z_vel = null;
      this.desired_xy_vel = null;
      this.desired_z_vel = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('current_xy_vel')) {
        this.current_xy_vel = initObj.current_xy_vel
      }
      else {
        this.current_xy_vel = 0.0;
      }
      if (initObj.hasOwnProperty('current_z_vel')) {
        this.current_z_vel = initObj.current_z_vel
      }
      else {
        this.current_z_vel = 0.0;
      }
      if (initObj.hasOwnProperty('desired_xy_vel')) {
        this.desired_xy_vel = initObj.desired_xy_vel
      }
      else {
        this.desired_xy_vel = 0.0;
      }
      if (initObj.hasOwnProperty('desired_z_vel')) {
        this.desired_z_vel = initObj.desired_z_vel
      }
      else {
        this.desired_z_vel = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Velocity
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [current_xy_vel]
    bufferOffset = _serializer.float64(obj.current_xy_vel, buffer, bufferOffset);
    // Serialize message field [current_z_vel]
    bufferOffset = _serializer.float64(obj.current_z_vel, buffer, bufferOffset);
    // Serialize message field [desired_xy_vel]
    bufferOffset = _serializer.float64(obj.desired_xy_vel, buffer, bufferOffset);
    // Serialize message field [desired_z_vel]
    bufferOffset = _serializer.float64(obj.desired_z_vel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Velocity
    let len;
    let data = new Velocity(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [current_xy_vel]
    data.current_xy_vel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [current_z_vel]
    data.current_z_vel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [desired_xy_vel]
    data.desired_xy_vel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [desired_z_vel]
    data.desired_z_vel = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dd_control/Velocity';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0f5ff12a080e44f8a1d763086e8f0b5e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    float64 current_xy_vel
    float64 current_z_vel
    float64 desired_xy_vel
    float64 desired_z_vel
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
    const resolved = new Velocity(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.current_xy_vel !== undefined) {
      resolved.current_xy_vel = msg.current_xy_vel;
    }
    else {
      resolved.current_xy_vel = 0.0
    }

    if (msg.current_z_vel !== undefined) {
      resolved.current_z_vel = msg.current_z_vel;
    }
    else {
      resolved.current_z_vel = 0.0
    }

    if (msg.desired_xy_vel !== undefined) {
      resolved.desired_xy_vel = msg.desired_xy_vel;
    }
    else {
      resolved.desired_xy_vel = 0.0
    }

    if (msg.desired_z_vel !== undefined) {
      resolved.desired_z_vel = msg.desired_z_vel;
    }
    else {
      resolved.desired_z_vel = 0.0
    }

    return resolved;
    }
};

module.exports = Velocity;
