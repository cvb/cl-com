(defpackage #:cl-com-asd
  (:use :cl :asdf))

(in-package #:cl-com-asd)

(defsystem cl-com
  :name "midl-lisp-generator"
  :version "0.0.1"
  :author "Peter Goncharov"
  :license "GPL v3"
  :depends-on (:cffi :cl-utilities :iterate)
  :components ((:file "cl-com")
	       (:module win-common
			:depends-on ("cl-com")
			:components ((:file "hresult")
				     (:file "hresult-funs"
					    :depends-on "hresult")))))