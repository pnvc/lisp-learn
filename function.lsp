#!/bin/gcl -f
(function cons)

(mapcar #'+ '(1 2) '(10 20) '(100 200))

(defun add-to-list (num lst)
  (mapcar #'(lambda (x) (+ x num)) lst)
  )

(defun make-adder (add-num)
  #'(lambda (num) (+ num add-num))
  )

(setq add15 (make-adder 15))

(defun f2 (func thevar) (funcall func thevar))
(defun sample (thevar)
  (f2 #'(lambda (x) (+ x thevar)) 1000)
  )
(sample 7) ; 1007 or 2000?
