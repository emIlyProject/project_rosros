;; Auto-generated. Do not edit!


(when (boundp 'iris::turtle)
  (if (not (find-package "IRIS"))
    (make-package "IRIS"))
  (shadow 'turtle (find-package "IRIS")))
(unless (find-package "IRIS::TURTLE")
  (make-package "IRIS::TURTLE"))

(in-package "ROS")
;;//! \htmlinclude turtle.msg.html


(defclass iris::turtle
  :super ros::object
  :slots (_x _y _theta _collision _can_move ))

(defmethod iris::turtle
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:theta __theta) 0.0)
    ((:collision __collision) nil)
    ((:can_move __can_move) nil)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _theta (float __theta))
   (setq _collision __collision)
   (setq _can_move __can_move)
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:collision
   (&optional (__collision :null))
   (if (not (eq __collision :null)) (setq _collision __collision)) _collision)
  (:can_move
   (&optional (__can_move :null))
   (if (not (eq __can_move :null)) (setq _can_move __can_move)) _can_move)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _theta
    8
    ;; bool _collision
    1
    ;; bool _can_move
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _collision
       (if _collision (write-byte -1 s) (write-byte 0 s))
     ;; bool _can_move
       (if _can_move (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta
     (setq _theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _collision
     (setq _collision (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _can_move
     (setq _can_move (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get iris::turtle :md5sum-) "25dc20978cbfe4a40dd8a320ae60d96c")
(setf (get iris::turtle :datatype-) "iris/turtle")
(setf (get iris::turtle :definition-)
      "float64 x
float64 y
float64 theta
bool collision
bool can_move
")



(provide :iris/turtle "25dc20978cbfe4a40dd8a320ae60d96c")


