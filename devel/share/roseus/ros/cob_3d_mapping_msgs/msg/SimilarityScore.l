;; Auto-generated. Do not edit!


(when (boundp 'cob_3d_mapping_msgs::SimilarityScore)
  (if (not (find-package "COB_3D_MAPPING_MSGS"))
    (make-package "COB_3D_MAPPING_MSGS"))
  (shadow 'SimilarityScore (find-package "COB_3D_MAPPING_MSGS")))
(unless (find-package "COB_3D_MAPPING_MSGS::SIMILARITYSCORE")
  (make-package "COB_3D_MAPPING_MSGS::SIMILARITYSCORE"))

(in-package "ROS")
;;//! \htmlinclude SimilarityScore.msg.html


(defclass cob_3d_mapping_msgs::SimilarityScore
  :super ros::object
  :slots (_ID _prob ))

(defmethod cob_3d_mapping_msgs::SimilarityScore
  (:init
   (&key
    ((:ID __ID) 0)
    ((:prob __prob) 0.0)
    )
   (send-super :init)
   (setq _ID (round __ID))
   (setq _prob (float __prob))
   self)
  (:ID
   (&optional __ID)
   (if __ID (setq _ID __ID)) _ID)
  (:prob
   (&optional __prob)
   (if __prob (setq _prob __prob)) _prob)
  (:serialization-length
   ()
   (+
    ;; uint32 _ID
    4
    ;; float32 _prob
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _ID
       (write-long _ID s)
     ;; float32 _prob
       (sys::poke _prob (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _ID
     (setq _ID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _prob
     (setq _prob (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get cob_3d_mapping_msgs::SimilarityScore :md5sum-) "bae66c7dce1ddf1ccfcfb042f78f22aa")
(setf (get cob_3d_mapping_msgs::SimilarityScore :datatype-) "cob_3d_mapping_msgs/SimilarityScore")
(setf (get cob_3d_mapping_msgs::SimilarityScore :definition-)
      "uint32 ID
float32 prob
")



(provide :cob_3d_mapping_msgs/SimilarityScore "bae66c7dce1ddf1ccfcfb042f78f22aa")


