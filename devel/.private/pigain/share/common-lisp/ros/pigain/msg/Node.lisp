; Auto-generated. Do not edit!


(cl:in-package pigain-msg)


;//! \htmlinclude Node.msg.html

(cl:defclass <Node> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (gain
    :reader gain
    :initarg :gain
    :type cl:float
    :initform 0.0))
)

(cl:defclass Node (<Node>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Node>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Node)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pigain-msg:<Node> is deprecated: use pigain-msg:Node instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <Node>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pigain-msg:position-val is deprecated.  Use pigain-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <Node>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pigain-msg:yaw-val is deprecated.  Use pigain-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'gain-val :lambda-list '(m))
(cl:defmethod gain-val ((m <Node>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pigain-msg:gain-val is deprecated.  Use pigain-msg:gain instead.")
  (gain m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Node>) ostream)
  "Serializes a message object of type '<Node>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'gain))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Node>) istream)
  "Deserializes a message object of type '<Node>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gain) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Node>)))
  "Returns string type for a message object of type '<Node>"
  "pigain/Node")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Node)))
  "Returns string type for a message object of type 'Node"
  "pigain/Node")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Node>)))
  "Returns md5sum for a message object of type '<Node>"
  "621af42ede91547e9cdc2946e4c6e175")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Node)))
  "Returns md5sum for a message object of type 'Node"
  "621af42ede91547e9cdc2946e4c6e175")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Node>)))
  "Returns full string definition for message of type '<Node>"
  (cl:format cl:nil "geometry_msgs/Point position~%float64 yaw~%float64 gain~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Node)))
  "Returns full string definition for message of type 'Node"
  (cl:format cl:nil "geometry_msgs/Point position~%float64 yaw~%float64 gain~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Node>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Node>))
  "Converts a ROS message object to a list"
  (cl:list 'Node
    (cl:cons ':position (position msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':gain (gain msg))
))
