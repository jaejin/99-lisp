(defun myremove (x list)
  (if (null list) nil
    (cond ((atom list) list)
	 ;; ((list list) (cons (myremove x (car list)) (myremove x (cdr list))))
          ((equal x (car list)) (cdr list))
          (T (cons (myremove x (car list)) (myremove x (cdr list)))))))