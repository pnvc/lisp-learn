;; lr rr - left reduce / right reduce
(defun lr (func lst init)
	(cond
		((null lst) init)
		(t
			(let ((next (funcall func init (car lst))))
				(lr func (cdr lst) next)
				)
			)
		)
	)

(defun rr (func lst init)
	(if (null lst) init (funcall func (car lst) (rr func (cdr lst) init)))
	)

