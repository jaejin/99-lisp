;;P10 (*) Run-length encoding of a list.
;;Use the result of problem P09 to implement the so-called run-length encoding data compression method. Consecutive duplicates of elements are encoded as lists (N E) where N is the number of duplicates of the element E.

;;Example:
;;* (encode '(a a a a b c c a a d e e e e))
;;((4 A) (1 B) (2 C) (2 A) (1 D)(4 E))
(load "ninety-nine-lisp_P09")

(defparameter l1 '(a))
(defparameter l2 '(a b))
(defparameter l3 '(a a b))
(defparameter l4 '(a a b c))
(defparameter l5 '(a a b c c))
(defparameter l6 '(a a b b c d))

(defun encode (l)
  (cond ((null l) nil)
	((atom l) (cons 1 (list l)))
	((list l)
	 (cond
	   ((eq (car l) (cadr l))
	    (cons
	     (append (list (+ 1 (caar (encode (cdr l))))) (list (car l) ))  
	    (cdr (encode (cdr l))) ))
	    (t (cons (list 1 (car l)) (encode (cdr l))))
	 ))
   ))

(defun encode2 (l)
  (transform (pack l)))

(defun transform (l)
  (cond ((null l) nil)
	((list l)
	  (cons (list (length (car l)) (caar l)) (transform (cdr l))))))