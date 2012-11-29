;;P40 (**) Goldbach's conjecture.
;;Goldbach's conjecture says that every positive even number greater than 2 is the sum of two prime numbers. Example: 28 = 5 + 23. It is one of the most famous facts in number theory that has not been proved to be correct in the general case. It has been numerically confirmed up to very large numbers (much larger than we can go with our Prolog system). Write a predicate to find the two prime numbers that sum up to a given even integer.
;;Example:
;;* (goldbach 28)
;;(5 23)
(load "ninety-nine=lisp_P39")
(defun goldbach (n)
  (let (
	(prime-list (list_of_prime_number 2 n))
	) 
    (goldbach-sub prime-list n)
    ))

(defun goldbach-sub (prime-list n)
  (if (null prime-list)
      nil
  (let ((first-prime (car prime-list))
	  (last-prime (car (last prime-list)))
	(goldbach-num (+ (car prime-list) (car (last prime-list)))))
    (cond
            ((= goldbach-num  n)   (list first-prime last-prime))
	  ((= (* first-prime 2) n)   (list first-prime first-prime))
	  ((= (* last-prime 2) n)   (list last-prime last-prime))
	  ((> goldbach-num n) (goldbach-sub (subseq prime-list 0 (1- (length prime-list))) n))
	  ((and  (< (* first-prime 2) n)   (> (* last-prime 2) n) )
	   (goldbach-sub (cdr prime-list) n))))))
	   