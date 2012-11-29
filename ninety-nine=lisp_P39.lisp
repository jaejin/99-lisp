;;P39 (*) A list of prime numbers.
;;Given a range of integers by its lower and upper limit, construct a list of all prime numbers in that range.
(load "ninety-nine-lisp_P31")
(defun list_of_prime_number (start end)
  (loop for n from start to end
       when (is-prime n)
         collect n))