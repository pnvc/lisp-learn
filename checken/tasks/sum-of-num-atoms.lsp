#!/bin/csi -s
(define (sum-of-num-atoms lst)
	(cond
		((null? lst) 0)
		((atom? (car lst))
			(if (number? (car lst))
				(+ (car lst) (sum-of-num-atoms (cdr lst)))
				(sum-of-num-atoms (cdr lst)) ; else if
				)
			)
		(else (+ (sum-of-num-atoms (car lst)) (sum-of-num-atoms (cdr lst))))
		)
	)
		

(display (sum-of-num-atoms '(0  a (100 a (b c 200)) 20 30)) (current-output-port))
(newline (current-output-port))
