;;P17 (*) Split a list into two parts; the length of the first part is given.
;;Do not use any predefined predicates.

;;Example:
;;* (split '(a b c d e f g h i k) 3)
;;( (A B C) (D E F G H I K))

(defun split (l n)
  (cons (for-car l n) (list (for-cdr l n))))

(defun for-car (l n)
  (if (> n 0)
	(cons (car l) (for-car (cdr l) (- n 1)))
	nil
	))

 (defun for-cdr (l n)
   (cond ((null l) nil)
	 ((> n 0)
	  (for-cdr (cdr l) (- n 1))
	  )
	 ((<= n 0)
	 (cons (car l) (for-cdr (cdr l) (- n 1))))))