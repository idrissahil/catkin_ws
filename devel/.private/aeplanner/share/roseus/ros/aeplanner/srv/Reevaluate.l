;; Auto-generated. Do not edit!


(when (boundp 'aeplanner::Reevaluate)
  (if (not (find-package "AEPLANNER"))
    (make-package "AEPLANNER"))
  (shadow 'Reevaluate (find-package "AEPLANNER")))
(unless (find-package "AEPLANNER::REEVALUATE")
  (make-package "AEPLANNER::REEVALUATE"))
(unless (find-package "AEPLANNER::REEVALUATEREQUEST")
  (make-package "AEPLANNER::REEVALUATEREQUEST"))
(unless (find-package "AEPLANNER::REEVALUATERESPONSE")
  (make-package "AEPLANNER::REEVALUATERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass aeplanner::ReevaluateRequest
  :super ros::object
  :slots (_point ))

(defmethod aeplanner::ReevaluateRequest
  (:init
   (&key
    ((:point __point) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    )
   (send-super :init)
   (setq _point __point)
   self)
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point[] _point
    (apply #'+ (send-all _point :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point[] _point
     (write-long (length _point) s)
     (dolist (elem _point)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point[] _point
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _point (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _point)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass aeplanner::ReevaluateResponse
  :super ros::object
  :slots (_gain _yaw ))

(defmethod aeplanner::ReevaluateResponse
  (:init
   (&key
    ((:gain __gain) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:yaw __yaw) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _gain __gain)
   (setq _yaw __yaw)
   self)
  (:gain
   (&optional __gain)
   (if __gain (setq _gain __gain)) _gain)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:serialization-length
   ()
   (+
    ;; float64[] _gain
    (* 8    (length _gain)) 4
    ;; float64[] _yaw
    (* 8    (length _yaw)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _gain
     (write-long (length _gain) s)
     (dotimes (i (length _gain))
       (sys::poke (elt _gain i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _yaw
     (write-long (length _yaw) s)
     (dotimes (i (length _yaw))
       (sys::poke (elt _yaw i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _gain
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _gain (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _gain i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _yaw
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _yaw (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _yaw i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass aeplanner::Reevaluate
  :super ros::object
  :slots ())

(setf (get aeplanner::Reevaluate :md5sum-) "2280f373a6f208a73c4e2808d32c69a4")
(setf (get aeplanner::Reevaluate :datatype-) "aeplanner/Reevaluate")
(setf (get aeplanner::Reevaluate :request) aeplanner::ReevaluateRequest)
(setf (get aeplanner::Reevaluate :response) aeplanner::ReevaluateResponse)

(defmethod aeplanner::ReevaluateRequest
  (:response () (instance aeplanner::ReevaluateResponse :init)))

(setf (get aeplanner::ReevaluateRequest :md5sum-) "2280f373a6f208a73c4e2808d32c69a4")
(setf (get aeplanner::ReevaluateRequest :datatype-) "aeplanner/ReevaluateRequest")
(setf (get aeplanner::ReevaluateRequest :definition-)
      "geometry_msgs/Point[] point

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
float64[] gain
float64[] yaw

")

(setf (get aeplanner::ReevaluateResponse :md5sum-) "2280f373a6f208a73c4e2808d32c69a4")
(setf (get aeplanner::ReevaluateResponse :datatype-) "aeplanner/ReevaluateResponse")
(setf (get aeplanner::ReevaluateResponse :definition-)
      "geometry_msgs/Point[] point

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
float64[] gain
float64[] yaw

")



(provide :aeplanner/Reevaluate "2280f373a6f208a73c4e2808d32c69a4")


