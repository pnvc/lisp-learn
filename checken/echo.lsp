#!/bin/csi -s
(import (chicken process-context))
(map
	(lambda (s) (display s) (display " "))
	(command-line-arguments)
	)
(newline)

(number->string 12)
