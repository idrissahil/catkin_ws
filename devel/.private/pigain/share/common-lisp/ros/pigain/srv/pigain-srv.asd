
(cl:in-package :asdf)

(defsystem "pigain-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "BestNode" :depends-on ("_package_BestNode"))
    (:file "_package_BestNode" :depends-on ("_package"))
    (:file "Query" :depends-on ("_package_Query"))
    (:file "_package_Query" :depends-on ("_package"))
  ))