;;P23 (**) Extract a given number of randomly selected elements from a list.
;;The selected items shall be returned in a list.
;;Example:
;;* (rnd-select '(a b c d e f g h) 3)
;;(E D A)
(load "ninety-nine-lisp_P20")

(defun rnd-select (lists n)
  (cond ((= n 0) nil)
	(t
	 (defparameter index (random (length lists)) )
	 ;;(print lists)
	 ;;(print index)
	 (cons (nth index lists) (rnd-select (remove-at lists (+ index 1)) (- n 1))))))