;;#P06 (*) Find out whether a list is a palindrome.
;;#A palindrome can be read forward or backward; e.g. (x a m a x).

(defun equal-list? (first two)
  (cond
    ((and (null first) (null two)) t)
      ((equalp (car first) (car two)) (equal-list? (cdr first) (cdr two)))
     (t nil)
    ))

(defun half-list (l $size n)
  (if (> n (/ $size 2))
      '()
      (append (list (car l)) (half-list (cdr l) $size (+ 1 n)))      
      ))

(defun find-palindrome (l)
  (if (oddp (list-length l))
     ( if (equal-list? (half-list l (length l) 0) (half-list (reverse l) (length l) 0))
	  (print "palindrome")
	  (print "not palindrome"))
      (print "not palindrome")))
