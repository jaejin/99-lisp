;;P08 (**) Eliminate consecutive duplicates of list elements.
;;If a list contains repeated elements they should be replaced with a single copy of the element. The order of the elements should not be changed.

;;Example:
;;* (compress '(a a a a b c c a a d e e e e))
;;(A B C A D E)

(defun compress (l)
  (cond ((null l) nil)
	((atom l) l)
	((list l)
	 (cond
	   ((eq (car l) (cadr l)) (compress (cdr l)))
	   (t (cons (car l) (compress (cdr l))))
	 ))
   ))