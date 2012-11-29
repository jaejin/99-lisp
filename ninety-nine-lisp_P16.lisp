;;P16 (**) Drop every N'th element from a list.
;;Example:
;;* (drop '(a b c d e f g h i k) 3)
;;(A B D E G H K)

(defun drop (lists n)
  (drop-iter lists n n)
)

(defun drop-iter (lists n count)
  (cond ((null lists) nil)
	((= 1 count)
	 (append (drop-iter (cdr lists) n n) nil ))
	(t
	 (append (list (car lists)) (drop-iter (cdr lists) n (- count 1))))))