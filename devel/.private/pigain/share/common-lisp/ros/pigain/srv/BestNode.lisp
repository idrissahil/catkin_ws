; Auto-generated. Do not edit!


(cl:in-package pigain-srv)


;//! \htmlinclude BestNode-request.msg.html

(cl:defclass <BestNode-request> (roslisp-msg-protocol:ros-message)
  ((pos
    :reader pos
    :initarg :pos
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (threshold
    :reader threshold
    :initarg :threshold
    :type cl:float
    :initform 0.0))
)

(cl:defclass BestNode-request (<BestNode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BestNode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BestNode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pigain-srv:<BestNode-request> is deprecated: use pigain-srv:BestNode-request instead.")))

(cl:ensure-generic-function 'pos-val :lambda-list '(m))
(cl:defmethod pos-val ((m <BestNode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pigain-srv:pos-val is deprecated.  Use pigain-srv:pos instead.")
  (pos m))

(cl:ensure-generic-function 'threshold-val :lambda-list '(m))
(cl:defmethod threshold-val ((m <BestNode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pigain-srv:threshold-val is deprecated.  Use pigain-srv:threshold instead.")
  (threshold m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BestNode-request>) ostream)
  "Serializes a message object of type '<BestNode-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pos) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'threshold))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BestNode-request>) istream)
  "Deserializes a message object of type '<BestNode-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pos) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'threshold) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BestNode-request>)))
  "Returns string type for a service object of type '<BestNode-request>"
  "pigain/BestNodeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BestNode-request)))
  "Returns string type for a service object of type 'BestNode-request"
  "pigain/BestNodeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BestNode-request>)))
  "Returns md5sum for a message object of type '<BestNode-request>"
  "6ef124f7650f66bfe5fcee2adc4b7d2c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BestNode-request)))
  "Returns md5sum for a message object of type 'BestNode-request"
  "6ef124f7650f66bfe5fcee2adc4b7d2c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BestNode-request>)))
  "Returns full string definition for message of type '<BestNode-request>"
  (cl:format cl:nil "geometry_msgs/Point pos~%float64 threshold~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BestNode-request)))
  "Returns full string definition for message of type 'BestNode-request"
  (cl:format cl:nil "geometry_msgs/Point pos~%float64 threshold~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BestNode-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pos))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BestNode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'BestNode-request
    (cl:cons ':pos (pos msg))
    (cl:cons ':threshold (threshold msg))
))
;//! \htmlinclude BestNode-response.msg.html

(cl:defclass <BestNode-response> (roslisp-msg-protocol:ros-message)
  ((best_node
    :reader best_node
    :initarg :best_node
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (gain
    :reader gain
    :initarg :gain
    :type cl:float
    :initform 0.0))
)

(cl:defclass BestNode-response (<BestNode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BestNode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BestNode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pigain-srv:<BestNode-response> is deprecated: use pigain-srv:BestNode-response instead.")))

(cl:ensure-generic-function 'best_node-val :lambda-list '(m))
(cl:defmethod best_node-val ((m <BestNode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pigain-srv:best_node-val is deprecated.  Use pigain-srv:best_node instead.")
  (best_node m))

(cl:ensure-generic-function 'gain-val :lambda-list '(m))
(cl:defmethod gain-val ((m <BestNode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pigain-srv:gain-val is deprecated.  Use pigain-srv:gain instead.")
  (gain m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BestNode-response>) ostream)
  "Serializes a message object of type '<BestNode-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'best_node))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'best_node))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BestNode-response>) istream)
  "Deserializes a message object of type '<BestNode-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'best_node) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'best_node)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BestNode-response>)))
  "Returns string type for a service object of type '<BestNode-response>"
  "pigain/BestNodeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BestNode-response)))
  "Returns string type for a service object of type 'BestNode-response"
  "pigain/BestNodeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BestNode-response>)))
  "Returns md5sum for a message object of type '<BestNode-response>"
  "6ef124f7650f66bfe5fcee2adc4b7d2c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BestNode-response)))
  "Returns md5sum for a message object of type 'BestNode-response"
  "6ef124f7650f66bfe5fcee2adc4b7d2c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BestNode-response>)))
  "Returns full string definition for message of type '<BestNode-response>"
  (cl:format cl:nil "geometry_msgs/Point[] best_node~%float64 gain~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BestNode-response)))
  "Returns full string definition for message of type 'BestNode-response"
  (cl:format cl:nil "geometry_msgs/Point[] best_node~%float64 gain~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BestNode-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'best_node) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BestNode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'BestNode-response
    (cl:cons ':best_node (best_node msg))
    (cl:cons ':gain (gain msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'BestNode)))
  'BestNode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'BestNode)))
  'BestNode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BestNode)))
  "Returns string type for a service object of type '<BestNode>"
  "pigain/BestNode")