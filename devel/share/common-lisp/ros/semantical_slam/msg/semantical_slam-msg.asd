
(cl:in-package :asdf)

(defsystem "semantical_slam-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SemanticalPoint" :depends-on ("_package_SemanticalPoint"))
    (:file "_package_SemanticalPoint" :depends-on ("_package"))
  ))