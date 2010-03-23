(in-package :cl-com)

(defconstant FORMAT_MESSAGE_ALLOCATE_BUFFER #x00000100)
(defconstant FORMAT_MESSAGE_IGNORE_INSERTS  #x00000200)
(defconstant FORMAT_MESSAGE_FROM_STRING     #x00000400)
(defconstant FORMAT_MESSAGE_FROM_HMODULE    #x00000800)
(defconstant FORMAT_MESSAGE_FROM_SYSTEM     #x00001000)
(defconstant FORMAT_MESSAGE_ARGUMENT_ARRAY  #x00002000)
(defconstant FORMAT_MESSAGE_MAX_WIDTH_MASK  #x000000FF)


(cffi:defcstruct SYSTEMTIME
    (year WORD)
    (month WORD)
    (day-of-week WORD)
    (day WORD)
    (hour WORD)
    (minute WORD)
    (second WORD)
    (millisecond WORD))

(cffi:defcstruct UDATE
    (st SYSTEMTIME)
  (day-of-week :USHORT))

(cffi:defcfun "VarUdateFromDate" HRESULT
  (date DATE)
  (flags :unsigned-long)
  (pudate :pointer))                    ; UDATE*

(cffi:defcfun "VarDateFromUdate" HRESULT
  (pudate :pointer)                     ; UDATE*
  (flags :unsigned-long)
  (pdate :pointer))                     ; DATE*(long*)

(cffi:defcfun "SysAllocString" :pointer ;BSTR
  (ole-str :pointer))                   ;const OLECHAR *

(cffi:defcfun "SysFreeString" :void
  (bstr :pointer))                      ;BSTR


(defvar *lcid* 2048)                    ;LOCALE_SYSTEM_DEFAULT

(cffi:defcfun "FormatMessageW" DWORD
  (dwFlangs DWORD)
  (lpSource :pointer)
  (dwMessageId DWORD)
  (dwLanguageId DWORD)
  (lpBuffer :pointer)
  (nSize DWORD)
  (Arguments :pointer))


(defun message-from-system (HRESULT)
  (cffi:with-foreign-object (buffer :unsigned-short 4096)
    (let ((ret (FormatMessageW
                (+ FORMAT_MESSAGE_FROM_SYSTEM
                   FORMAT_MESSAGE_IGNORE_INSERTS)
                (cffi-sys:null-pointer)
                HRESULT
                *lcid*
                buffer
                1024
                (cffi-sys:null-pointer))))
      (with-output-to-string (*standard-output*)
        (loop for i from 0 below ret
           do (let ((c (code-char
                        (cffi:mem-aref buffer :unsigned-short i))))
                (unless (member c '(#\Return #\Linefeed))
                  (write-char c))))))))


(defun HRESULT->DWORD (HRESULT)
  (* -1 (1+ (logxor #xffffffff HRESULT))))

(defmacro succeeded (form)
  `(let ((hresult ,form))
     (when (< hresult #x00000000)
       (let ((dwMessageId (HRESULT->DWORD hresult)))
         (error "ERROR ~A(~X)~%~A~%"
                (message-from-system dwMessageId) dwMessageId ',form)))))


;; (defun from-variant-date (variant)
;;   (cffi:with-foreign-object (udate 'UDATE)
;;     (let ((date (if (variant-byref-p variant)
;;                     (cffi:mem-aref (variant-value variant) 'DATE)
;;                     (variant-value variant))))
;;       (succeeded (VarUdateFromDate date 0 udate)))
;;     (let ((st (cffi:foreign-slot-value udate 'UDATE 'st)))
;;       (make-timestamp
;;       ;;  'dt:date-time
;;         :year (cffi:foreign-slot-value st 'SYSTEMTIME 'year)
;;         :month (cffi:foreign-slot-value st 'SYSTEMTIME 'month)
;;         :day (cffi:foreign-slot-value st 'SYSTEMTIME 'day)
;;         :hour (cffi:foreign-slot-value st 'SYSTEMTIME 'hour)
;;         :minute (cffi:foreign-slot-value st 'SYSTEMTIME 'minute)
;;         :second (cffi:foreign-slot-value st 'SYSTEMTIME 'second)
;;         :millisecond (cffi:foreign-slot-value st 'SYSTEMTIME 'millisecond))
;;       ;;()
;;       )))

(defun date-to-lisp-date (date)
  (cffi:with-foreign-object (udate 'UDATE)
    (succeeded (VarUdateFromDate date 0 udate))
    (let ((st (cffi:foreign-slot-value udate 'UDATE 'st)))
      (make-timestamp
      ;;  'dt:date-time
        :year (cffi:foreign-slot-value st 'SYSTEMTIME 'year)
        :month (cffi:foreign-slot-value st 'SYSTEMTIME 'month)
        :day (cffi:foreign-slot-value st 'SYSTEMTIME 'day)
        :hour (cffi:foreign-slot-value st 'SYSTEMTIME 'hour)
        :minute (cffi:foreign-slot-value st 'SYSTEMTIME 'minute)
        :second (cffi:foreign-slot-value st 'SYSTEMTIME 'second)
        :millisecond (cffi:foreign-slot-value st 'SYSTEMTIME 'millisecond))
      ;;()
      )))
  
;; (defun to-variant-date (date-time)
;;   (cffi:with-foreign-objects ((pudate 'UDATE)
;;                               (pdate 'DATE))
;;     (let ((st (cffi:foreign-slot-value pudate 'UDATE 'st)))
;;       (macrolet
;;           ((m ()
;;              `(progn
;;                 ,@(mapcar
;;                    (lambda (x)
;;                      `(setf (cffi:foreign-slot-value st 'SYSTEMTIME ',x)
;;                             (,(intern (concatenate 'string (symbol-name x)
;;                                                    "-OF") :dt)
;;                               date-time)))
;;                    '(year month day hour minute second millisecond)))))
;;         (m))
;;       (succeeded (VarDateFromUdate pudate 0 pdate))
;;       (let ((result (alloc-variant)))
;;         (VariantInit result)
;;         (setf (variant-type result) VT_DATE
;;               (variant-value result) (cffi:mem-aref pdate 'DATE))
;;         result))))


(defmacro with-ole-str ((var str) &body body)
  "wchar_t string which ends of null"
  (let ((len (gensym)))
    `(let* ((,len (length ,str)))
       (cffi:with-foreign-object (,var :unsigned-short (1+ ,len))
         (loop for i from 0 below ,len
            do (setf (cffi:mem-aref ,var :unsigned-short i)
                     (char-code (char ,str i)))
            finally (setf (cffi:mem-aref ,var :unsigned-short ,len) 0))
         ,@body))))


(defun bstr->lisp (bstr)
;  (let ((*default-foreign-encoding* :utf-16))
;    (foreign-string-to-lisp bstr :encoding :utf-16)))

  (with-output-to-string (out)
    (loop for i from 0
       for *ptr = (cffi:mem-aref bstr 'WORD i)
       while (not (zerop *ptr))
       do (write-char (code-char *ptr) out))))

(defun lisp->bstr (lisp)
  (with-ole-str (ole-str lisp)
    (SysAllocString ole-str)))

(cffi:defcfun ("CLSIDFromProgID" clsid-from-prog-id) HRESULT
  (spszProgID :string)
  (pclsid :pointer))