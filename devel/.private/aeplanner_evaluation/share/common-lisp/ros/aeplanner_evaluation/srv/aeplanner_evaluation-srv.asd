
(cl:in-package :asdf)

(defsystem "aeplanner_evaluation-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Coverage" :depends-on ("_package_Coverage"))
    (:file "_package_Coverage" :depends-on ("_package"))
  ))