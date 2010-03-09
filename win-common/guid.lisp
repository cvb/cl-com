(in-package :cl-com)

(defcstruct guid
  (first-8 dword)
  (first-4 word)
  (second-4 word)
  (last byte :count 8))

(defun make-guid (f-8 f-4 s-4 l)
  (let ((g (foreign-alloc 'guid)))
    (with-foreign-slots ((first-8 first-4 second-4 last) g guid)
      (setf first-8 f-8
	    first-4 f-4
	    second-4 s-4)
      (loop for i from 0 to 7
	   do (setf (mem-aref last 'byte i) (elt l i))))
    g))

(defun hexify (string)
  (concatenate 'string "#x" string))

(defun split-hex-string-by-bytes (str)
  (let ((len (length str)))
    (loop for i from 0 to (- len 2) by 2
       collect (subseq str i (+ i 2)))))

(defmacro with-string-as-guid ((str-guid guid-name) &body body)
  `(with-foreign-object (,guid-name 'guid)
     (let* ((parts (cl-utilities:split-sequence #\- ,str-guid))
	    (last-parts (append (split-hex-string-by-bytes (elt parts 3))
				(split-hex-string-by-bytes (elt parts 4))))
	    (bytes (map 'list #'(lambda (x) (read-from-string (hexify x)))
			last-parts)))
       (setf
	(foreign-slot-value ,guid-name 'guid 'first-8) (read-from-string (hexify (elt parts 0)))
	(foreign-slot-value ,guid-name 'guid 'first-4) (read-from-string (hexify (elt parts 1)))
	(foreign-slot-value ,guid-name 'guid 'second-4) (read-from-string (hexify (elt parts 2))))
       (loop for i from 0 to 7
	    do (setf (mem-aref (foreign-slot-value ,guid-name 'guid 'last) 'byte i)
		     (elt bytes i)))
       ,@body)))

(defun make-guid-from-string (str)
  (let* ((g (foreign-alloc 'guid))
	 (parts (cl-utilities:split-sequence #\- str))
	 (last-parts (append (split-hex-string-by-bytes (elt parts 3))
			     (split-hex-string-by-bytes (elt parts 4))))
	 (bytes (map 'list #'(lambda (x) (read-from-string (hexify x)))
		     last-parts)))
    (setf
     (foreign-slot-value g 'guid 'first-8) (read-from-string (hexify (elt parts 0)))
     (foreign-slot-value g 'guid 'first-4) (read-from-string (hexify (elt parts 1)))
     (foreign-slot-value g 'guid 'second-4) (read-from-string (hexify (elt parts 2))))
    (loop for i from 0 to 7
       do (setf (mem-aref (foreign-slot-value g 'guid 'last) 'byte i)
		(elt bytes i)))
    g))

(defcfun ("CLSIDFromProgID" %CLSID-from-prog-id) hresult
  "Convert GUID string representation to struct guid"
  (prog-id-as-string (:string :encoding :utf-16))
  (guid-as-struct (:pointer guid)))

(defcfun ("CLSIDFromString" %CLSID-from-string) hresult
  "Convert GUID string representation to struct guid"
  (guid-as-string (:string :encoding :utf-16))
  (guid-as-struct (:pointer guid)))
