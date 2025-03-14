#!/bin/csi -s
(import (chicken process-context))

(set! args (command-line-arguments))

(cond
	((null? args)
		(display "need argument n\n")
		(exit 1)
	)
)

(define (_list-1-to-n n i)
	(cond
		((= n 0) '())
		(else (cons i (_list-1-to-n (- n 1) (+ i 1))))
	)
)

(define (list-1-to-n n)
	(_list-1-to-n n 1)
)

(set! n (string->number (car args)))
(display (list-1-to-n n))
(newline)
