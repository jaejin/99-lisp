;;P14 (*) Duplicate the elements of a list.
;;Example:
;;* (dupli '(a b c c d))
;;(A A B B C C C C D D)

(defun dupli (lists)
  (cond ((null lists) nil)
	((list lists)
	 (append (list (car lists) (car lists)) (dupli (cdr lists)))
	 )
	)
  )