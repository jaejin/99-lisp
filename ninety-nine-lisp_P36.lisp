;;P36 (**) Determine the prime factors of a given positive integer (2).
;;Construct a list containing the prime factors and their multiplicity.
;;Example:
;;* (prime-factors-mult 315)
;;((3 2) (5 1) (7 1))
;;Hint: The problem is similar to problem P13.
(load "ninety-nine-lisp_P35")
(load "ninety-nine-lisp_P09")
(defun encode (l)
  (transform (pack l)))

(defun transform (l)
  (cond ((null l) nil)
	((list l)
	  (cons (list (caar l) (length (car l))) (transform (cdr l))))))

(defun prime-factors-mult (n)
  (encode (prime-factors n)))