; Auto-generated. Do not edit!


(cl:in-package aeplanner-srv)


;//! \htmlinclude Reevaluate-request.msg.html

(cl:defclass <Reevaluate-request> (roslisp-msg-protocol:ros-message)
  ((point
    :reader point
    :initarg :point
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass Reevaluate-request (<Reevaluate-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Reevaluate-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Reevaluate-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aeplanner-srv:<Reevaluate-request> is deprecated: use aeplanner-srv:Reevaluate-request instead.")))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <Reevaluate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aeplanner-srv:point-val is deprecated.  Use aeplanner-srv:point instead.")
  (point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Reevaluate-request>) ostream)
  "Serializes a message object of type '<Reevaluate-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'point))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'point))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Reevaluate-request>) istream)
  "Deserializes a message object of type '<Reevaluate-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'point) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'point)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Reevaluate-request>)))
  "Returns string type for a service object of type '<Reevaluate-request>"
  "aeplanner/ReevaluateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Reevaluate-request)))
  "Returns string type for a service object of type 'Reevaluate-request"
  "aeplanner/ReevaluateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Reevaluate-request>)))
  "Returns md5sum for a message object of type '<Reevaluate-request>"
  "2280f373a6f208a73c4e2808d32c69a4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Reevaluate-request)))
  "Returns md5sum for a message object of type 'Reevaluate-request"
  "2280f373a6f208a73c4e2808d32c69a4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Reevaluate-request>)))
  "Returns full string definition for message of type '<Reevaluate-request>"
  (cl:format cl:nil "geometry_msgs/Point[] point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Reevaluate-request)))
  "Returns full string definition for message of type 'Reevaluate-request"
  (cl:format cl:nil "geometry_msgs/Point[] point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Reevaluate-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'point) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Reevaluate-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Reevaluate-request
    (cl:cons ':point (point msg))
))
;//! \htmlinclude Reevaluate-response.msg.html

(cl:defclass <Reevaluate-response> (roslisp-msg-protocol:ros-message)
  ((gain
    :reader gain
    :initarg :gain
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (yaw
    :reader yaw
    :initarg :yaw
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Reevaluate-response (<Reevaluate-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Reevaluate-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Reevaluate-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name aeplanner-srv:<Reevaluate-response> is deprecated: use aeplanner-srv:Reevaluate-response instead.")))

(cl:ensure-generic-function 'gain-val :lambda-list '(m))
(cl:defmethod gain-val ((m <Reevaluate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aeplanner-srv:gain-val is deprecated.  Use aeplanner-srv:gain instead.")
  (gain m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <Reevaluate-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader aeplanner-srv:yaw-val is deprecated.  Use aeplanner-srv:yaw instead.")
  (yaw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Reevaluate-response>) ostream)
  "Serializes a message object of type '<Reevaluate-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'gain))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'gain))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'yaw))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Reevaluate-response>) istream)
  "Deserializes a message object of type '<Reevaluate-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'gain) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'gain)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'yaw) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'yaw)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Reevaluate-response>)))
  "Returns string type for a service object of type '<Reevaluate-response>"
  "aeplanner/ReevaluateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Reevaluate-response)))
  "Returns string type for a service object of type 'Reevaluate-response"
  "aeplanner/ReevaluateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Reevaluate-response>)))
  "Returns md5sum for a message object of type '<Reevaluate-response>"
  "2280f373a6f208a73c4e2808d32c69a4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Reevaluate-response)))
  "Returns md5sum for a message object of type 'Reevaluate-response"
  "2280f373a6f208a73c4e2808d32c69a4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Reevaluate-response>)))
  "Returns full string definition for message of type '<Reevaluate-response>"
  (cl:format cl:nil "float64[] gain~%float64[] yaw~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Reevaluate-response)))
  "Returns full string definition for message of type 'Reevaluate-response"
  (cl:format cl:nil "float64[] gain~%float64[] yaw~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Reevaluate-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'gain) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'yaw) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Reevaluate-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Reevaluate-response
    (cl:cons ':gain (gain msg))
    (cl:cons ':yaw (yaw msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Reevaluate)))
  'Reevaluate-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Reevaluate)))
  'Reevaluate-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Reevaluate)))
  "Returns string type for a service object of type '<Reevaluate>"
  "aeplanner/Reevaluate")