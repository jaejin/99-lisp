# P01 (*) Find the last box of a list.
# Example:
  # * (my-last '(a b c d))
  # (D)

(defun my-last (l)
  (if (null (cdr l))
       	(print l)
	(my-last (cdr l))
	)
)




