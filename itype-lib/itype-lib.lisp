(in-package :cl-com)

(defconstant iid-itype-lib (make-guid-from-string "00020402-0000-0000-C000-000000000046"))

(defcstruct %itype-lib-vtable
  (query-interface :pointer)
  (add-ref :pointer)
  (release :pointer)
  (get-type-info-count :pointer)
  (get-type-info :pointer)
  (get-type-info-type :pointer)
  (get-type-info-of-guid :pointer)
  (get-lib-attr :pointer)
  (get-type-comp :pointer)
  (get-documentation :pointer)
  (is-name :pointer)
  (find-name :pointer)
  (release-tlib-attr :pointer))

(defcstruct %itype-lib
  (vtable (:pointer %itype-lib-vtable)))

(defclass itype-lib (iunknown)
  ((this-struct :initform '%itype-lib :reader struct-of)
   (this-vtable :initform '%itype-lib-vtable :reader vtable-of)))

(defgeneric release
    (itype-lib)
  (:method ((itype-lib itype-lib))
    (let ((this (this-of itype-lib))
	  (fpointer (function-for-symbol itype-lib 'release)))
      (when (next-method-p release) (call-next-method)))))

(defgeneric get-lib-attr
    (itype-lib)
  (:method ((itype-lib itype-lib))
    (let ((this (this-of itype-lib))
	  (fpointer (function-for-symbol itype-lib 'get-lib-attr)))
      (when (next-method-p get-lib-attr) (call-next-method)))))

(defgeneric get-type-info (itype-lib index)
  (:method ((itype-lib itype-lib) index)
    (let* ((this (this-of itype-lib))
	   (fpointer (function-for-symbol itype-lib 'get-type-info))
	   (itypeinfo-ptr-ptr (foreign-alloc :pointer))
	   (hres (foreign-funcall-pointer fpointer (:convention :stdcall)
					  :pointer this
					  :uint index
					  :pointer itypeinfo-ptr-ptr)))
      (if (= 0 hres)
	  (make-instance 'itype-info :this (mem-ref itypeinfo-ptr-ptr :pointer))
	  (progn
	    (foreign-free itypeinfo-ptr-ptr)
	    (hres))))))

(defgeneric get-type-info-type
    (itype-lib)
  (:method ((itype-lib itype-lib))
    (let ((this (this-of itype-lib))
	  (fpointer
	   (function-for-symbol itype-lib 'get-type-info-type)))
      (when (next-method-p get-type-info-type) (call-next-method)))))

(defgeneric get-documentation
    (itype-lib)
  (:method ((itype-lib itype-lib))
    (let ((this (this-of itype-lib))
	  (fpointer
	   (function-for-symbol itype-lib 'get-documentation)))
      (when (next-method-p get-documentation) (call-next-method)))))
(defgeneric find-name
    (itype-lib)
  (:method ((itype-lib itype-lib))
    (let ((this (this-of itype-lib))
	  (fpointer (function-for-symbol itype-lib 'find-name)))
      (when (next-method-p find-name) (call-next-method)))))
(defgeneric add-ref
    (itype-lib)
  (:method ((itype-lib itype-lib))
    (let ((this (this-of itype-lib))
	  (fpointer (function-for-symbol itype-lib 'add-ref)))
      (when (next-method-p add-ref) (call-next-method)))))
(defgeneric get-type-comp
    (itype-lib)
  (:method ((itype-lib itype-lib))
    (let ((this (this-of itype-lib))
	  (fpointer (function-for-symbol itype-lib 'get-type-comp)))
      (when (next-method-p get-type-comp) (call-next-method)))))
(defgeneric get-type-info-of-guid
    (itype-lib)
  (:method ((itype-lib itype-lib))
    (let ((this (this-of itype-lib))
	  (fpointer
	   (function-for-symbol itype-lib 'get-type-info-of-guid)))
      (when (next-method-p get-type-info-of-guid)
	(call-next-method)))))

(defgeneric get-type-info-count (itype-lib)
  (:method ((itype-lib itype-lib))
    (let ((this (this-of itype-lib))
	  (fpointer (function-for-symbol itype-lib 'get-type-info-count)))
      (foreign-funcall-pointer fpointer (:convention :stdcall) :pointer this :ulong))))

(defgeneric is-name
    (itype-lib)
  (:method ((itype-lib itype-lib))
    (let ((this (this-of itype-lib))
	  (fpointer (function-for-symbol itype-lib 'is-name)))
      (when (next-method-p is-name) (call-next-method)))))
(defgeneric release-tlib-attr
    (itype-lib)
  (:method ((itype-lib itype-lib))
    (let ((this (this-of itype-lib))
	  (fpointer
	   (function-for-symbol itype-lib 'release-tlib-attr)))
      (when (next-method-p release-tlib-attr) (call-next-method)))))
(defgeneric query-interface
    (itype-lib)
  (:method ((itype-lib itype-lib))
    (let ((this (this-of itype-lib))
	  (fpointer
	   (function-for-symbol itype-lib 'query-interface)))
      (when (next-method-p query-interface) (call-next-method)))))