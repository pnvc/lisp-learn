#!/bin/csi -ss
(define (main args)
	(map (lambda (s) (display s) (display " ")) args)
	(newline)
	)
