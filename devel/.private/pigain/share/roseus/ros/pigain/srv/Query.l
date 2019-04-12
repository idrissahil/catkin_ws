;; Auto-generated. Do not edit!


(when (boundp 'pigain::Query)
  (if (not (find-package "PIGAIN"))
    (make-package "PIGAIN"))
  (shadow 'Query (find-package "PIGAIN")))
(unless (find-package "PIGAIN::QUERY")
  (make-package "PIGAIN::QUERY"))
(unless (find-package "PIGAIN::QUERYREQUEST")
  (make-package "PIGAIN::QUERYREQUEST"))
(unless (find-package "PIGAIN::QUERYRESPONSE")
  (make-package "PIGAIN::QUERYRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass pigain::QueryRequest
  :super ros::object
  :slots (_point ))

(defmethod pigain::QueryRequest
  (:init
   (&key
    ((:point __point) (instance geometry_msgs::Point :init))
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
    ;; geometry_msgs/Point _point
    (send _point :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _point
       (send _point :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;;
   self)
  )

(defclass pigain::QueryResponse
  :super ros::object
  :slots (_mu _sigma _yaw ))

(defmethod pigain::QueryResponse
  (:init
   (&key
    ((:mu __mu) 0.0)
    ((:sigma __sigma) 0.0)
    ((:yaw __yaw) 0.0)
    )
   (send-super :init)
   (setq _mu (float __mu))
   (setq _sigma (float __sigma))
   (setq _yaw (float __yaw))
   self)
  (:mu
   (&optional __mu)
   (if __mu (setq _mu __mu)) _mu)
  (:sigma
   (&optional __sigma)
   (if __sigma (setq _sigma __sigma)) _sigma)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:serialization-length
   ()
   (+
    ;; float64 _mu
    8
    ;; float64 _sigma
    8
    ;; float64 _yaw
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _mu
       (sys::poke _mu (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _sigma
       (sys::poke _sigma (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _mu
     (setq _mu (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _sigma
     (setq _sigma (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass pigain::Query
  :super ros::object
  :slots ())

(setf (get pigain::Query :md5sum-) "cfbeffb732fb085ef41c291ee034ea65")
(setf (get pigain::Query :datatype-) "pigain/Query")
(setf (get pigain::Query :request) pigain::QueryRequest)
(setf (get pigain::Query :response) pigain::QueryResponse)

(defmethod pigain::QueryRequest
  (:response () (instance pigain::QueryResponse :init)))

(setf (get pigain::QueryRequest :md5sum-) "cfbeffb732fb085ef41c291ee034ea65")
(setf (get pigain::QueryRequest :datatype-) "pigain/QueryRequest")
(setf (get pigain::QueryRequest :definition-)
      "geometry_msgs/Point point

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
float64 mu
float64 sigma
float64 yaw

")

(setf (get pigain::QueryResponse :md5sum-) "cfbeffb732fb085ef41c291ee034ea65")
(setf (get pigain::QueryResponse :datatype-) "pigain/QueryResponse")
(setf (get pigain::QueryResponse :definition-)
      "geometry_msgs/Point point

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
float64 mu
float64 sigma
float64 yaw

")



(provide :pigain/Query "cfbeffb732fb085ef41c291ee034ea65")


