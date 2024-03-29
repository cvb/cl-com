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
  (:VT_TYPEMASK #xfff)
)
    
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
  (vt :ushort))

(defcstruct SAFEARRAYBOUND 
  (celements :ulong)	;
  (llbound :long))	;

(defcstruct ARRAYDESC
  (desc-elem TYPEDESC)	                ;; Element type.
  (cdims :ushort)	                ;; Dimension count.
  (rgbounds SAFEARRAYBOUND :count 2))   ;; Variable length array containing
  					;; one element for each dimension.
(defcstruct IDLDESC
  (reserved :ulong)
  (idl-flags :ushort))

(defcenum TYPEKIND
   :TKIND_ENUM
   :TKIND_RECORD
   :TKIND_MODULE
   :TKIND_INTERFACE
   :TKIND_DISPATCH
   :TKIND_COCLASS
   :TKIND_ALIAS
   :TKIND_UNION
   :TKIND_MAX)

(defcstruct TYPEATTR
  (guid guid)
  (lcid :int32)
  (reserved :ulong)
  (memid-constrictor :int32)
  (memid-destructor :int32)
  (schema :pointer)
  (size-instance :ulong)
  (type-kind typekind)
  (funcs :ushort)
  (vars :ushort)
  (impl-types :ushort) ;;number of implemented interfaces
  (size-vft :ushort) ;;The size of this type's VTBL.
  (alignment :ushort) ;;Byte alignment for an instance of this type.
  (type-flags :ushort)
  (major-ver-num :ushort)
  (minor-ver-num :ushort)
  (tdesc-alias typedesc)
  (idl-desc idldesc)) 

(defcstruct PARAMDESC
  (paramdesc-ex :pointer)
  (param-flags :short))

(defcunion elemdesc-union
  (idl-desc idldesc)
  (paramdesc paramdesc))

(defcstruct ELEMENTDESC
  (tdesc typedesc)
  (un-type elemdesc-union))

(defcenum funckind
  :FUNC_VIRTUAL
  :FUNC_PUREVIRTUAL
  :FUNC_NONVIRTUAL
  :FUNC_STATIC
  :FUNC_DISPATCH)

(defconstant DISPATCH_METHOD 1)
(defconstant DISPATCH_PROPERTYGET    2)
(defconstant DISPATCH_PROPERTYPUT    4)
(defconstant DISPATCH_PROPERTYPUTREF 8)

(defcenum INVOKEKIND
  (:INVOKE_FUNC 1)
  (:INVOKE_PROPERTYGET 2)
  (:INVOKE_PROPERTYPUT 4)
  (:INVOKE_PROPERTYPUTREF 8))

(defcenum CALLCONV
  (:CC_FASTCALL 0)
  (:CC_CDECL 1)
  (:CC_MSCPASCAL 2)
  (:CC_PASCAL 2)
  (:CC_MACPASCAL  3)
  (:CC_STDCALL 4)
  (:CC_FPFASTCALL 5)
  (:CC_SYSCALL 6)
  (:CC_MPWCDECL 7)
  (:CC_MPWPASCAL 8)
  (:CC_MAX 9))



(defcstruct FUNCDESC
  (member-id :int32)
  (scode :pointer)
  (element-desc-param :pointer)
  (funckind funckind) ;; Specifies whether the    
                      ;; function is virtual, static,    
                      ;; or dispatch-only.
  (inv-kind INVOKEKIND)
  (call-conv CALLCONV)
  (params :short) ;; Count of total number of parameters.
  (params-opt :short) ;; Count of optional parameters (detailed description follows).
  (o-vft :short) ;; For FUNC_VIRTUAL, specifies the offset in the VTBL.
  (scodes :short) ;; Count of permitted return values. 
  (elem-desc-func elementdesc) ;; Contains the return type of the function.
  (func-flags word)) ;; Definition of flags follows.

(defcenum varkind
  :VAR_PERINSTANCE
  :VAR_STATIC
  :VAR_CONST
  :VAR_DISPATCH)

(defcunion vardesc-union
  (oinst :ulong)
  (value :pointer))

(defcstruct vardesc
  (member-id :int32)
  (schema :pointer) ;; reserved
  (vardesc-union vardesc-union)
  (elemdesc elementdesc)
  (flags :ushort)
  (var-kind varkind))

