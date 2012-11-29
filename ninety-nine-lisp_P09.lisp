;;P09 (**) Pack consecutive duplicates of list elements into sublists.
;;If a list contains repeated elements they should be placed in separate sublists.

;;Example:
;;* (pack '(a a a a b c c a a d e e e e))
;;((A A A A) (B) (C C) (A A) (D) (E E E E))
(defparameter l1 '(a))
(defparameter l2 '(a b))
(defparameter l3 '(a a b))
(defparameter l4 '(a a b c))
(defparameter l5 '(a a b c c))
(defparameter l6 '(a a b b c d))

(defun pack (l)
  (cond ((null l) nil)
	((atom l) (list l))
	((list l)
	 (cond
	   ((eq (car l) (cadr l))
	    (cons
	     (append (list (car l)) (car (pack (cdr l))))		     
	    (cdr (pack (cdr l))) ))
	    (t (cons (list (car l)) (pack (cdr l))))
	 ))
   ))


