
(cl:in-package :asdf)

(defsystem "serial_node-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "imu_msg" :depends-on ("_package_imu_msg"))
    (:file "_package_imu_msg" :depends-on ("_package"))
  ))