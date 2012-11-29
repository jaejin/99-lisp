;;P11 (*) Modified run-length encoding.
;;Modify the result of problem P10 in such a way that if an element has no duplicates it is simply copied into the result list. Only elements with duplicates are transferred as (N E) lists.

;;Example:
;;* (encode-modified '(a a a a b c c a a d e e e e))
;;((4 A) B (2 C) (2 A) D (4 E))
(load "ninety-nine-lisp_P10")

(defun encode-modified (lists)
  (encode-sublist (encode lists))
  )

(defun encode-sublist (lists)
  (cond ((null lists) nil)
	 ((list lists)
	   (cond ((<= (caar lists) 1) (cons (car (cdar lists)) (encode-sublist (cdr lists))))
		 (t (cons (car lists) (encode-sublist (cdr lists))))
	     )
	  )
	 )
  )


(defun encode-modified2 (l)
  (cond ((null l) nil)
	((list l)
	 (cond
	   ((eq (car l) (cadr l))
	    (cons
	     (if (atom (car (encode-modified2 (cdr l))))
		 (list 2 (car (encode-modified2 (cdr l))))		       
	     (append
	      (list
	       (+ 1
		  (caar
		   (encode-modified2 (cdr l))
		   )
		  )
	       )
	      (list (car l))
	      )) ;; append
	    (cdr (encode-modified2 (cdr l))) ))
	    (t (cons  (car l) (encode-modified2 (cdr l))))
	 ))
   ))


(defun encode-modified3 (lists)
  (transform2 (pack lists)))

(defun transform2 (l)
  (cond ((null l) nil)
	((list l)
	 ( if (= 1 (length (car l)))
	      (cons (caar l) (transform2 (cdr l)))
	      (cons (list (length (car l)) (caar l)) (transform2 (cdr l)))))))