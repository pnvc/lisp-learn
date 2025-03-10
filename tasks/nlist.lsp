;; nlist retun list with numbers: (1..n)
(defun _nl (next n)
  (if (= n 0) nil (cons next (_nl (+ next 1) (- n 1)))))

(defun nl (n)
  (_nl 1 n))

(nl 11)
