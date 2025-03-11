;; nas - numeric atoms sum

(defun nas (lst)
	(cond
		((null lst) 0)
		((atom (car lst))
			(if (numberp (car lst)) (+ (car lst) (nas (cdr lst)))
				(nas (cdr lst))
				)
			)
		(t (+ (nas (car lst)) (nas (cdr lst))))
		)
	)
