;; Auto-generated. Do not edit!


(when (boundp 'pigain::Node)
  (if (not (find-package "PIGAIN"))
    (make-package "PIGAIN"))
  (shadow 'Node (find-package "PIGAIN")))
(unless (find-package "PIGAIN::NODE")
  (make-package "PIGAIN::NODE"))

(in-package "ROS")
;;//! \htmlinclude Node.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass pigain::Node
  :super ros::object
  :slots (_position _yaw _gain ))

(defmethod pigain::Node
  (:init
   (&key
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:yaw __yaw) 0.0)
    ((:gain __gain) 0.0)
    )
   (send-super :init)
   (setq _position __position)
   (setq _yaw (float __yaw))
   (setq _gain (float __gain))
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:gain
   (&optional __gain)
   (if __gain (setq _gain __gain)) _gain)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; float64 _yaw
    8
    ;; float64 _gain
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gain
       (sys::poke _gain (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gain
     (setq _gain (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get pigain::Node :md5sum-) "621af42ede91547e9cdc2946e4c6e175")
(setf (get pigain::Node :datatype-) "pigain/Node")
(setf (get pigain::Node :definition-)
      "geometry_msgs/Point position
float64 yaw
float64 gain

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :pigain/Node "621af42ede91547e9cdc2946e4c6e175")


