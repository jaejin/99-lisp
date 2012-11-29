;;P19 (**) Rotate a list N places to the left.
;;Examples:
;;* (rotate '(a b c d e f g h) 3)
;;(D E F G H A B C)

;;* (rotate '(a b c d e f g h) -2)
;;(G H A B C D E F)
(load "ninety-nine-lisp_P17")
(defun rotate (lists index)
  (if (> index 0)
 (append (for-cdr lists index)  (for-car lists index))
 (append (for-cdr lists (+ (length lists) index)  )
	 (for-car lists (+ (length lists) index) ))))
  