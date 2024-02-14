
(cl:in-package :asdf)

(defsystem "iris-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "turtle" :depends-on ("_package_turtle"))
    (:file "_package_turtle" :depends-on ("_package"))
  ))