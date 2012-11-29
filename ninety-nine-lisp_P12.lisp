;;P12 (**) Decode a run-length encoded list.
;;Given a run-length code list generated as specified in problem P11. Construct its uncompressed version.
;; (decode '((4 A) B (2 C) (2 A) D (4 E)))
;; (A A A A B C C A A D E E E E)
(defun decode (lists)
  (cond ((null lists) nil)
	((list lists)
	(if (atom (car lists))
	    (append (list (car lists)) (decode (cdr lists)))
	 (append (decode-transform (caar lists) (cadar lists))
	       (decode (cdr lists))))
	 )))

(defun decode-transform (n value)
  (cond ((= 0 n) nil)
	(t
	 (cons value (decode-transform (- n 1) value)))))
  