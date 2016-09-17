(defparameter *small* 1)
(defparameter *big* 100)

(defun guessing-game()
    (ash (+ *small* *big*) -1))

(defun smaller()
    (setf *big* (1- (guessing-game)))
    (guessing-game))

(defun bigger()
    (setf *small* (1+ (guessing-game)))
    (guessing-game))

(defun start-over()
    (setf *small* 1)
    (setf *big* 100)
    (guessing-game))
