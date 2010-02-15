(defpackage #:cl-com-asd
  (:use :cl :asdf))

(in-package #:cl-com-asd)

(defsystem midl-lisp-generator
  :name "midl-lisp-generator"
  :version "0.0.1"
  :author "Peter Goncharov"
  :license "GPL v3"
  :depends-on (:cffi :cl-utilities)
  :components ((:file "cl-com")))