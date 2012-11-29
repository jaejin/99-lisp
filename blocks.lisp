(defparameter *blocks* nil)

(defstruct *block*
  (name nil)
  (color nil)
  (ison 'table)
  (isunder nil))

(defun start-world ()
  (cond ((null *blocks*)
       *blocks*)
     (t
      (setq *blocks* nil))))

(defun new-block (name color)
  (let ((*new-block*
	 (make-*block* :name name :color color)))
   (setf *blocks* (append *blocks* (list *new-block*)))))

(defun find-block (blocks-list name)
	     (cond ((null blocks-list)		    
		    nil
		    )
		   ((equal (*block*-name (car blocks-list)) name)
			    (car blocks-list))
		   (t
		    (find-block (cdr blocks-list) name))))

(defun clear-top? (name)
 (let ((finded-block (find-block *blocks* name)))
   (null (*block*-isunder finded-block))))

(defun helper-block (name new-name check ison isunder)
  (let ((found-block (find-block *blocks* name))
	(new-found-block (find-block *blocks* new-name)))
    (cond ((null found-block)
	   (format nil "Unkown block named: ~s" name))
	  ((null new-found-block)
	   (format nil "Unkown block named: ~s" new-name))
	  ((clear-top? check)
	   (setf (*block*-ison found-block) ison)
	   (setf (*block*-isunder new-found-block) isunder)
	   t )
	  (t
	   (format nil "Block ~s supports something." check)))))

(defun put-on (name new-name)
  (helper-block name new-name new-name new-name name))

(defun lift-off (name)
  (if (eq (*block*-ison (find-block *blocks* name)) 'table)
      (format nil "Block ~s supports something." name)
      (helper-block name (*block*-ison (find-block *blocks* name)) name  'table nil)))

(defun print-world ()
  (labels ((list-helper (blocks-list)	     
	     (cond ((null blocks-list)
		    nil)
		   (t
		    (let* ((current-block (car blocks-list))
			   (name (*block*-name current-block))
			   (color (*block*-color current-block))
			   (ison (*block*-ison current-block))
			   (isunder (*block*-isunder current-block))
			   )
		      (format t "Block ~S (~S) is on ~S and supports ~S" name color (ison-helper ison) (null-helper isunder))
		      (list-helper (cdr blocks-list))))))
	   (null-helper (isunder)
	     (if (null isunder)
		 'nothing
		 isunder))
	   (ison-helper (ison)
	     (if (eq ison 'table)
		 "the table"
		 ison)))
    (list-helper *blocks*)))
	   
	   


