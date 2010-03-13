(in-package :cl-com)

(defconstant iid-itype-info (make-guid-from-string "00020401-0000-0000-C000-000000000046"))

(defcstruct %itype-info-vtable
  (query-interface :pointer)
  (addref :pointer)
  (release :pointer)
  (get-type-attr :pointer)
  (get-type-comp :pointer)
  (get-func-desc :pointer)
  (get-var-desc :pointer)
  (get-names :pointer)
  (get-ref-type-of-impl-type :pointer)
  (get-impl-type-flags :pointer)
  (get-ids-of-names :pointer)
  (invoke :pointer)
  (get-documentation :pointer)
  (get-dll-entry :pointer)
  (get-ref-type-info :pointer)
  (address-of-member :pointer)
  (create-instance :pointer)
  (get-mops :pointer)
  (get-containing-type-lib :pointer)
  (release-type-attr :pointer)
  (release-func-desc :pointer)
  (release-var-desc :pointer))

(defcstruct %itype-info
    (vtable (:pointer %itype-info-vtable)))

(defclass itype-info (iunknown)
  ((this-struct :initform '%itype-info :reader struct-of)
   (this-vtable :initform '%itype-info-vtable :reader vtable-of)))

(defgeneric get-ref-type-info (itype-info ref-type)
  (:method ((itype-info itype-info) ref-type)
    (let ((this (this-of itype-info))
	  (it-info (make-instance 'itype-info))
	  (fpointer
	   (function-for-symbol itype-info get-ref-type-info)))
      (foreign-funcall-pointer fpointer (:convention :stdcall)
			       :pointer this
			       :ulong ref-type
			       :pointer (this-of it-info))
      it-info)))

(defgeneric get-mops (itype-info)
  (:method ((itype-info itype-info))
    (let ((this (this-of itype-info))
	  (fpointer (function-for-symbol itype-info get-mops)))
      (when (next-method-p get-mops) (call-next-method)))))

(defgeneric release (itype-info)
  (:method ((itype-info itype-info))
    (let ((this (this-of itype-info))
	  (fpointer (function-for-symbol itype-info release)))
      (when (next-method-p release) (call-next-method)))))

(defgeneric invoke (itype-info)
  (:method ((itype-info itype-info))
    (let ((this (this-of itype-info))
	  (fpointer (function-for-symbol itype-info invoke)))
      (when (next-method-p invoke) (call-next-method)))))

(defgeneric get-names (itype-info)
  (:method ((itype-info itype-info))
    (let ((this (this-of itype-info))
	  (fpointer (function-for-symbol itype-info get-names)))
      (when (next-method-p get-names) (call-next-method)))))

(defgeneric address-of-member
    (itype-info)
  (:method ((itype-info itype-info))
    (let ((this (this-of itype-info))
	  (fpointer
	   (function-for-symbol itype-info address-of-member)))
      (when (next-method-p address-of-member) (call-next-method)))))

(defgeneric release-var-desc
    (itype-info)
  (:method ((itype-info itype-info))
    (let ((this (this-of itype-info))
	  (fpointer
	   (function-for-symbol itype-info release-var-desc)))
      (when (next-method-p release-var-desc) (call-next-method)))))

(defgeneric get-var-desc
    (itype-info)
  (:method ((itype-info itype-info))
    (let ((this (this-of itype-info))
	  (fpointer (function-for-symbol itype-info get-var-desc)))
      (when (next-method-p get-var-desc) (call-next-method)))))

(defgeneric get-documentation (itype-info id)
  (:method ((itype-info itype-info) id)
    (let ((this (this-of itype-info))
	  (fpointer
	   (function-for-symbol itype-info get-documentation)))
      (with-foreign-object (name :pointer)
	(foreign-funcall-pointer fpointer (:convention :stdcall)
				 :pointer this
				 :int id
				 :pointer name
				 :pointer (null-pointer)
				 :int 0
				 :pointer (null-pointer))
	(let ((lname (bstr->lisp name)))
	  (SysFreeString name)
	  lname)))))

(defgeneric get-ref-type-of-impl-type
    (itype-info)
  (:method ((itype-info itype-info))
    (let ((this (this-of itype-info))
	  (fpointer
	   (function-for-symbol
	    itype-info
	    get-ref-type-of-impl-type)))
      (when (next-method-p get-ref-type-of-impl-type)
	(call-next-method)))))

(defgeneric release-func-desc
    (itype-info)
  (:method ((itype-info itype-info))
    (let ((this (this-of itype-info))
	  (fpointer
	   (function-for-symbol itype-info release-func-desc)))
      (when (next-method-p release-func-desc) (call-next-method)))))

(defgeneric get-type-comp
    (itype-info)
  (:method ((itype-info itype-info))
    (let ((this (this-of itype-info))
	  (fpointer (function-for-symbol itype-info get-type-comp)))
      (when (next-method-p get-type-comp) (call-next-method)))))

(defgeneric get-containing-type-lib
    (itype-info)
  (:method ((itype-info itype-info))
    (let ((this (this-of itype-info))
	  (fpointer
	   (function-for-symbol itype-info get-containing-type-lib)))
      (when (next-method-p get-containing-type-lib)
	(call-next-method)))))

(defgeneric release-type-attr
    (itype-info)
  (:method ((itype-info itype-info))
    (let ((this (this-of itype-info))
	  (fpointer
	   (function-for-symbol itype-info release-type-attr)))
      (when (next-method-p release-type-attr) (call-next-method)))))

(defgeneric get-func-desc
    (itype-info)
  (:method ((itype-info itype-info))
    (let ((this (this-of itype-info))
	  (fpointer (function-for-symbol itype-info get-func-desc)))
      (when (next-method-p get-func-desc) (call-next-method)))))

(defgeneric get-dll-entry
    (itype-info)
  (:method ((itype-info itype-info))
    (let ((this (this-of itype-info))
	  (fpointer (function-for-symbol itype-info get-dll-entry)))
      (when (next-method-p get-dll-entry) (call-next-method)))))

(defgeneric create-instance
    (itype-info)
  (:method ((itype-info itype-info))
    (let ((this (this-of itype-info))
	  (fpointer
	   (function-for-symbol itype-info create-instance)))
      (when (next-method-p create-instance) (call-next-method)))))

(defgeneric get-ids-of-names
    (itype-info)
  (:method ((itype-info itype-info))
    (let ((this (this-of itype-info))
	  (fpointer
	   (function-for-symbol itype-info get-ids-of-names)))
      (when (next-method-p get-ids-of-names) (call-next-method)))))

;; (defgeneric get-type-attr
;;     (itype-info)
;;   (:method ((itype-info itype-info))
;;     (let ((this (this-of itype-info))
;; 	  (fpointer (function-for-symbol itype-info get-type-attr)))
;;       (  ))))

(defgeneric query-interface
    (itype-info)
  (:method ((itype-info itype-info))
    (let ((this (this-of itype-info))
	  (fpointer
	   (function-for-symbol itype-info query-interface)))
      (when (next-method-p query-interface) (call-next-method)))))

(defgeneric get-impl-type-flags
    (itype-info)
  (:method ((itype-info itype-info))
    (let ((this (this-of itype-info))
	  (fpointer
	   (function-for-symbol itype-info get-impl-type-flags)))
      (when (next-method-p get-impl-type-flags)
	(call-next-method)))))

(defgeneric addref
    (itype-info)
  (:method ((itype-info itype-info))
    (let ((this (this-of itype-info))
	  (fpointer (function-for-symbol itype-info addref)))
      (when (next-method-p addref) (call-next-method)))))

;;; Not actual com-method