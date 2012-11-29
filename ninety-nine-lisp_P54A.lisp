;; P54A (*) Check whether a given term represents a binary tree
;; Write a predicate istree which returns true if and only if its argument is a list representing a binary tree.
;; Example:
;; * (istree (a (b nil nil) nil))
;; T
;; * (istree (a (b nil nil)))
;; NIL

(defun istree-sub (x r l)
  (cond ((and (atom x) (list r) (list l))
	 (and (istree r) (istree l)))
	 (t nil)))

(defun istree (a)
  (cond
    ((null a) t)
    ((= (length a) 3)
     (istree-sub (car a) (cadr a) (caddr a))
     )
	(t nil)))
	