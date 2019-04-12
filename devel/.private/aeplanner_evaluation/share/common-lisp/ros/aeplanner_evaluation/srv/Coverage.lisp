; Auto-generated. Do not edit!


(cl:in-package aeplanner_evaluation-srv)


;//! \htmlinclude Coverage-request.msg.html

(cl:defclass <Coverage-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Coverage-request (<Coverage-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Coverage-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Coverage-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aeplanner_evaluation-srv:<Coverage-request> is deprecated: use aeplanner_evaluation-srv:Coverage-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Coverage-request>) ostream)
  "Serializes a message object of type '<Coverage-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Coverage-request>) istream)
  "Deserializes a message object of type '<Coverage-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Coverage-request>)))
  "Returns string type for a service object of type '<Coverage-request>"
  "aeplanner_evaluation/CoverageRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Coverage-request)))
  "Returns string type for a service object of type 'Coverage-request"
  "aeplanner_evaluation/CoverageRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Coverage-request>)))
  "Returns md5sum for a message object of type '<Coverage-request>"
  "5436f3000508ef50908df092cf89c062")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Coverage-request)))
  "Returns md5sum for a message object of type 'Coverage-request"
  "5436f3000508ef50908df092cf89c062")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Coverage-request>)))
  "Returns full string definition for message of type '<Coverage-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Coverage-request)))
  "Returns full string definition for message of type 'Coverage-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Coverage-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Coverage-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Coverage-request
))
;//! \htmlinclude Coverage-response.msg.html

(cl:defclass <Coverage-response> (roslisp-msg-protocol:ros-message)
  ((coverage
    :reader coverage
    :initarg :coverage
    :type cl:float
    :initform 0.0)
   (free
    :reader free
    :initarg :free
    :type cl:float
    :initform 0.0)
   (occupied
    :reader occupied
    :initarg :occupied
    :type cl:float
    :initform 0.0)
   (unmapped
    :reader unmapped
    :initarg :unmapped
    :type cl:float
    :initform 0.0))
)

(cl:defclass Coverage-response (<Coverage-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Coverage-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Coverage-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aeplanner_evaluation-srv:<Coverage-response> is deprecated: use aeplanner_evaluation-srv:Coverage-response instead.")))

(cl:ensure-generic-function 'coverage-val :lambda-list '(m))
(cl:defmethod coverage-val ((m <Coverage-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aeplanner_evaluation-srv:coverage-val is deprecated.  Use aeplanner_evaluation-srv:coverage instead.")
  (coverage m))

(cl:ensure-generic-function 'free-val :lambda-list '(m))
(cl:defmethod free-val ((m <Coverage-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aeplanner_evaluation-srv:free-val is deprecated.  Use aeplanner_evaluation-srv:free instead.")
  (free m))

(cl:ensure-generic-function 'occupied-val :lambda-list '(m))
(cl:defmethod occupied-val ((m <Coverage-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aeplanner_evaluation-srv:occupied-val is deprecated.  Use aeplanner_evaluation-srv:occupied instead.")
  (occupied m))

(cl:ensure-generic-function 'unmapped-val :lambda-list '(m))
(cl:defmethod unmapped-val ((m <Coverage-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aeplanner_evaluation-srv:unmapped-val is deprecated.  Use aeplanner_evaluation-srv:unmapped instead.")
  (unmapped m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Coverage-response>) ostream)
  "Serializes a message object of type '<Coverage-response>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'coverage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'free))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'occupied))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'unmapped))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Coverage-response>) istream)
  "Deserializes a message object of type '<Coverage-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'coverage) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'free) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'occupied) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'unmapped) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Coverage-response>)))
  "Returns string type for a service object of type '<Coverage-response>"
  "aeplanner_evaluation/CoverageResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Coverage-response)))
  "Returns string type for a service object of type 'Coverage-response"
  "aeplanner_evaluation/CoverageResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Coverage-response>)))
  "Returns md5sum for a message object of type '<Coverage-response>"
  "5436f3000508ef50908df092cf89c062")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Coverage-response)))
  "Returns md5sum for a message object of type 'Coverage-response"
  "5436f3000508ef50908df092cf89c062")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Coverage-response>)))
  "Returns full string definition for message of type '<Coverage-response>"
  (cl:format cl:nil "float64 coverage~%float64 free~%float64 occupied~%float64 unmapped~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Coverage-response)))
  "Returns full string definition for message of type 'Coverage-response"
  (cl:format cl:nil "float64 coverage~%float64 free~%float64 occupied~%float64 unmapped~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Coverage-response>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Coverage-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Coverage-response
    (cl:cons ':coverage (coverage msg))
    (cl:cons ':free (free msg))
    (cl:cons ':occupied (occupied msg))
    (cl:cons ':unmapped (unmapped msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Coverage)))
  'Coverage-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Coverage)))
  'Coverage-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Coverage)))
  "Returns string type for a service object of type '<Coverage>"
  "aeplanner_evaluation/Coverage")