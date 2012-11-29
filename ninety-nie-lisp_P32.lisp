;;P32 (**) Determine the greatest common divisor of two positive integer numbers.
;;Use Euclid's algorithm.
;;Example:
;;* (gcd 36 63)
;;9

(defun gcds (a b)
  (if (> a b)
      (if (= (rem a b) 0)
	  b
	  (gcds b (rem a b)))
      (if (= (rem b a) 0)
	  a
	  (gcds a (rem b a)))))

(defun gcd2 (a b)
  (if (= b 0 )
	 a
	 (gcds b (rem a b))))