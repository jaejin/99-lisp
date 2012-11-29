;;P35 (**) Determine the prime factors of a given positive integer.
;;Construct a flat list containing the prime factors in ascending order.
;;Example:
;;* (prime-factors 315)
;;(3 3 5 7)
(load "ninety-nine-lisp_P31")

(defun prime-factors (n)
  (defun prime-factors-iter (n q list)
    (cond ((= n 1) list)
	  ((= (rem n q) 0)
	   (prime-factors-iter (/ n q) q (append list (list q) )))
	  (t
	   (prime-factors-iter n (1+ q) list))))
  (prime-factors-iter n 2 nil))

;; ÂüÁ¶ : http://cafe.naver.com/lisper/896
(defun prime-factors2 (n)
  (labels ((rec (n q lst)
         (cond ;;((> (* q q) n)
;;		(print q)
;;y		(cons n lst))
           ((= (rem n q) 0)
            (rec (/ n q) q (cons q lst)))
           (t (rec n (1+ q) lst)))))
    (nreverse (rec n 2 '()))))

