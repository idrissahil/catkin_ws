;; Auto-generated. Do not edit!


(when (boundp 'aeplanner::aeplannerResult)
  (if (not (find-package "AEPLANNER"))
    (make-package "AEPLANNER"))
  (shadow 'aeplannerResult (find-package "AEPLANNER")))
(unless (find-package "AEPLANNER::AEPLANNERRESULT")
  (make-package "AEPLANNER::AEPLANNERRESULT"))

(in-package "ROS")
;;//! \htmlinclude aeplannerResult.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass aeplanner::aeplannerResult
  :super ros::object
  :slots (_pose _frontiers _is_clear _sampling_time _planning_time _collision_check_time _tree_size ))

(defmethod aeplanner::aeplannerResult
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    ((:frontiers __frontiers) (instance geometry_msgs::PoseArray :init))
    ((:is_clear __is_clear) nil)
    ((:sampling_time __sampling_time) (instance std_msgs::Duration :init))
    ((:planning_time __planning_time) (instance std_msgs::Duration :init))
    ((:collision_check_time __collision_check_time) (instance std_msgs::Duration :init))
    ((:tree_size __tree_size) 0)
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _frontiers __frontiers)
   (setq _is_clear __is_clear)
   (setq _sampling_time __sampling_time)
   (setq _planning_time __planning_time)
   (setq _collision_check_time __collision_check_time)
   (setq _tree_size (round __tree_size))
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:frontiers
   (&rest __frontiers)
   (if (keywordp (car __frontiers))
       (send* _frontiers __frontiers)
     (progn
       (if __frontiers (setq _frontiers (car __frontiers)))
       _frontiers)))
  (:is_clear
   (&optional __is_clear)
   (if __is_clear (setq _is_clear __is_clear)) _is_clear)
  (:sampling_time
   (&rest __sampling_time)
   (if (keywordp (car __sampling_time))
       (send* _sampling_time __sampling_time)
     (progn
       (if __sampling_time (setq _sampling_time (car __sampling_time)))
       _sampling_time)))
  (:planning_time
   (&rest __planning_time)
   (if (keywordp (car __planning_time))
       (send* _planning_time __planning_time)
     (progn
       (if __planning_time (setq _planning_time (car __planning_time)))
       _planning_time)))
  (:collision_check_time
   (&rest __collision_check_time)
   (if (keywordp (car __collision_check_time))
       (send* _collision_check_time __collision_check_time)
     (progn
       (if __collision_check_time (setq _collision_check_time (car __collision_check_time)))
       _collision_check_time)))
  (:tree_size
   (&optional __tree_size)
   (if __tree_size (setq _tree_size __tree_size)) _tree_size)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ;; geometry_msgs/PoseArray _frontiers
    (send _frontiers :serialization-length)
    ;; bool _is_clear
    1
    ;; std_msgs/Duration _sampling_time
    (send _sampling_time :serialization-length)
    ;; std_msgs/Duration _planning_time
    (send _planning_time :serialization-length)
    ;; std_msgs/Duration _collision_check_time
    (send _collision_check_time :serialization-length)
    ;; int32 _tree_size
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;; geometry_msgs/PoseArray _frontiers
       (send _frontiers :serialize s)
     ;; bool _is_clear
       (if _is_clear (write-byte -1 s) (write-byte 0 s))
     ;; std_msgs/Duration _sampling_time
       (send _sampling_time :serialize s)
     ;; std_msgs/Duration _planning_time
       (send _planning_time :serialize s)
     ;; std_msgs/Duration _collision_check_time
       (send _collision_check_time :serialize s)
     ;; int32 _tree_size
       (write-long _tree_size s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; geometry_msgs/PoseArray _frontiers
     (send _frontiers :deserialize buf ptr-) (incf ptr- (send _frontiers :serialization-length))
   ;; bool _is_clear
     (setq _is_clear (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; std_msgs/Duration _sampling_time
     (send _sampling_time :deserialize buf ptr-) (incf ptr- (send _sampling_time :serialization-length))
   ;; std_msgs/Duration _planning_time
     (send _planning_time :deserialize buf ptr-) (incf ptr- (send _planning_time :serialization-length))
   ;; std_msgs/Duration _collision_check_time
     (send _collision_check_time :deserialize buf ptr-) (incf ptr- (send _collision_check_time :serialization-length))
   ;; int32 _tree_size
     (setq _tree_size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get aeplanner::aeplannerResult :md5sum-) "9455a2480a247f4ce7d9ba7774e790ba")
(setf (get aeplanner::aeplannerResult :datatype-) "aeplanner/aeplannerResult")
(setf (get aeplanner::aeplannerResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Define the result
geometry_msgs/PoseStamped pose
geometry_msgs/PoseArray frontiers
bool is_clear
std_msgs/Duration sampling_time
std_msgs/Duration planning_time
std_msgs/Duration collision_check_time
int32 tree_size

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/PoseArray
# An array of poses with a header for global reference.

Header header

Pose[] poses

================================================================================
MSG: std_msgs/Duration
duration data

")



(provide :aeplanner/aeplannerResult "9455a2480a247f4ce7d9ba7774e790ba")


