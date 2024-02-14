; Auto-generated. Do not edit!


(cl:in-package iris-msg)


;//! \htmlinclude turtle.msg.html

(cl:defclass <turtle> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (theta
    :reader theta
    :initarg :theta
    :type cl:float
    :initform 0.0)
   (collision
    :reader collision
    :initarg :collision
    :type cl:boolean
    :initform cl:nil)
   (can_move
    :reader can_move
    :initarg :can_move
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass turtle (<turtle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <turtle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'turtle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name iris-msg:<turtle> is deprecated: use iris-msg:turtle instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <turtle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iris-msg:x-val is deprecated.  Use iris-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <turtle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iris-msg:y-val is deprecated.  Use iris-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'theta-val :lambda-list '(m))
(cl:defmethod theta-val ((m <turtle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iris-msg:theta-val is deprecated.  Use iris-msg:theta instead.")
  (theta m))

(cl:ensure-generic-function 'collision-val :lambda-list '(m))
(cl:defmethod collision-val ((m <turtle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iris-msg:collision-val is deprecated.  Use iris-msg:collision instead.")
  (collision m))

(cl:ensure-generic-function 'can_move-val :lambda-list '(m))
(cl:defmethod can_move-val ((m <turtle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader iris-msg:can_move-val is deprecated.  Use iris-msg:can_move instead.")
  (can_move m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <turtle>) ostream)
  "Serializes a message object of type '<turtle>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'theta))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'collision) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'can_move) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <turtle>) istream)
  "Deserializes a message object of type '<turtle>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'collision) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'can_move) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<turtle>)))
  "Returns string type for a message object of type '<turtle>"
  "iris/turtle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'turtle)))
  "Returns string type for a message object of type 'turtle"
  "iris/turtle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<turtle>)))
  "Returns md5sum for a message object of type '<turtle>"
  "25dc20978cbfe4a40dd8a320ae60d96c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'turtle)))
  "Returns md5sum for a message object of type 'turtle"
  "25dc20978cbfe4a40dd8a320ae60d96c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<turtle>)))
  "Returns full string definition for message of type '<turtle>"
  (cl:format cl:nil "float64 x~%float64 y~%float64 theta~%bool collision~%bool can_move~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'turtle)))
  "Returns full string definition for message of type 'turtle"
  (cl:format cl:nil "float64 x~%float64 y~%float64 theta~%bool collision~%bool can_move~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <turtle>))
  (cl:+ 0
     8
     8
     8
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <turtle>))
  "Converts a ROS message object to a list"
  (cl:list 'turtle
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':theta (theta msg))
    (cl:cons ':collision (collision msg))
    (cl:cons ':can_move (can_move msg))
))
