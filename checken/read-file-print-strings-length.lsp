#!/bin/csi -s
(import (chicken condition))
(import (chicken process-context))

(define (do_it port len)
	(let ((c (read-char port)))
		(display c)
		(cond
			((eof-object? c) #t)
			((eqv? c #\newline)
				(display "-----------------line length: ")
				(display len)
				(newline)
				(do_it port 0)
				)
			(else (do_it port (+ 1 len)))
			)
		)
	)

(call/cc (lambda (return-from-exc)
			 (with-exception-handler
				 (lambda (ex)
					 (display "error: open file\n" (current-error-port))
					 (return-from-exc #t)
					 )
				 (lambda ()
					 (let ((args (command-line-arguments)))
						 (if (null? args)
							 (do_it (current-input-port) 0)
							 (let ((port (open-input-file (car args))))
								 (do_if port 0)
								 (close-input-port port)
								 ) ; let
							 ) ; if
						 ) ; let
					 ) ; lambda ()
				 ) ; with ex handler
			 ) ; lambda
	) ; call/cc
				 
(display "done\n")
(exit 0)
