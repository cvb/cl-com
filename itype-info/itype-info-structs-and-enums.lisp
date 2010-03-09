(in-package :cl-com)

(defcenum varenum 
  (:VT_EMPTY 0)
  (:VT_NULL 1)
  (:VT_I2 2)
  (:VT_I4 3)
  (:VT_R4 4)
  (:VT_R8 5)
  (:VT_CY 6)
  (:VT_DATE 7)
  (:VT_BSTR 8)
  (:VT_DISPATCH 9)
  (:VT_ERROR 10)
  (:VT_BOOL 11)
  (:VT_VARIANT 12)
  (:VT_UNKNOWN 13)
  (:VT_DECIMAL 14)
  (:VT_I1 16)
  (:VT_UI1 17)
  (:VT_UI2 18)
  (:VT_UI4 19)
  (:VT_I8 20)
  (:VT_UI8 21)
  (:VT_INT 22)
  (:VT_UINT 23)
  (:VT_VOID 24)
  (:VT_HRESULT 25)
  (:VT_PTR 26)
  (:VT_SAFEARRAY 27)
  (:VT_CARRAY 28)
  (:VT_USERDEFINED 29)
  (:VT_LPSTR 30)
  (:VT_LPWSTR 31)
  (:VT_RECORD 36)
  (:VT_INT_PTR 37)
  (:VT_UINT_PTR 38)
  (:VT_FILETIME 64)
  (:VT_BLOB 65)
  (:VT_STREAM 66)
  (:VT_STORAGE 67)
  (:VT_STREAMED_OBJECT 68)
  (:VT_STORED_OBJECT 69)
  (:VT_BLOB_OBJECT 70)
  (:VT_CF 71)
  (:VT_CLSID 72)
  (:VT_VERSIONED_STREAM 73)
  (:VT_BSTR_BLOB #xfff)
  (:VT_VECTOR #x1000)
  (:VT_ARRAY #x2000)
  (:VT_BYREF #x4000)
  (:VT_RESERVED #x8000)
  (:VT_ILLEGAL #xffff)
  (:VT_ILLEGALMASKED #xfff)
  (:VT_TYPEMASK #xfff))
    
(defcunion typedesc-union
  (typedesc :pointer)
  (arraydesc :pointer)
  (hreftype :ulong))

(defcstruct TYPEDESC 
  ;; union {
  ;; /* VT_PTR - the pointed-at type */
  ;; struct FARSTRUCT tagTYPEDESC FAR* lptdesc ;
  
  ;; /* VT_CARRAY */
  ;; struct FARSTRUCT tagARRAYDESC FAR* lpadesc ;
  
  ;; /* VT_USERDEFINED - this is used to get a TypeInfo for the UDT*/
  ;; HREFTYPE hreftype		;
  (typedesc-union typedesc-union)
  (vt varenum))

(defcstruct SAFEARRAYBOUND 
  (celements :ulong)	;
  (llbound :long))	;

(defcstruct ARRAYDESC
  (desc-elem TYPEDESC)	                ;; Element type.
  (cdims :ushort)	                ;; Dimension count.
  (rgbounds SAFEARRAYBOUND :count 2))   ;; Variable length array containing
  					;; one element for each dimension.