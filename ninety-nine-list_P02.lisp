#(*) Find the last but one box of a list.
#Example:
#* (my-but-last '(a b c d))
#(C D)

(defun my-but-last (l)
  (if (null (cdr (cdr l)))
       	(print l)
	(my-but-last (cdr l))
	)
)