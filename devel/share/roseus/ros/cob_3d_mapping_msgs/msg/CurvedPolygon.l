;; Auto-generated. Do not edit!


(when (boundp 'cob_3d_mapping_msgs::CurvedPolygon)
  (if (not (find-package "COB_3D_MAPPING_MSGS"))
    (make-package "COB_3D_MAPPING_MSGS"))
  (shadow 'CurvedPolygon (find-package "COB_3D_MAPPING_MSGS")))
(unless (find-package "COB_3D_MAPPING_MSGS::CURVEDPOLYGON")
  (make-package "COB_3D_MAPPING_MSGS::CURVEDPOLYGON"))

(in-package "ROS")
;;//! \htmlinclude CurvedPolygon.msg.html


(defclass cob_3d_mapping_msgs::CurvedPolygon
  :super ros::object
  :slots (_stamp _ID _parameter _score _polyline _features _energy _weight ))

(defmethod cob_3d_mapping_msgs::CurvedPolygon
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:ID __ID) 0)
    ((:parameter __parameter) (make-array 6 :initial-element 0.0 :element-type :float))
    ((:score __score) (let (r) (dotimes (i 0) (push (instance cob_3d_mapping_msgs::SimilarityScore :init) r)) r))
    ((:polyline __polyline) (let (r) (dotimes (i 0) (push (instance cob_3d_mapping_msgs::PolylinePoint :init) r)) r))
    ((:features __features) (let (r) (dotimes (i 0) (push (instance cob_3d_mapping_msgs::Feature :init) r)) r))
    ((:energy __energy) "")
    ((:weight __weight) 0.0)
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _ID (round __ID))
   (setq _parameter __parameter)
   (setq _score __score)
   (setq _polyline __polyline)
   (setq _features __features)
   (setq _energy (string __energy))
   (setq _weight (float __weight))
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:ID
   (&optional __ID)
   (if __ID (setq _ID __ID)) _ID)
  (:parameter
   (&optional __parameter)
   (if __parameter (setq _parameter __parameter)) _parameter)
  (:score
   (&rest __score)
   (if (keywordp (car __score))
       (send* _score __score)
     (progn
       (if __score (setq _score (car __score)))
       _score)))
  (:polyline
   (&rest __polyline)
   (if (keywordp (car __polyline))
       (send* _polyline __polyline)
     (progn
       (if __polyline (setq _polyline (car __polyline)))
       _polyline)))
  (:features
   (&rest __features)
   (if (keywordp (car __features))
       (send* _features __features)
     (progn
       (if __features (setq _features (car __features)))
       _features)))
  (:energy
   (&optional __energy)
   (if __energy (setq _energy __energy)) _energy)
  (:weight
   (&optional __weight)
   (if __weight (setq _weight __weight)) _weight)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; uint32 _ID
    4
    ;; float32[6] _parameter
    (* 4    6)
    ;; cob_3d_mapping_msgs/SimilarityScore[] _score
    (apply #'+ (send-all _score :serialization-length)) 4
    ;; cob_3d_mapping_msgs/PolylinePoint[] _polyline
    (apply #'+ (send-all _polyline :serialization-length)) 4
    ;; cob_3d_mapping_msgs/Feature[] _features
    (apply #'+ (send-all _features :serialization-length)) 4
    ;; string _energy
    4 (length _energy)
    ;; float32 _weight
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; uint32 _ID
       (write-long _ID s)
     ;; float32[6] _parameter
     (dotimes (i 6)
       (sys::poke (elt _parameter i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; cob_3d_mapping_msgs/SimilarityScore[] _score
     (write-long (length _score) s)
     (dolist (elem _score)
       (send elem :serialize s)
       )
     ;; cob_3d_mapping_msgs/PolylinePoint[] _polyline
     (write-long (length _polyline) s)
     (dolist (elem _polyline)
       (send elem :serialize s)
       )
     ;; cob_3d_mapping_msgs/Feature[] _features
     (write-long (length _features) s)
     (dolist (elem _features)
       (send elem :serialize s)
       )
     ;; string _energy
       (write-long (length _energy) s) (princ _energy s)
     ;; float32 _weight
       (sys::poke _weight (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _ID
     (setq _ID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[6] _parameter
   (dotimes (i (length _parameter))
     (setf (elt _parameter i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; cob_3d_mapping_msgs/SimilarityScore[] _score
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _score (let (r) (dotimes (i n) (push (instance cob_3d_mapping_msgs::SimilarityScore :init) r)) r))
     (dolist (elem- _score)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; cob_3d_mapping_msgs/PolylinePoint[] _polyline
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _polyline (let (r) (dotimes (i n) (push (instance cob_3d_mapping_msgs::PolylinePoint :init) r)) r))
     (dolist (elem- _polyline)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; cob_3d_mapping_msgs/Feature[] _features
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _features (let (r) (dotimes (i n) (push (instance cob_3d_mapping_msgs::Feature :init) r)) r))
     (dolist (elem- _features)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _energy
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _energy (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _weight
     (setq _weight (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get cob_3d_mapping_msgs::CurvedPolygon :md5sum-) "44b9c6adf55085288b1561faf0dcdb6d")
(setf (get cob_3d_mapping_msgs::CurvedPolygon :datatype-) "cob_3d_mapping_msgs/CurvedPolygon")
(setf (get cob_3d_mapping_msgs::CurvedPolygon :definition-)
      "time stamp
uint32 ID
float32[6] parameter
#float32[][3] polyline
SimilarityScore[] score
PolylinePoint[] polyline
Feature[] features
string energy
float32 weight

================================================================================
MSG: cob_3d_mapping_msgs/SimilarityScore
uint32 ID
float32 prob
================================================================================
MSG: cob_3d_mapping_msgs/PolylinePoint
float32 x
float32 y
float32 edge_prob
================================================================================
MSG: cob_3d_mapping_msgs/Feature
float32 x
float32 y
float32 z
uint32 ID
")



(provide :cob_3d_mapping_msgs/CurvedPolygon "44b9c6adf55085288b1561faf0dcdb6d")


