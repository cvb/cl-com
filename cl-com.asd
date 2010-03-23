(defpackage #:cl-com-asd
  (:use :cl :asdf))

(in-package #:cl-com-asd)

(defsystem cl-com
  :name "midl-lisp-generator"
  :version "0.0.1"
  :author "Peter Goncharov"
  :license "GPL v3"
  :depends-on (:cffi :cl-utilities :iterate :trivial-garbage :local-time)
  :components ((:file "cl-com")
	       (:module win-common
			:depends-on ("cl-com")
			:components ((:file "hresult")
				     (:file "guid"
					    :depends-on ("c-types"))
				     (:file "c-types")
				     (:file "hresult-funs"
					    :depends-on ("hresult"))))
	       (:module iunknown
			:depends-on (win-common)
			:components ((:file "iunknown")))
	       (:module itype-info
			:depends-on (win-common iunknown com-main-functions)
			:components ((:file "itype-info"
					    :depends-on ("itype-info-structs-and-enums"))
				     (:file "itype-info-structs-and-enums")
				     (:file "helper-functions"
					    :depends-on ("itype-info-structs-and-enums" "itype-info"))))
	       (:module itype-lib
			:depends-on (win-common iunknown itype-info)
			:components ((:file "itype-lib")
				     (:file "itype-lib-cffi"
					    :depends-on ("itype-lib"))))
	       (:module com-main-functions
			:depends-on (win-common)
			:components ((:file "init-funs")
				     (:file "helper-functions")
				     (:file "com-variant")))))