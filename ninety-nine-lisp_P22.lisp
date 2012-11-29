;;P22 (*) Create a list containing all integers within a given range.
;;If first argument is smaller than second, produce a list in decreasing order.
;;Example:
;;* (range 4 9)
;;(4 5 6 7 8 9)

(defun range (start end)
  (cond ((= start end)
	 (list end))
	(t
	 (cons start (range (+ start 1) end))
	 )
	))