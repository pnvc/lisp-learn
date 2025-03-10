;;nellist - n elements in list
(defun nellist (el n)
  (if (= n 0) nil (cons el (nellist el (- n 1)))))

(nellist 10 10)
