;;P31 (**) Determine whether a given integer number is prime.
;;Example:
;;* (is-prime 7)
;;T

(defun square (n)
  (* n n))

(defun smallest-divisor (n)
  (find-divisor n 2))
(defun find-divisor (n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (t (find-divisor n (+ test-divisor 1)))))
(defun divides? (a b)
  (= (rem b a) 0))

(defun is-prime (n)
  (= n (smallest-divisor n)))