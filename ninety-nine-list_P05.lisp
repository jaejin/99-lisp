;; P05 (*) Reverse a list.
(defun reverse-list (l)
  (if (null l)
      '()
  (append (reverse-list (cdr l)) (list (car l)) )))
