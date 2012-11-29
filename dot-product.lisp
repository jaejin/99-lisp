(defun dot-product (args1 args2)
 (apply '+ (mapcar (lambda (x y) (* x y)) args1 args2)))

(defun dot-product2 (x y)
  (if (null x)
      0
      (+ (* (car x) (car y))
     (dot-product2 (cdr x) (cdr y)))))