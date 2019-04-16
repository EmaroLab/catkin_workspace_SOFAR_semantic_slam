;; Auto-generated. Do not edit!


(when (boundp 'cob_object_detection_msgs::BaTestEnvironment)
  (if (not (find-package "COB_OBJECT_DETECTION_MSGS"))
    (make-package "COB_OBJECT_DETECTION_MSGS"))
  (shadow 'BaTestEnvironment (find-package "COB_OBJECT_DETECTION_MSGS")))
(unless (find-package "COB_OBJECT_DETECTION_MSGS::BATESTENVIRONMENT")
  (make-package "COB_OBJECT_DETECTION_MSGS::BATESTENVIRONMENT"))
(unless (find-package "COB_OBJECT_DETECTION_MSGS::BATESTENVIRONMENTREQUEST")
  (make-package "COB_OBJECT_DETECTION_MSGS::BATESTENVIRONMENTREQUEST"))
(unless (find-package "COB_OBJECT_DETECTION_MSGS::BATESTENVIRONMENTRESPONSE")
  (make-package "COB_OBJECT_DETECTION_MSGS::BATESTENVIRONMENTRESPONSE"))

(in-package "ROS")



(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cob_object_detection_msgs::BaTestEnvironmentRequest
  :super ros::object
  :slots (_number_points _frame_view_number _cone_points_per_plane _limit_error_matching _ba_kernel_param _ba_num_iter _ba_initial_mu _ba_final_mu_factor _ba_tau _angle_sigma_degree _translate_sigma_m _obs_point_sigma_m _world_point_sigma_m ))

(defmethod cob_object_detection_msgs::BaTestEnvironmentRequest
  (:init
   (&key
    ((:number_points __number_points) 0)
    ((:frame_view_number __frame_view_number) 0.0)
    ((:cone_points_per_plane __cone_points_per_plane) 0.0)
    ((:limit_error_matching __limit_error_matching) 0.0)
    ((:ba_kernel_param __ba_kernel_param) 0.0)
    ((:ba_num_iter __ba_num_iter) 0)
    ((:ba_initial_mu __ba_initial_mu) 0.0)
    ((:ba_final_mu_factor __ba_final_mu_factor) 0.0)
    ((:ba_tau __ba_tau) 0.0)
    ((:angle_sigma_degree __angle_sigma_degree) 0.0)
    ((:translate_sigma_m __translate_sigma_m) 0.0)
    ((:obs_point_sigma_m __obs_point_sigma_m) 0.0)
    ((:world_point_sigma_m __world_point_sigma_m) 0.0)
    )
   (send-super :init)
   (setq _number_points (round __number_points))
   (setq _frame_view_number (float __frame_view_number))
   (setq _cone_points_per_plane (float __cone_points_per_plane))
   (setq _limit_error_matching (float __limit_error_matching))
   (setq _ba_kernel_param (float __ba_kernel_param))
   (setq _ba_num_iter (round __ba_num_iter))
   (setq _ba_initial_mu (float __ba_initial_mu))
   (setq _ba_final_mu_factor (float __ba_final_mu_factor))
   (setq _ba_tau (float __ba_tau))
   (setq _angle_sigma_degree (float __angle_sigma_degree))
   (setq _translate_sigma_m (float __translate_sigma_m))
   (setq _obs_point_sigma_m (float __obs_point_sigma_m))
   (setq _world_point_sigma_m (float __world_point_sigma_m))
   self)
  (:number_points
   (&optional __number_points)
   (if __number_points (setq _number_points __number_points)) _number_points)
  (:frame_view_number
   (&optional __frame_view_number)
   (if __frame_view_number (setq _frame_view_number __frame_view_number)) _frame_view_number)
  (:cone_points_per_plane
   (&optional __cone_points_per_plane)
   (if __cone_points_per_plane (setq _cone_points_per_plane __cone_points_per_plane)) _cone_points_per_plane)
  (:limit_error_matching
   (&optional __limit_error_matching)
   (if __limit_error_matching (setq _limit_error_matching __limit_error_matching)) _limit_error_matching)
  (:ba_kernel_param
   (&optional __ba_kernel_param)
   (if __ba_kernel_param (setq _ba_kernel_param __ba_kernel_param)) _ba_kernel_param)
  (:ba_num_iter
   (&optional __ba_num_iter)
   (if __ba_num_iter (setq _ba_num_iter __ba_num_iter)) _ba_num_iter)
  (:ba_initial_mu
   (&optional __ba_initial_mu)
   (if __ba_initial_mu (setq _ba_initial_mu __ba_initial_mu)) _ba_initial_mu)
  (:ba_final_mu_factor
   (&optional __ba_final_mu_factor)
   (if __ba_final_mu_factor (setq _ba_final_mu_factor __ba_final_mu_factor)) _ba_final_mu_factor)
  (:ba_tau
   (&optional __ba_tau)
   (if __ba_tau (setq _ba_tau __ba_tau)) _ba_tau)
  (:angle_sigma_degree
   (&optional __angle_sigma_degree)
   (if __angle_sigma_degree (setq _angle_sigma_degree __angle_sigma_degree)) _angle_sigma_degree)
  (:translate_sigma_m
   (&optional __translate_sigma_m)
   (if __translate_sigma_m (setq _translate_sigma_m __translate_sigma_m)) _translate_sigma_m)
  (:obs_point_sigma_m
   (&optional __obs_point_sigma_m)
   (if __obs_point_sigma_m (setq _obs_point_sigma_m __obs_point_sigma_m)) _obs_point_sigma_m)
  (:world_point_sigma_m
   (&optional __world_point_sigma_m)
   (if __world_point_sigma_m (setq _world_point_sigma_m __world_point_sigma_m)) _world_point_sigma_m)
  (:serialization-length
   ()
   (+
    ;; int32 _number_points
    4
    ;; float32 _frame_view_number
    4
    ;; float32 _cone_points_per_plane
    4
    ;; float32 _limit_error_matching
    4
    ;; float32 _ba_kernel_param
    4
    ;; int32 _ba_num_iter
    4
    ;; float32 _ba_initial_mu
    4
    ;; float32 _ba_final_mu_factor
    4
    ;; float32 _ba_tau
    4
    ;; float32 _angle_sigma_degree
    4
    ;; float32 _translate_sigma_m
    4
    ;; float32 _obs_point_sigma_m
    4
    ;; float32 _world_point_sigma_m
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _number_points
       (write-long _number_points s)
     ;; float32 _frame_view_number
       (sys::poke _frame_view_number (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cone_points_per_plane
       (sys::poke _cone_points_per_plane (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _limit_error_matching
       (sys::poke _limit_error_matching (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ba_kernel_param
       (sys::poke _ba_kernel_param (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _ba_num_iter
       (write-long _ba_num_iter s)
     ;; float32 _ba_initial_mu
       (sys::poke _ba_initial_mu (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ba_final_mu_factor
       (sys::poke _ba_final_mu_factor (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ba_tau
       (sys::poke _ba_tau (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angle_sigma_degree
       (sys::poke _angle_sigma_degree (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _translate_sigma_m
       (sys::poke _translate_sigma_m (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _obs_point_sigma_m
       (sys::poke _obs_point_sigma_m (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _world_point_sigma_m
       (sys::poke _world_point_sigma_m (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _number_points
     (setq _number_points (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _frame_view_number
     (setq _frame_view_number (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cone_points_per_plane
     (setq _cone_points_per_plane (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _limit_error_matching
     (setq _limit_error_matching (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ba_kernel_param
     (setq _ba_kernel_param (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _ba_num_iter
     (setq _ba_num_iter (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _ba_initial_mu
     (setq _ba_initial_mu (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ba_final_mu_factor
     (setq _ba_final_mu_factor (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ba_tau
     (setq _ba_tau (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angle_sigma_degree
     (setq _angle_sigma_degree (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _translate_sigma_m
     (setq _translate_sigma_m (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _obs_point_sigma_m
     (setq _obs_point_sigma_m (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _world_point_sigma_m
     (setq _world_point_sigma_m (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass cob_object_detection_msgs::BaTestEnvironmentResponse
  :super ros::object
  :slots (_mean_error _std_dev _min_error _max_error _runs_count _runs_sum _runs_sum2 _time_duration _observations _false_matchings _result ))

(defmethod cob_object_detection_msgs::BaTestEnvironmentResponse
  (:init
   (&key
    ((:mean_error __mean_error) 0.0)
    ((:std_dev __std_dev) 0.0)
    ((:min_error __min_error) 0.0)
    ((:max_error __max_error) 0.0)
    ((:runs_count __runs_count) 0.0)
    ((:runs_sum __runs_sum) 0.0)
    ((:runs_sum2 __runs_sum2) 0.0)
    ((:time_duration __time_duration) 0.0)
    ((:observations __observations) 0)
    ((:false_matchings __false_matchings) 0)
    ((:result __result) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _mean_error (float __mean_error))
   (setq _std_dev (float __std_dev))
   (setq _min_error (float __min_error))
   (setq _max_error (float __max_error))
   (setq _runs_count (float __runs_count))
   (setq _runs_sum (float __runs_sum))
   (setq _runs_sum2 (float __runs_sum2))
   (setq _time_duration (float __time_duration))
   (setq _observations (round __observations))
   (setq _false_matchings (round __false_matchings))
   (setq _result __result)
   self)
  (:mean_error
   (&optional __mean_error)
   (if __mean_error (setq _mean_error __mean_error)) _mean_error)
  (:std_dev
   (&optional __std_dev)
   (if __std_dev (setq _std_dev __std_dev)) _std_dev)
  (:min_error
   (&optional __min_error)
   (if __min_error (setq _min_error __min_error)) _min_error)
  (:max_error
   (&optional __max_error)
   (if __max_error (setq _max_error __max_error)) _max_error)
  (:runs_count
   (&optional __runs_count)
   (if __runs_count (setq _runs_count __runs_count)) _runs_count)
  (:runs_sum
   (&optional __runs_sum)
   (if __runs_sum (setq _runs_sum __runs_sum)) _runs_sum)
  (:runs_sum2
   (&optional __runs_sum2)
   (if __runs_sum2 (setq _runs_sum2 __runs_sum2)) _runs_sum2)
  (:time_duration
   (&optional __time_duration)
   (if __time_duration (setq _time_duration __time_duration)) _time_duration)
  (:observations
   (&optional __observations)
   (if __observations (setq _observations __observations)) _observations)
  (:false_matchings
   (&optional __false_matchings)
   (if __false_matchings (setq _false_matchings __false_matchings)) _false_matchings)
  (:result
   (&rest __result)
   (if (keywordp (car __result))
       (send* _result __result)
     (progn
       (if __result (setq _result (car __result)))
       _result)))
  (:serialization-length
   ()
   (+
    ;; float32 _mean_error
    4
    ;; float32 _std_dev
    4
    ;; float32 _min_error
    4
    ;; float32 _max_error
    4
    ;; float32 _runs_count
    4
    ;; float32 _runs_sum
    4
    ;; float32 _runs_sum2
    4
    ;; float32 _time_duration
    4
    ;; int32 _observations
    4
    ;; int32 _false_matchings
    4
    ;; std_msgs/String _result
    (send _result :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _mean_error
       (sys::poke _mean_error (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _std_dev
       (sys::poke _std_dev (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _min_error
       (sys::poke _min_error (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_error
       (sys::poke _max_error (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _runs_count
       (sys::poke _runs_count (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _runs_sum
       (sys::poke _runs_sum (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _runs_sum2
       (sys::poke _runs_sum2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _time_duration
       (sys::poke _time_duration (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _observations
       (write-long _observations s)
     ;; int32 _false_matchings
       (write-long _false_matchings s)
     ;; std_msgs/String _result
       (send _result :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _mean_error
     (setq _mean_error (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _std_dev
     (setq _std_dev (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _min_error
     (setq _min_error (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_error
     (setq _max_error (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _runs_count
     (setq _runs_count (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _runs_sum
     (setq _runs_sum (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _runs_sum2
     (setq _runs_sum2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _time_duration
     (setq _time_duration (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _observations
     (setq _observations (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _false_matchings
     (setq _false_matchings (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; std_msgs/String _result
     (send _result :deserialize buf ptr-) (incf ptr- (send _result :serialization-length))
   ;;
   self)
  )

(defclass cob_object_detection_msgs::BaTestEnvironment
  :super ros::object
  :slots ())

(setf (get cob_object_detection_msgs::BaTestEnvironment :md5sum-) "e3abe6b136e84d507dcba74e019ba61e")
(setf (get cob_object_detection_msgs::BaTestEnvironment :datatype-) "cob_object_detection_msgs/BaTestEnvironment")
(setf (get cob_object_detection_msgs::BaTestEnvironment :request) cob_object_detection_msgs::BaTestEnvironmentRequest)
(setf (get cob_object_detection_msgs::BaTestEnvironment :response) cob_object_detection_msgs::BaTestEnvironmentResponse)

(defmethod cob_object_detection_msgs::BaTestEnvironmentRequest
  (:response () (instance cob_object_detection_msgs::BaTestEnvironmentResponse :init)))

(setf (get cob_object_detection_msgs::BaTestEnvironmentRequest :md5sum-) "e3abe6b136e84d507dcba74e019ba61e")
(setf (get cob_object_detection_msgs::BaTestEnvironmentRequest :datatype-) "cob_object_detection_msgs/BaTestEnvironmentRequest")
(setf (get cob_object_detection_msgs::BaTestEnvironmentRequest :definition-)
      "

int32 number_points
float32 frame_view_number
float32 cone_points_per_plane


float32 limit_error_matching

float32 ba_kernel_param
int32 ba_num_iter
float32 ba_initial_mu
float32 ba_final_mu_factor
float32 ba_tau

float32 angle_sigma_degree
float32 translate_sigma_m
float32 obs_point_sigma_m
float32 world_point_sigma_m

---
float32 mean_error
float32 std_dev
float32 min_error
float32 max_error
float32 runs_count
float32 runs_sum
float32 runs_sum2

float32 time_duration
int32 observations
int32 false_matchings

std_msgs/String result


================================================================================
MSG: std_msgs/String
string data
")

(setf (get cob_object_detection_msgs::BaTestEnvironmentResponse :md5sum-) "e3abe6b136e84d507dcba74e019ba61e")
(setf (get cob_object_detection_msgs::BaTestEnvironmentResponse :datatype-) "cob_object_detection_msgs/BaTestEnvironmentResponse")
(setf (get cob_object_detection_msgs::BaTestEnvironmentResponse :definition-)
      "

int32 number_points
float32 frame_view_number
float32 cone_points_per_plane


float32 limit_error_matching

float32 ba_kernel_param
int32 ba_num_iter
float32 ba_initial_mu
float32 ba_final_mu_factor
float32 ba_tau

float32 angle_sigma_degree
float32 translate_sigma_m
float32 obs_point_sigma_m
float32 world_point_sigma_m

---
float32 mean_error
float32 std_dev
float32 min_error
float32 max_error
float32 runs_count
float32 runs_sum
float32 runs_sum2

float32 time_duration
int32 observations
int32 false_matchings

std_msgs/String result


================================================================================
MSG: std_msgs/String
string data
")



(provide :cob_object_detection_msgs/BaTestEnvironment "e3abe6b136e84d507dcba74e019ba61e")


