; Auto-generated. Do not edit!


(cl:in-package octomap_msgs-msg)


;//! \htmlinclude OctomapBinaryWithPose.msg.html

(cl:defclass <OctomapBinaryWithPose> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (origin
    :reader origin
    :initarg :origin
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass OctomapBinaryWithPose (<OctomapBinaryWithPose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OctomapBinaryWithPose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OctomapBinaryWithPose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name octomap_msgs-msg:<OctomapBinaryWithPose> is deprecated: use octomap_msgs-msg:OctomapBinaryWithPose instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <OctomapBinaryWithPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader octomap_msgs-msg:header-val is deprecated.  Use octomap_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <OctomapBinaryWithPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader octomap_msgs-msg:id-val is deprecated.  Use octomap_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'origin-val :lambda-list '(m))
(cl:defmethod origin-val ((m <OctomapBinaryWithPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader octomap_msgs-msg:origin-val is deprecated.  Use octomap_msgs-msg:origin instead.")
  (origin m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <OctomapBinaryWithPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader octomap_msgs-msg:data-val is deprecated.  Use octomap_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OctomapBinaryWithPose>) ostream)
  "Serializes a message object of type '<OctomapBinaryWithPose>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'origin) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OctomapBinaryWithPose>) istream)
  "Deserializes a message object of type '<OctomapBinaryWithPose>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'origin) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OctomapBinaryWithPose>)))
  "Returns string type for a message object of type '<OctomapBinaryWithPose>"
  "octomap_msgs/OctomapBinaryWithPose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OctomapBinaryWithPose)))
  "Returns string type for a message object of type 'OctomapBinaryWithPose"
  "octomap_msgs/OctomapBinaryWithPose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OctomapBinaryWithPose>)))
  "Returns md5sum for a message object of type '<OctomapBinaryWithPose>"
  "b8fb58fc8c87150ac05695a4df6e2250")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OctomapBinaryWithPose)))
  "Returns md5sum for a message object of type 'OctomapBinaryWithPose"
  "b8fb58fc8c87150ac05695a4df6e2250")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OctomapBinaryWithPose>)))
  "Returns full string definition for message of type '<OctomapBinaryWithPose>"
  (cl:format cl:nil "# A 3D map in binary format, as Octree~%Header header~%int32  id~%geometry_msgs/Pose origin~%int8[] data~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OctomapBinaryWithPose)))
  "Returns full string definition for message of type 'OctomapBinaryWithPose"
  (cl:format cl:nil "# A 3D map in binary format, as Octree~%Header header~%int32  id~%geometry_msgs/Pose origin~%int8[] data~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OctomapBinaryWithPose>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'origin))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OctomapBinaryWithPose>))
  "Converts a ROS message object to a list"
  (cl:list 'OctomapBinaryWithPose
    (cl:cons ':header (header msg))
    (cl:cons ':id (id msg))
    (cl:cons ':origin (origin msg))
    (cl:cons ':data (data msg))
))
