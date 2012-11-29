;;P21 (*) Insert an element at a given position into a list.
;;Example:
;;* (insert-at 'alfa '(a b c d) 2)
;;(A ALFA B C D)

(defun insert-at (text lists index)
  (cond ((null lists) nil)
	((= index 1)
	 (cons text (insert-at text lists 0)))
	(t
	 (cons (car lists) (insert-at text (cdr lists) (- index 1))))
	))