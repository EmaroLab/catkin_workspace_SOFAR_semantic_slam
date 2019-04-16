
(cl:in-package :asdf)

(defsystem "cob_object_detection_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :cob_object_detection_msgs-msg
               :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "AcquireObjectImage" :depends-on ("_package_AcquireObjectImage"))
    (:file "_package_AcquireObjectImage" :depends-on ("_package"))
    (:file "BaTestEnvironment" :depends-on ("_package_BaTestEnvironment"))
    (:file "_package_BaTestEnvironment" :depends-on ("_package"))
    (:file "BagTrainObject" :depends-on ("_package_BagTrainObject"))
    (:file "_package_BagTrainObject" :depends-on ("_package"))
    (:file "DetectObjects" :depends-on ("_package_DetectObjects"))
    (:file "_package_DetectObjects" :depends-on ("_package"))
    (:file "SaveRecordedObject" :depends-on ("_package_SaveRecordedObject"))
    (:file "_package_SaveRecordedObject" :depends-on ("_package"))
    (:file "StartObjectRecording" :depends-on ("_package_StartObjectRecording"))
    (:file "_package_StartObjectRecording" :depends-on ("_package"))
    (:file "StopObjectRecording" :depends-on ("_package_StopObjectRecording"))
    (:file "_package_StopObjectRecording" :depends-on ("_package"))
    (:file "TrainObject" :depends-on ("_package_TrainObject"))
    (:file "_package_TrainObject" :depends-on ("_package"))
  ))