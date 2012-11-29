;;P20 (*) Remove the K'th element from a list.
;;Example:
;;* (remove-at '(a b c d) 2)
;;(A C D)

(defun remove-at (lists index)
  (cond ((null lists) nil)
	((= index 1)
	 (remove-at (cdr lists) (- index 1)) 
	 )
	(t
	 (cons (car lists) (remove-at (cdr lists) (- index 1)))
	 )
  ))