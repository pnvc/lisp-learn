;; left reduce
(defun lreduce (fun lst init)
  (cond
    ((null lst) init)
    (t
     (let ((next (funcall fun init (car lst))))
       (lreduce fun (cdr lst) next)
       )
     )
    )
  )
