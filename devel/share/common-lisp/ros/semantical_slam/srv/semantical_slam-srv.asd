
(cl:in-package :asdf)

(defsystem "semantical_slam-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :semantical_slam-msg
)
  :components ((:file "_package")
    (:file "CreateSemMsg" :depends-on ("_package_CreateSemMsg"))
    (:file "_package_CreateSemMsg" :depends-on ("_package"))
  ))