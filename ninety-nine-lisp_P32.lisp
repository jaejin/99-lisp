;;P32 (**) Determine the greatest common divisor of two positive integer numbers.
;;Use Euclid's algorithm.
;;Example:
;;* (gcd 36 63)
;;9
(defun gcd-e (a b)
  (if (= b 0)
      a
      (gcd-e b (mod a b))))