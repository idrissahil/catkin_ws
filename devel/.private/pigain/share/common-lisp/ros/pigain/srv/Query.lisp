; Auto-generated. Do not edit!


(cl:in-package pigain-srv)


;//! \htmlinclude Query-request.msg.html

(cl:defclass <Query-request> (roslisp-msg-protocol:ros-message)
  ((point
    :reader point
    :initarg :point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass Query-request (<Query-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Query-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Query-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pigain-srv:<Query-request> is deprecated: use pigain-srv:Query-request instead.")))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <Query-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pigain-srv:point-val is deprecated.  Use pigain-srv:point instead.")
  (point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Query-request>) ostream)
  "Serializes a message object of type '<Query-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Query-request>) istream)
  "Deserializes a message object of type '<Query-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Query-request>)))
  "Returns string type for a service object of type '<Query-request>"
  "pigain/QueryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Query-request)))
  "Returns string type for a service object of type 'Query-request"
  "pigain/QueryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Query-request>)))
  "Returns md5sum for a message object of type '<Query-request>"
  "cfbeffb732fb085ef41c291ee034ea65")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Query-request)))
  "Returns md5sum for a message object of type 'Query-request"
  "cfbeffb732fb085ef41c291ee034ea65")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Query-request>)))
  "Returns full string definition for message of type '<Query-request>"
  (cl:format cl:nil "geometry_msgs/Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Query-request)))
  "Returns full string definition for message of type 'Query-request"
  (cl:format cl:nil "geometry_msgs/Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Query-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Query-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Query-request
    (cl:cons ':point (point msg))
))
;//! \htmlinclude Query-response.msg.html

(cl:defclass <Query-response> (roslisp-msg-protocol:ros-message)
  ((mu
    :reader mu
    :initarg :mu
    :type cl:float
    :initform 0.0)
   (sigma
    :reader sigma
    :initarg :sigma
    :type cl:float
    :initform 0.0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0))
)

(cl:defclass Query-response (<Query-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Query-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Query-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pigain-srv:<Query-response> is deprecated: use pigain-srv:Query-response instead.")))

(cl:ensure-generic-function 'mu-val :lambda-list '(m))
(cl:defmethod mu-val ((m <Query-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pigain-srv:mu-val is deprecated.  Use pigain-srv:mu instead.")
  (mu m))

(cl:ensure-generic-function 'sigma-val :lambda-list '(m))
(cl:defmethod sigma-val ((m <Query-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pigain-srv:sigma-val is deprecated.  Use pigain-srv:sigma instead.")
  (sigma m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <Query-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pigain-srv:yaw-val is deprecated.  Use pigain-srv:yaw instead.")
  (yaw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Query-response>) ostream)
  "Serializes a message object of type '<Query-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'mu))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'sigma))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Query-response>) istream)
  "Deserializes a message object of type '<Query-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mu) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sigma) (roslisp-utils:decode-double-float-bits bits)))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Query-response>)))
  "Returns string type for a service object of type '<Query-response>"
  "pigain/QueryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Query-response)))
  "Returns string type for a service object of type 'Query-response"
  "pigain/QueryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Query-response>)))
  "Returns md5sum for a message object of type '<Query-response>"
  "cfbeffb732fb085ef41c291ee034ea65")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Query-response)))
  "Returns md5sum for a message object of type 'Query-response"
  "cfbeffb732fb085ef41c291ee034ea65")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Query-response>)))
  "Returns full string definition for message of type '<Query-response>"
  (cl:format cl:nil "float64 mu~%float64 sigma~%float64 yaw~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Query-response)))
  "Returns full string definition for message of type 'Query-response"
  (cl:format cl:nil "float64 mu~%float64 sigma~%float64 yaw~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Query-response>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Query-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Query-response
    (cl:cons ':mu (mu msg))
    (cl:cons ':sigma (sigma msg))
    (cl:cons ':yaw (yaw msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Query)))
  'Query-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Query)))
  'Query-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Query)))
  "Returns string type for a service object of type '<Query>"
  "pigain/Query")