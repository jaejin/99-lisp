 ;;P38 (*) Compare the two methods of calculating Euler's totient function.
 ;;Use the solutions of problems P34 and P37 to compare the algorithms. Take the number of logical inferences as a measure for efficiency. Try to calculate phi(10090) as an example.
(load "ninety-nine-lisp_P34")
(load "ninety-nine-lisp_P37")

 (defun compare-euler-phi (n)
   (- (let ((a (get-internal-real-time)))
		 (totient-phi n)
		 (- (get-internal-real-time) a)
		 ) (let ((a (get-internal-real-time)))
	   (phi n)
		 (- (get-internal-real-time) a)
		 )))

(defun compare-euler-phi-list ()
  (loop for n from 100 to 10100
       when (= (rem n 100) 0)
         collect (compare-euler-phi n)))
;;CL-USER> (compare-euler-phi-list)
;;(-10001 0 0 0 10000 0 10001 0 10001 10000 10001 0 10000 10001 10000 0 10000
;; 10001 10000 20001 10001 20001 1 10001 20001 20001 20001 20001 20002 30001
;; 10000 20002 20001 30002 20001 30002 30002 20001 30002 30001 30002 30002 30001
;; 30002 30002 40002 20002 30002 40002 30002 30002 40002 40002 30002 30001 20002
;; 40003 40002 40002 40002 50003 40003 50002 -20000 50003 50003 50003 50003 50002
;; 50003 50003 50003 60003 50003 50003 50003 60003 50003 50003 80005 70003 50003
;; 60003 60004 60003 60004 50002 70004 60004 70004 60003 70004 70004 70004 60004
;; 60004 70004 70004 70004 70004 70004)
;; O(n)으로 증가함 
