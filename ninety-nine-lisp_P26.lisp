;;P26 (**) Generate the combinations of K distinct objects chosen from the N elements of a list
;;In how many ways can a committee of 3 be chosen from a group of 12 people? We all know that there are C(12,3) = 220 possibilities (C(N,K) denotes the well-known binomial coefficients). For pure mathematicians, this result may be great. But we want to really generate all the possibilities in a list.

;;Example:
;;* (combination 3 '(a b c d e f))
;;((A B C) (A B D) (A B E) ... )

;; 참고 사이트 : http://www.oursland.net/tutorials/lisp/useful-lisp.html#n-combination

(defun n-combination (n)
 (if (> n 0)
  (let ((child (n-combination (1- n))))
   (append
    child
    (list (list n))
    (mapcar (lambda (x) (append x (list n))) child)
  ))
  '((0))
))

(defun index-append-combination (comb lst)
 (loop for c in comb
  collect 
  (loop for i in c
   append (nth i lst)
)))

(defun combination (n lists)
  (mapcan (lambda (x) (if (= (length x) n) (list x)))
	  (index-append-combination (n-combination (1- (length lists)))
				    (mapcar (lambda (x) (list x)) lists)
				    )
	  ))
