;;P24 (*) Lotto: Draw N different random numbers from the set 1..M.
;;The selected numbers shall be returned in a list.
;;Example:
;;* (lotto-select 6 49)
;;(23 1 17 33 21 37)

;;Hint: Combine the solutions of problems P22 and P23.
(load "ninety-nine-lisp_P22")
(load "ninety-nine-lisp_P23")

(defun lotto-select (start end)
  (rnd-select (range start end) 5)
  )