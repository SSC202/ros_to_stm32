; Auto-generated. Do not edit!


(cl:in-package serial_node-msg)


;//! \htmlinclude imu_msg.msg.html

(cl:defclass <imu_msg> (roslisp-msg-protocol:ros-message)
  ((pitch
    :reader pitch
    :initarg :pitch
    :type cl:float
    :initform 0.0)
   (roll
    :reader roll
    :initarg :roll
    :type cl:float
    :initform 0.0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0))
)

(cl:defclass imu_msg (<imu_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <imu_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'imu_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name serial_node-msg:<imu_msg> is deprecated: use serial_node-msg:imu_msg instead.")))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <imu_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_node-msg:pitch-val is deprecated.  Use serial_node-msg:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'roll-val :lambda-list '(m))
(cl:defmethod roll-val ((m <imu_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_node-msg:roll-val is deprecated.  Use serial_node-msg:roll instead.")
  (roll m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <imu_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader serial_node-msg:yaw-val is deprecated.  Use serial_node-msg:yaw instead.")
  (yaw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <imu_msg>) ostream)
  "Serializes a message object of type '<imu_msg>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <imu_msg>) istream)
  "Deserializes a message object of type '<imu_msg>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'roll) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<imu_msg>)))
  "Returns string type for a message object of type '<imu_msg>"
  "serial_node/imu_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'imu_msg)))
  "Returns string type for a message object of type 'imu_msg"
  "serial_node/imu_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<imu_msg>)))
  "Returns md5sum for a message object of type '<imu_msg>"
  "5cdafae0cb68983e8e8825adb0b735f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'imu_msg)))
  "Returns md5sum for a message object of type 'imu_msg"
  "5cdafae0cb68983e8e8825adb0b735f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<imu_msg>)))
  "Returns full string definition for message of type '<imu_msg>"
  (cl:format cl:nil "float32 pitch~%float32 roll~%float32 yaw~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'imu_msg)))
  "Returns full string definition for message of type 'imu_msg"
  (cl:format cl:nil "float32 pitch~%float32 roll~%float32 yaw~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <imu_msg>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <imu_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'imu_msg
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':roll (roll msg))
    (cl:cons ':yaw (yaw msg))
))
