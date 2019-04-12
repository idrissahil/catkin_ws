; Auto-generated. Do not edit!


(cl:in-package aeplanner-msg)


;//! \htmlinclude aeplannerResult.msg.html

(cl:defclass <aeplannerResult> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (frontiers
    :reader frontiers
    :initarg :frontiers
    :type geometry_msgs-msg:PoseArray
    :initform (cl:make-instance 'geometry_msgs-msg:PoseArray))
   (is_clear
    :reader is_clear
    :initarg :is_clear
    :type cl:boolean
    :initform cl:nil)
   (sampling_time
    :reader sampling_time
    :initarg :sampling_time
    :type std_msgs-msg:Duration
    :initform (cl:make-instance 'std_msgs-msg:Duration))
   (planning_time
    :reader planning_time
    :initarg :planning_time
    :type std_msgs-msg:Duration
    :initform (cl:make-instance 'std_msgs-msg:Duration))
   (collision_check_time
    :reader collision_check_time
    :initarg :collision_check_time
    :type std_msgs-msg:Duration
    :initform (cl:make-instance 'std_msgs-msg:Duration))
   (tree_size
    :reader tree_size
    :initarg :tree_size
    :type cl:integer
    :initform 0))
)

(cl:defclass aeplannerResult (<aeplannerResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <aeplannerResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'aeplannerResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aeplanner-msg:<aeplannerResult> is deprecated: use aeplanner-msg:aeplannerResult instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <aeplannerResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aeplanner-msg:pose-val is deprecated.  Use aeplanner-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'frontiers-val :lambda-list '(m))
(cl:defmethod frontiers-val ((m <aeplannerResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aeplanner-msg:frontiers-val is deprecated.  Use aeplanner-msg:frontiers instead.")
  (frontiers m))

(cl:ensure-generic-function 'is_clear-val :lambda-list '(m))
(cl:defmethod is_clear-val ((m <aeplannerResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aeplanner-msg:is_clear-val is deprecated.  Use aeplanner-msg:is_clear instead.")
  (is_clear m))

(cl:ensure-generic-function 'sampling_time-val :lambda-list '(m))
(cl:defmethod sampling_time-val ((m <aeplannerResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aeplanner-msg:sampling_time-val is deprecated.  Use aeplanner-msg:sampling_time instead.")
  (sampling_time m))

(cl:ensure-generic-function 'planning_time-val :lambda-list '(m))
(cl:defmethod planning_time-val ((m <aeplannerResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aeplanner-msg:planning_time-val is deprecated.  Use aeplanner-msg:planning_time instead.")
  (planning_time m))

(cl:ensure-generic-function 'collision_check_time-val :lambda-list '(m))
(cl:defmethod collision_check_time-val ((m <aeplannerResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aeplanner-msg:collision_check_time-val is deprecated.  Use aeplanner-msg:collision_check_time instead.")
  (collision_check_time m))

(cl:ensure-generic-function 'tree_size-val :lambda-list '(m))
(cl:defmethod tree_size-val ((m <aeplannerResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aeplanner-msg:tree_size-val is deprecated.  Use aeplanner-msg:tree_size instead.")
  (tree_size m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <aeplannerResult>) ostream)
  "Serializes a message object of type '<aeplannerResult>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'frontiers) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_clear) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sampling_time) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'planning_time) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'collision_check_time) ostream)
  (cl:let* ((signed (cl:slot-value msg 'tree_size)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <aeplannerResult>) istream)
  "Deserializes a message object of type '<aeplannerResult>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'frontiers) istream)
    (cl:setf (cl:slot-value msg 'is_clear) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sampling_time) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'planning_time) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'collision_check_time) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tree_size) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<aeplannerResult>)))
  "Returns string type for a message object of type '<aeplannerResult>"
  "aeplanner/aeplannerResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'aeplannerResult)))
  "Returns string type for a message object of type 'aeplannerResult"
  "aeplanner/aeplannerResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<aeplannerResult>)))
  "Returns md5sum for a message object of type '<aeplannerResult>"
  "9455a2480a247f4ce7d9ba7774e790ba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'aeplannerResult)))
  "Returns md5sum for a message object of type 'aeplannerResult"
  "9455a2480a247f4ce7d9ba7774e790ba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<aeplannerResult>)))
  "Returns full string definition for message of type '<aeplannerResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result~%geometry_msgs/PoseStamped pose~%geometry_msgs/PoseArray frontiers~%bool is_clear~%std_msgs/Duration sampling_time~%std_msgs/Duration planning_time~%std_msgs/Duration collision_check_time~%int32 tree_size~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: std_msgs/Duration~%duration data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'aeplannerResult)))
  "Returns full string definition for message of type 'aeplannerResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result~%geometry_msgs/PoseStamped pose~%geometry_msgs/PoseArray frontiers~%bool is_clear~%std_msgs/Duration sampling_time~%std_msgs/Duration planning_time~%std_msgs/Duration collision_check_time~%int32 tree_size~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: std_msgs/Duration~%duration data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <aeplannerResult>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'frontiers))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sampling_time))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'planning_time))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'collision_check_time))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <aeplannerResult>))
  "Converts a ROS message object to a list"
  (cl:list 'aeplannerResult
    (cl:cons ':pose (pose msg))
    (cl:cons ':frontiers (frontiers msg))
    (cl:cons ':is_clear (is_clear msg))
    (cl:cons ':sampling_time (sampling_time msg))
    (cl:cons ':planning_time (planning_time msg))
    (cl:cons ':collision_check_time (collision_check_time msg))
    (cl:cons ':tree_size (tree_size msg))
))
