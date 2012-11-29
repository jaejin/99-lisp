;;P15 (**) Replicate the elements of a list a given number of times.
;;Example:
;;* (repli '(a b c) 3)
;;(A A A B B B C C C)

(defun repli (lists n)
  (cond ((null lists) nil)
	((list lists)
	 (append (for-list n (car lists)) (repli (cdr lists) n))
	 )
       )
  )

(defun for-list (n value)
	   (cond ((= 0 n) nil)
		 (t
		  (cons value (for-list (- n 1) value)))))

