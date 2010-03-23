(in-package :cl-com)

(cffi:defcunion variant-union
  (long-long LONGLONG)
  (long :long)
  (bool VARIANT_BOOL)
  (int :int)
  (float :float)
  (double :double)
  (date :double)
  (pdate :pointer)
  (pointer :pointer))
 
(cffi:defcstruct variant
  (vt :ushort)
  (wReserved1 WORD)
  (wReserved2 WORD)
  (wReserved3 WORD)
  (value variant-union))



(defun variant-union-accessor (variant)
  (let	((var-type (foreign-enum-keyword 'varenum
					 (logand #x0fff
						 (foreign-slot-value variant 'variant 'vt)))))
    (case var-type
      (:vt_ptr 'pointer)
      (:vt_i2 'short)
      (:vt_i4 'long)
      (:vt_r8 'double)
      (:vt_date 'double)
      (:vt_ui4 'long)
      (:vt_i8 'long-long)
      (:vt_bool 'variant_bool))))
 
(defun variant-value (variant)
  (cffi:foreign-slot-value
   (cffi:foreign-slot-value variant 'VARIANT 'value)
   'variant-union
   (variant-union-accessor variant)))