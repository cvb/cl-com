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
   (this-vtable :initform '%itype-info-vtable :reader vtable-of)
   (type-attr :initform nil :accessor type-attr-of)
   (func-desc :initform nil :accessor func-desc-of)
   (var-desc :initform nil :accessor var-desc-of)))

(defgeneric get-ref-type-info (itype-info ref-type)
  (:method ((itype-info itype-info) ref-type)
    (let ((this (this-of itype-info))
	  (it-info (foreign-alloc :pointer))
	  (fpointer
	   (function-for-symbol itype-info 'get-ref-type-info)))
      (foreign-funcall-pointer fpointer (:convention :stdcall)
			       :pointer this
			       :ulong ref-type
			       :pointer it-info
			       hresult)
      (make-instance 'itype-info :this (mem-ref it-info :pointer)))))

(defgeneric get-mops (itype-info)
  (:method ((itype-info itype-info))
    (let ((this (this-of itype-info))
	  (fpointer (function-for-symbol itype-info 'get-mops))))))

;; (defgeneric release (itype-info)
;;   (:method ((itype-info itype-info))
;;     (let ((this (this-of itype-info))
;; 	  (fpointer (function-for-symbol itype-info release)))
;;       (when (next-method-p release) (call-next-method)))))

(defgeneric invoke (itype-info)
  (:method ((itype-info itype-info))
    (let ((this (this-of itype-info))
	  (fpointer (function-for-symbol itype-info 'invoke))))))

(defgeneric get-names (itype-info)
  (:method ((itype-info itype-info))
    (let ((this (this-of itype-info))
	  (fpointer (function-for-symbol itype-info 'get-names))))))

(defgeneric address-of-member (itype-info id inv-kind)
  (:method ((itype-info itype-info) id inv-kind)
    (let ((this (this-of itype-info))
	  (ptr (foreign-alloc :pointer))
	  (fpointer
	   (function-for-symbol itype-info 'address-of-member)))
      (let ((hres (foreign-funcall-pointer fpointer (:convention :stdcall)
					   :pointer this
					   :int32 id
					   invokekind inv-kind
					   :pointer ptr
					   hresult)))
	(if (not (= 0 hres))
	    `(:hres ,hres)
	    `(:ptr ,(mem-ref ptr :pointer)))))))

(defgeneric release-var-desc (itype-info index)
  (:method ((itype-info itype-info) index)
    (let ((this (this-of itype-info))
	  (ptr (cadr (find-if #'(lambda (x)
				    (if (= index (car x)) t nil))
				(var-desc-of itype-info))))
	  (fpointer
	   (function-for-symbol itype-info 'release-var-desc)))
      (foreign-funcall-pointer fpointer (:convention :stdcall)
			       :pointer this
			       :pointer ptr
			       hresult)
      (setf (var-desc-of itype-info) (remove ptr (var-desc-of itype-info))))))

(defgeneric get-var-desc (itype-info index)
  (:method ((itype-info itype-info) index)
    (let ((this (this-of itype-info))
	  (ptr-ptr (foreign-alloc :pointer))
	  (fpointer (function-for-symbol itype-info 'get-var-desc)))
      (when (= 0
	       (foreign-funcall-pointer fpointer (:convention :stdcall)
					:pointer this
					:uint index
					:pointer ptr-ptr
					hresult))
	(push (list index (mem-ref ptr-ptr :pointer)) (var-desc-of itype-info))
	(mem-ref ptr-ptr :pointer)))))


(defmethod get-documentation ((itype-info itype-info) id)
  (let ((this (this-of itype-info))
	(fpointer
	 (function-for-symbol itype-info 'get-documentation)))
    (with-foreign-object (name :pointer)
      (let ((hres (foreign-funcall-pointer fpointer (:convention :stdcall)
					   :pointer this
					   :int id
					   :pointer name
					   :pointer (null-pointer)
					   :int 0
					   :pointer (null-pointer)
					   hresult)))
	(if (not (= 0 hres))
	    hres
	    (let ((lname (bstr->lisp (mem-ref name :pointer))))
	      (SysFreeString (mem-ref name :pointer))
	      lname))))))


	;; (let ((lname (bstr->lisp name)))
	;;   (SysFreeString name)
	;;   lname)))))

(defgeneric get-ref-type-of-impl-type
    (itype-info)
  (:method ((itype-info itype-info))
    (let ((this (this-of itype-info))
	  (fpointer
	   (function-for-symbol itype-info 'get-ref-type-of-impl-type))))))

(defgeneric release-func-desc (itype-info index)
  (:method ((itype-info itype-info) index)
    (let ((this (this-of itype-info))
	  (ptr (cadr (find-if #'(lambda (x)
				    (if (= index (car x)) t nil))
				(func-desc-of itype-info))))
	  (fpointer
	   (function-for-symbol itype-info 'release-func-desc)))
      (foreign-funcall-pointer fpointer (:convention :stdcall)
			       :pointer this
			       :pointer ptr
			       hresult)
      (setf (func-desc-of itype-info) (remove ptr (func-desc-of itype-info))))))

(defgeneric get-type-comp
    (itype-info)
  (:method ((itype-info itype-info))
    (let ((this (this-of itype-info))
	  (fpointer (function-for-symbol itype-info 'get-type-comp))))))

(defgeneric get-containing-type-lib
    (itype-info)
  (:method ((itype-info itype-info))
    (let ((this (this-of itype-info))
	  (fpointer
	   (function-for-symbol itype-info 'get-containing-type-lib))))))

(defgeneric release-type-attr (itype-info)
  (:method ((itype-info itype-info))
    (let ((this (this-of itype-info))
	  (fpointer
	   (function-for-symbol itype-info 'release-type-attr)))
      (foreign-funcall-pointer fpointer (:convention :stdcall)
			       :pointer this
			       :pointer (type-attr-of itype-info)
			       hresult))))

(defgeneric get-func-desc (itype-info index)
  (:method ((itype-info itype-info) index)
    (let ((this (this-of itype-info))
	  (fpointer (function-for-symbol itype-info 'get-func-desc))
	  (ptr-ptr (foreign-alloc :pointer)))
      (when (= 0
	       (foreign-funcall-pointer fpointer (:convention :stdcall)
					:pointer this
					:uint index
					:pointer ptr-ptr
					hresult))
	(push (list index (mem-ref ptr-ptr :pointer)) (func-desc-of itype-info))
	(mem-ref ptr-ptr :pointer)))))

(defgeneric get-dll-entry
    (itype-info)
  (:method ((itype-info itype-info))
    (let ((this (this-of itype-info))
	  (fpointer (function-for-symbol itype-info 'get-dll-entry))))))

(defgeneric create-instance
    (itype-info)
  (:method ((itype-info itype-info))
    (let ((this (this-of itype-info))
	  (fpointer
	   (function-for-symbol itype-info 'create-instance))))))

(defgeneric get-ids-of-names (itype-info)
  (:method ((itype-info itype-info))
    (let ((this (this-of itype-info))
	  (fpointer
	   (function-for-symbol itype-info 'get-ids-of-names))))))

(defgeneric get-type-attr (itype-info)
  (:method ((itype-info itype-info))
    (let ((this (this-of itype-info))
	  (fpointer (function-for-symbol itype-info 'get-type-attr))
	  (type-attr-ptr-ptr (foreign-alloc :pointer)))
      (when (= 0
	       (foreign-funcall-pointer fpointer (:convention :stdcall)
				       :pointer this
				       :pointer type-attr-ptr-ptr
				       hresult))
	(setf (type-attr-of itype-info) (mem-ref type-attr-ptr-ptr :pointer))))))

;; (defgeneric query-interface
;;     (itype-info)
;;   (:method ((itype-info itype-info))
;;     (let ((this (this-of itype-info))
;; 	  (fpointer
;; 	   (function-for-symbol itype-info query-interface)))
;;       (when (next-method-p query-interface) (call-next-method)))))

(defgeneric get-impl-type-flags (itype-info)
  (:method ((itype-info itype-info))
    (let ((this (this-of itype-info))
	  (fpointer (function-for-symbol itype-info 'get-impl-type-flags))))))

;; (defgeneric addref
;;     (itype-info)
;;   (:method ((itype-info itype-info))
;;     (let ((this (this-of itype-info))
;; 	  (fpointer (function-for-symbol itype-info addref)))
;;       (when (next-method-p addref) (call-next-method)))))

;;; Not actual com-method