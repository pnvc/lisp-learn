;; let counter - one context for two functions
(let ((counter 0))
  (defun inc () (setq counter (+ counter 1)))
  (defun dec () (setq counter (- counter 1)))
  (defun reset () (setq counter 0))
  )
