;; Auto-generated. Do not edit!


(when (boundp 'dd_control::Velocity)
  (if (not (find-package "DD_CONTROL"))
    (make-package "DD_CONTROL"))
  (shadow 'Velocity (find-package "DD_CONTROL")))
(unless (find-package "DD_CONTROL::VELOCITY")
  (make-package "DD_CONTROL::VELOCITY"))

(in-package "ROS")
;;//! \htmlinclude Velocity.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass dd_control::Velocity
  :super ros::object
  :slots (_header _current_xy_vel _current_z_vel _desired_xy_vel _desired_z_vel ))

(defmethod dd_control::Velocity
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:current_xy_vel __current_xy_vel) 0.0)
    ((:current_z_vel __current_z_vel) 0.0)
    ((:desired_xy_vel __desired_xy_vel) 0.0)
    ((:desired_z_vel __desired_z_vel) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _current_xy_vel (float __current_xy_vel))
   (setq _current_z_vel (float __current_z_vel))
   (setq _desired_xy_vel (float __desired_xy_vel))
   (setq _desired_z_vel (float __desired_z_vel))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:current_xy_vel
   (&optional __current_xy_vel)
   (if __current_xy_vel (setq _current_xy_vel __current_xy_vel)) _current_xy_vel)
  (:current_z_vel
   (&optional __current_z_vel)
   (if __current_z_vel (setq _current_z_vel __current_z_vel)) _current_z_vel)
  (:desired_xy_vel
   (&optional __desired_xy_vel)
   (if __desired_xy_vel (setq _desired_xy_vel __desired_xy_vel)) _desired_xy_vel)
  (:desired_z_vel
   (&optional __desired_z_vel)
   (if __desired_z_vel (setq _desired_z_vel __desired_z_vel)) _desired_z_vel)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _current_xy_vel
    8
    ;; float64 _current_z_vel
    8
    ;; float64 _desired_xy_vel
    8
    ;; float64 _desired_z_vel
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _current_xy_vel
       (sys::poke _current_xy_vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _current_z_vel
       (sys::poke _current_z_vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _desired_xy_vel
       (sys::poke _desired_xy_vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _desired_z_vel
       (sys::poke _desired_z_vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _current_xy_vel
     (setq _current_xy_vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _current_z_vel
     (setq _current_z_vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _desired_xy_vel
     (setq _desired_xy_vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _desired_z_vel
     (setq _desired_z_vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get dd_control::Velocity :md5sum-) "0f5ff12a080e44f8a1d763086e8f0b5e")
(setf (get dd_control::Velocity :datatype-) "dd_control/Velocity")
(setf (get dd_control::Velocity :definition-)
      "Header header
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

")



(provide :dd_control/Velocity "0f5ff12a080e44f8a1d763086e8f0b5e")


