(in-package :cl-com)

(defconstant IID-IUnknown (make-guid #x00000000 #x0000 #x0000 '(#xC0 #x00 #x00 #x00 #x00 #x00 #x00 #x46))) ;

;; (defcfun ("QueryInterface" query-interface) hresult
;;   (iface-iid guid)
;;   (iface-pointer :pointer))

;; (defcfun ("AddRef" addref) :ulong)
;; (defcfun ("Release" release) :ulong)

(defcstruct %iunknown-vtable
  (query-interface :pointer)
  (addref :pointer)
  (release :pointer))

(defcstruct %iunknown
    (vtable (:pointer iunknown-vtable)))

(defclass iunknown
    (this :initarg :this :reader this-of))

(defgeneric function-for-symbol (iunknown symbol)
  "Return pointer to function with same name as symbol"
  (:method ((iunknown iunknown) symbol)
    (foreign-slot-value
     (foreign-slot-value (this-of iunknown) '%iunknown 'vtable)
     '%iunknown-vtable symbol)))

(defgeneric query-interface (iunknown iface-guid)
  "Return pointer to interface."
  (:method ((iunknown iunknown) (iface-guid string))
    (let* ((iface-pointer (foreign-alloc :pointer))
	   (this (this-of iunknown))
	   (func (function-for-symbol 'query-interface)))
      (with-string-as-guid (iface-guid guid)
       (foreign-funcall-pointer func ()
				:pointer this
				'guid guid
				:pointer iface-pointer
				'hresult )))))

(defmethod initialize-instance :after ((iunknown iunknown) &key)
  (let* ((this (this-of iunknown))
	 (frelease ()))))