
(cl:in-package :asdf)

(defsystem "octomap_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "OctomapBinary" :depends-on ("_package_OctomapBinary"))
    (:file "_package_OctomapBinary" :depends-on ("_package"))
    (:file "OctomapBinaryWithPose" :depends-on ("_package_OctomapBinaryWithPose"))
    (:file "_package_OctomapBinaryWithPose" :depends-on ("_package"))
  ))