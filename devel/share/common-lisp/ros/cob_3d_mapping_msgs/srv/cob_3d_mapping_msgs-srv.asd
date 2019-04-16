
(cl:in-package :asdf)

(defsystem "cob_3d_mapping_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :cob_3d_mapping_msgs-msg
               :cob_object_detection_msgs-msg
               :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "GetApproachPoseForPolygon" :depends-on ("_package_GetApproachPoseForPolygon"))
    (:file "_package_GetApproachPoseForPolygon" :depends-on ("_package"))
    (:file "GetBoundingBoxes" :depends-on ("_package_GetBoundingBoxes"))
    (:file "_package_GetBoundingBoxes" :depends-on ("_package"))
    (:file "GetGeometryMap" :depends-on ("_package_GetGeometryMap"))
    (:file "_package_GetGeometryMap" :depends-on ("_package"))
    (:file "GetObjectsOfClass" :depends-on ("_package_GetObjectsOfClass"))
    (:file "_package_GetObjectsOfClass" :depends-on ("_package"))
    (:file "GetPlane" :depends-on ("_package_GetPlane"))
    (:file "_package_GetPlane" :depends-on ("_package"))
    (:file "GetPointMap" :depends-on ("_package_GetPointMap"))
    (:file "_package_GetPointMap" :depends-on ("_package"))
    (:file "GetTables" :depends-on ("_package_GetTables"))
    (:file "_package_GetTables" :depends-on ("_package"))
    (:file "ModifyMap" :depends-on ("_package_ModifyMap"))
    (:file "_package_ModifyMap" :depends-on ("_package"))
    (:file "MoveToTable" :depends-on ("_package_MoveToTable"))
    (:file "_package_MoveToTable" :depends-on ("_package"))
    (:file "SetBoundingBoxes" :depends-on ("_package_SetBoundingBoxes"))
    (:file "_package_SetBoundingBoxes" :depends-on ("_package"))
    (:file "SetGeometryMap" :depends-on ("_package_SetGeometryMap"))
    (:file "_package_SetGeometryMap" :depends-on ("_package"))
    (:file "SetPointMap" :depends-on ("_package_SetPointMap"))
    (:file "_package_SetPointMap" :depends-on ("_package"))
    (:file "UpdateMap" :depends-on ("_package_UpdateMap"))
    (:file "_package_UpdateMap" :depends-on ("_package"))
  ))