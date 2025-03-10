#!/bin/gcl -f
(* . ((+ . (2 . (3 . ()))) . (5 . ()))) ; (* (+ 2 3) 5)
(quote (1 2 3)) ; '(1 2 3)
(cons 1 (cons 2 3))
;(defun msg ()
;  (message "kek"))
;(msg)
(car '(msg 1 2))
;; isntead cons for list use (list...)
(cons 1 (cons 2 ())) = (list '1 '2)
(atom 1) ; true
(listp 1) ; nil

(defun length1 (lst)
  (if (null lst) 0 (+ 1 (length1 (cdr lst)))))

(defun length1 (lst)
  (cond
    ((null lst) 0)
    ((atom lst) nil)
    ((atom (cdr lst)) 1)
    (t (+ 1 (length1 (cdr lst))))
  )
)
(atom (cdr (cons 1 2)))
(+ 1 nil)
(length1 (cons 1 2))

(defun length2_do (lst len)
  (cond
    ((atom (cdr lst)) len)
    (t (length2_do (cdr lst) (+ 1 len)))))

(defun length2 (lst)
  (cond
    ((null lst) 0)
    ((atom lst) nil)
    (t (length2_do lst 1))))

(length2 '(1 . 2))

(setq a '(1 2 3 4))
(rplacd (cdr a) nil)
a
(setq b '(1 2 3 4 5))
(rplacd b nil)
b

;;(setq arr (make-array 10))
(defun msg (a b c)
  (message "%s" a))
(setq a '(10 msg "kek" 2 3))
a
(eval (cdr a))
(intern "zxc")
zxc
(msg "qwe" 1 2)


