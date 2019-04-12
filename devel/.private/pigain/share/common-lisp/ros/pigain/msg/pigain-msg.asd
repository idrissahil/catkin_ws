
(cl:in-package :asdf)

(defsystem "pigain-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "Node" :depends-on ("_package_Node"))
    (:file "_package_Node" :depends-on ("_package"))
  ))