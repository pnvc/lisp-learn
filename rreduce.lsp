;; right reduce
(defun rreduce (fun lst init)
  (cond
    ((null lst) init)
    (t (funcall fun (car lst) (rreduce fun (cdr lst) init)))
    )
  )
