;;P07 (**) Flatten a nested list structure.
;;Transform a list, possibly holding lists as elements into a `flat' list by replacing each list with its elements (recursively).

;;Example:
;;* (my-flatten '(a (b (c d) e)))
;;(A B C D E)

;;Hint: Use the predefined functions list and append
(defun flatten-fun (l)
  (cond ((null l) nil)
	( (not (listp (car l))) (append (list (car l))) (flatten-fun (cdr l)))
	((listp (cdr l))
	 (append
	  (list (car
		 (flatten-fun (car l))
		 )
		)
	  (list (flatten-fun (cdr l))
		)
	  )
	)
	(t l)
   )
  )

(defun list-print (l)
  (print l)
  (cond ((= (length l) 0) nil )
	(not 
     ( (null (cdr l)) (list-print (cdr (car l))))
     ((listp l) (list-print (cdr l)))
    ((print (car l))
     (list-print (cdr l)))
   )
  )