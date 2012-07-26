; Auto-generated. Do not edit!


(cl:in-package octomap_msgs-msg)


;//! \htmlinclude OctomapBinary.msg.html

(cl:defclass <OctomapBinary> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass OctomapBinary (<OctomapBinary>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OctomapBinary>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OctomapBinary)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name octomap_msgs-msg:<OctomapBinary> is deprecated: use octomap_msgs-msg:OctomapBinary instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <OctomapBinary>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader octomap_msgs-msg:header-val is deprecated.  Use octomap_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <OctomapBinary>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader octomap_msgs-msg:data-val is deprecated.  Use octomap_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OctomapBinary>) ostream)
  "Serializes a message object of type '<OctomapBinary>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OctomapBinary>) istream)
  "Deserializes a message object of type '<OctomapBinary>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OctomapBinary>)))
  "Returns string type for a message object of type '<OctomapBinary>"
  "octomap_msgs/OctomapBinary")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OctomapBinary)))
  "Returns string type for a message object of type 'OctomapBinary"
  "octomap_msgs/OctomapBinary")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OctomapBinary>)))
  "Returns md5sum for a message object of type '<OctomapBinary>"
  "76e8caca558be0db7a08d3479289f362")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OctomapBinary)))
  "Returns md5sum for a message object of type 'OctomapBinary"
  "76e8caca558be0db7a08d3479289f362")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OctomapBinary>)))
  "Returns full string definition for message of type '<OctomapBinary>"
  (cl:format cl:nil "# A 3D map in binary format, as Octree~%Header header~%int8[] data~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OctomapBinary)))
  "Returns full string definition for message of type 'OctomapBinary"
  (cl:format cl:nil "# A 3D map in binary format, as Octree~%Header header~%int8[] data~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OctomapBinary>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OctomapBinary>))
  "Converts a ROS message object to a list"
  (cl:list 'OctomapBinary
    (cl:cons ':header (header msg))
    (cl:cons ':data (data msg))
))
