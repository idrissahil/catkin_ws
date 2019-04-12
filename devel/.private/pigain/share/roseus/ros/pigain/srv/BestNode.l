;; Auto-generated. Do not edit!


(when (boundp 'pigain::BestNode)
  (if (not (find-package "PIGAIN"))
    (make-package "PIGAIN"))
  (shadow 'BestNode (find-package "PIGAIN")))
(unless (find-package "PIGAIN::BESTNODE")
  (make-package "PIGAIN::BESTNODE"))
(unless (find-package "PIGAIN::BESTNODEREQUEST")
  (make-package "PIGAIN::BESTNODEREQUEST"))
(unless (find-package "PIGAIN::BESTNODERESPONSE")
  (make-package "PIGAIN::BESTNODERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass pigain::BestNodeRequest
  :super ros::object
  :slots (_pos _threshold ))

(defmethod pigain::BestNodeRequest
  (:init
   (&key
    ((:pos __pos) (instance geometry_msgs::Point :init))
    ((:threshold __threshold) 0.0)
    )
   (send-super :init)
   (setq _pos __pos)
   (setq _threshold (float __threshold))
   self)
  (:pos
   (&rest __pos)
   (if (keywordp (car __pos))
       (send* _pos __pos)
     (progn
       (if __pos (setq _pos (car __pos)))
       _pos)))
  (:threshold
   (&optional __threshold)
   (if __threshold (setq _threshold __threshold)) _threshold)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _pos
    (send _pos :serialization-length)
    ;; float64 _threshold
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _pos
       (send _pos :serialize s)
     ;; float64 _threshold
       (sys::poke _threshold (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _pos
     (send _pos :deserialize buf ptr-) (incf ptr- (send _pos :serialization-length))
   ;; float64 _threshold
     (setq _threshold (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass pigain::BestNodeResponse
  :super ros::object
  :slots (_best_node _gain ))

(defmethod pigain::BestNodeResponse
  (:init
   (&key
    ((:best_node __best_node) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    ((:gain __gain) 0.0)
    )
   (send-super :init)
   (setq _best_node __best_node)
   (setq _gain (float __gain))
   self)
  (:best_node
   (&rest __best_node)
   (if (keywordp (car __best_node))
       (send* _best_node __best_node)
     (progn
       (if __best_node (setq _best_node (car __best_node)))
       _best_node)))
  (:gain
   (&optional __gain)
   (if __gain (setq _gain __gain)) _gain)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point[] _best_node
    (apply #'+ (send-all _best_node :serialization-length)) 4
    ;; float64 _gain
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point[] _best_node
     (write-long (length _best_node) s)
     (dolist (elem _best_node)
       (send elem :serialize s)
       )
     ;; float64 _gain
       (sys::poke _gain (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point[] _best_node
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _best_node (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _best_node)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64 _gain
     (setq _gain (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass pigain::BestNode
  :super ros::object
  :slots ())

(setf (get pigain::BestNode :md5sum-) "6ef124f7650f66bfe5fcee2adc4b7d2c")
(setf (get pigain::BestNode :datatype-) "pigain/BestNode")
(setf (get pigain::BestNode :request) pigain::BestNodeRequest)
(setf (get pigain::BestNode :response) pigain::BestNodeResponse)

(defmethod pigain::BestNodeRequest
  (:response () (instance pigain::BestNodeResponse :init)))

(setf (get pigain::BestNodeRequest :md5sum-) "6ef124f7650f66bfe5fcee2adc4b7d2c")
(setf (get pigain::BestNodeRequest :datatype-) "pigain/BestNodeRequest")
(setf (get pigain::BestNodeRequest :definition-)
      "geometry_msgs/Point pos
float64 threshold

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
geometry_msgs/Point[] best_node
float64 gain


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get pigain::BestNodeResponse :md5sum-) "6ef124f7650f66bfe5fcee2adc4b7d2c")
(setf (get pigain::BestNodeResponse :datatype-) "pigain/BestNodeResponse")
(setf (get pigain::BestNodeResponse :definition-)
      "geometry_msgs/Point pos
float64 threshold

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---
geometry_msgs/Point[] best_node
float64 gain


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :pigain/BestNode "6ef124f7650f66bfe5fcee2adc4b7d2c")


