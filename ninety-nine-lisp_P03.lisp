#P03 (*) Find the K'th element of a list.
#The first element in the list is number 1.
#Example:
#* (element-at '(a b c d e) 3)
#C

(defun element-at (l n)
  (if (<= (list-length l) n)
    (if (> n 1)
	(element-at (cdr l) (- n 1))
	(car l))
    )
	     