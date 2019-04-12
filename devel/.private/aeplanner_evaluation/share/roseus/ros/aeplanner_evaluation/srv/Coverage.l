;; Auto-generated. Do not edit!


(when (boundp 'aeplanner_evaluation::Coverage)
  (if (not (find-package "AEPLANNER_EVALUATION"))
    (make-package "AEPLANNER_EVALUATION"))
  (shadow 'Coverage (find-package "AEPLANNER_EVALUATION")))
(unless (find-package "AEPLANNER_EVALUATION::COVERAGE")
  (make-package "AEPLANNER_EVALUATION::COVERAGE"))
(unless (find-package "AEPLANNER_EVALUATION::COVERAGEREQUEST")
  (make-package "AEPLANNER_EVALUATION::COVERAGEREQUEST"))
(unless (find-package "AEPLANNER_EVALUATION::COVERAGERESPONSE")
  (make-package "AEPLANNER_EVALUATION::COVERAGERESPONSE"))

(in-package "ROS")





(defclass aeplanner_evaluation::CoverageRequest
  :super ros::object
  :slots ())

(defmethod aeplanner_evaluation::CoverageRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass aeplanner_evaluation::CoverageResponse
  :super ros::object
  :slots (_coverage _free _occupied _unmapped ))

(defmethod aeplanner_evaluation::CoverageResponse
  (:init
   (&key
    ((:coverage __coverage) 0.0)
    ((:free __free) 0.0)
    ((:occupied __occupied) 0.0)
    ((:unmapped __unmapped) 0.0)
    )
   (send-super :init)
   (setq _coverage (float __coverage))
   (setq _free (float __free))
   (setq _occupied (float __occupied))
   (setq _unmapped (float __unmapped))
   self)
  (:coverage
   (&optional __coverage)
   (if __coverage (setq _coverage __coverage)) _coverage)
  (:free
   (&optional __free)
   (if __free (setq _free __free)) _free)
  (:occupied
   (&optional __occupied)
   (if __occupied (setq _occupied __occupied)) _occupied)
  (:unmapped
   (&optional __unmapped)
   (if __unmapped (setq _unmapped __unmapped)) _unmapped)
  (:serialization-length
   ()
   (+
    ;; float64 _coverage
    8
    ;; float64 _free
    8
    ;; float64 _occupied
    8
    ;; float64 _unmapped
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _coverage
       (sys::poke _coverage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _free
       (sys::poke _free (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _occupied
       (sys::poke _occupied (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _unmapped
       (sys::poke _unmapped (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _coverage
     (setq _coverage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _free
     (setq _free (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _occupied
     (setq _occupied (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _unmapped
     (setq _unmapped (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass aeplanner_evaluation::Coverage
  :super ros::object
  :slots ())

(setf (get aeplanner_evaluation::Coverage :md5sum-) "5436f3000508ef50908df092cf89c062")
(setf (get aeplanner_evaluation::Coverage :datatype-) "aeplanner_evaluation/Coverage")
(setf (get aeplanner_evaluation::Coverage :request) aeplanner_evaluation::CoverageRequest)
(setf (get aeplanner_evaluation::Coverage :response) aeplanner_evaluation::CoverageResponse)

(defmethod aeplanner_evaluation::CoverageRequest
  (:response () (instance aeplanner_evaluation::CoverageResponse :init)))

(setf (get aeplanner_evaluation::CoverageRequest :md5sum-) "5436f3000508ef50908df092cf89c062")
(setf (get aeplanner_evaluation::CoverageRequest :datatype-) "aeplanner_evaluation/CoverageRequest")
(setf (get aeplanner_evaluation::CoverageRequest :definition-)
      "---
float64 coverage
float64 free
float64 occupied
float64 unmapped

")

(setf (get aeplanner_evaluation::CoverageResponse :md5sum-) "5436f3000508ef50908df092cf89c062")
(setf (get aeplanner_evaluation::CoverageResponse :datatype-) "aeplanner_evaluation/CoverageResponse")
(setf (get aeplanner_evaluation::CoverageResponse :definition-)
      "---
float64 coverage
float64 free
float64 occupied
float64 unmapped

")



(provide :aeplanner_evaluation/Coverage "5436f3000508ef50908df092cf89c062")


