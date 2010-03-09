(in-package :cl-com)

(defmacro generate-empty-com-methods (com-class vtable)
  (let* ((names (foreign-slot-names vtable)))
    (iterate (for i in names)
	     (collect `(defgeneric ,i (,com-class)
			 (:method ((,com-class ,com-class))
			   (let ((this (this-of ,com-class))
				 (fpointer (function-for-symbol ,com-class ',i)))
			     (when (next-method-p ,i)
			       (call-next-method)
			       ))))))))

;; (defmacro def-com-method ((com-class method-name))
;;   `(defgeneric ,method-name (,com-class)))

