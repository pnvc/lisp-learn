#!/bin/csi -s
(import (chicken process-context))

(define (hw arg1)
  (display arg1)
  )

(hw "Hello, World!\n")

(display (car (list 'pipec)))
(newline)

(display (car (command-line-arguments)))
(newline)
