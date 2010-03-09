(in-package :cl-com)

(defcfun ("LoadTypeLib" %load-type-lib) hresult
  (library-file-name (:string :encoding :utf-16))
  (out-pointer-itype-lib (:pointer %itype-lib)))

(defun load-type-lib (lib-path-name)
  (let* ((itype-lib-ptr-ptr (foreign-alloc :pointer))
	 (hres (%load-type-lib lib-path-name itype-lib-ptr-ptr)))
    (if (not (= hres 0))
	(format t "~&hresult: ~a~%" (get-hresult-symbol-for-value hres))
	(make-instance 'itype-lib :this (mem-ref itype-lib-ptr-ptr :pointer)))))