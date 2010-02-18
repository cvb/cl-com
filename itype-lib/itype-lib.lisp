(in-package :cl-com)

(defconstant iid-itype-lib (make-guid-from-string "00020402-0000-0000-C000-000000000046"))

(defcstruct %itype-lib-vtable
  (QueryInterface :pointer)
  (AddRef :pointer)
  (Release :pointer)
  (GetTypeInfoCount :pointer)
  (GetTypeInfo :pointer)
  (GetTypeInfoType :pointer)
  (GetTypeInfoOfGuid :pointer)
  (GetLibAttr :pointer)
  (GetTypeComp :pointer)
  (GetDocumentation :pointer)
  (IsName :pointer)
  (FindName :pointer)
  (ReleaseTLibAttr :pointer))

(defcstruct %itype-lib
  (vtable (:pointer %itype-lib-vtable)))

(defclass itype-lib (iunknown)
  ((this-struct :initform '%itype-lib :reader struct-of)
   (this-vtable :initform '%itype-lib-vtable :reader vtable-of)))

(defgeneric gettypeinfotype
    (itype-lib)
  (:method ((itype-lib itype-lib))
    (let ((this (this-of itype-lib))
	  (fpointer (function-for-symbol itype-lib gettypeinfotype)))
      (when (next-method-p gettypeinfotype) (call-next-method)))))
(defgeneric releasetlibattr
    (itype-lib)
  (:method ((itype-lib itype-lib))
    (let ((this (this-of itype-lib))
	  (fpointer (function-for-symbol itype-lib releasetlibattr)))
      (when (next-method-p releasetlibattr) (call-next-method)))))
(defgeneric release
    (itype-lib)
  (:method ((itype-lib itype-lib))
    (let ((this (this-of itype-lib))
	  (fpointer (function-for-symbol itype-lib release)))
      (when (next-method-p release) (call-next-method)))))
(defgeneric getdocumentation
    (itype-lib)
  (:method ((itype-lib itype-lib))
    (let ((this (this-of itype-lib))
	  (fpointer
	   (function-for-symbol itype-lib getdocumentation)))
      (when (next-method-p getdocumentation) (call-next-method)))))
(defgeneric getlibattr
    (itype-lib)
  (:method ((itype-lib itype-lib))
    (let ((this (this-of itype-lib))
	  (fpointer (function-for-symbol itype-lib getlibattr)))
      (when (next-method-p getlibattr) (call-next-method)))))
(defgeneric gettypecomp
    (itype-lib)
  (:method ((itype-lib itype-lib))
    (let ((this (this-of itype-lib))
	  (fpointer (function-for-symbol itype-lib gettypecomp)))
      (when (next-method-p gettypecomp) (call-next-method)))))
(defgeneric gettypeinfocount
    (itype-lib)
  (:method ((itype-lib itype-lib))
    (let ((this (this-of itype-lib))
	  (fpointer
	   (function-for-symbol itype-lib gettypeinfocount)))
      (when (next-method-p gettypeinfocount) (call-next-method)))))
(defgeneric queryinterface
    (itype-lib)
  (:method ((itype-lib itype-lib))
    (let ((this (this-of itype-lib))
	  (fpointer (function-for-symbol itype-lib queryinterface)))
      (when (next-method-p queryinterface) (call-next-method)))))
(defgeneric gettypeinfo
    (itype-lib)
  (:method ((itype-lib itype-lib))
    (let ((this (this-of itype-lib))
	  (fpointer (function-for-symbol itype-lib gettypeinfo)))
      (when (next-method-p gettypeinfo) (call-next-method)))))
(defgeneric isname
    (itype-lib)
  (:method ((itype-lib itype-lib))
    (let ((this (this-of itype-lib))
	  (fpointer (function-for-symbol itype-lib isname)))
      (when (next-method-p isname) (call-next-method)))))
(defgeneric gettypeinfoofguid
    (itype-lib)
  (:method ((itype-lib itype-lib))
    (let ((this (this-of itype-lib))
	  (fpointer
	   (function-for-symbol itype-lib gettypeinfoofguid)))
      (when (next-method-p gettypeinfoofguid) (call-next-method)))))
(defgeneric findname
    (itype-lib)
  (:method ((itype-lib itype-lib))
    (let ((this (this-of itype-lib))
	  (fpointer (function-for-symbol itype-lib findname)))
      (when (next-method-p findname) (call-next-method)))))
(defgeneric addref
    (itype-lib)
  (:method ((itype-lib itype-lib))
    (let ((this (this-of itype-lib))
	  (fpointer (function-for-symbol itype-lib addref)))
      (when (next-method-p addref) (call-next-method)))))