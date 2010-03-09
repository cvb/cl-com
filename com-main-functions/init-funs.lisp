(in-package :cl-com)

(defconstant +COINIT_APARTMENTTHREADED+ #x2)
(defconstant +COINIT_MULTITHREADED+ #x0)
(defconstant +COINIT_DISABLE_OLE1DDE+ #x4)
(defconstant +COINIT_SPEED_OVER_MEMORY+ #x8) 

(defcfun ("CoInitializeEx" %co-initialize-ex) :ulong
  (reserved :pointer) ;; Allways null, reserved for smth
  (co-init dword))    ;; Concurecy model

(defun co-initialize ()
  (%co-initialize-ex (null-pointer) +coinit_apartmentthreaded+))

(defcenum clsctx 
  (:CLSCTX_INPROC_SERVER 1)
  (:CLSCTX_INPROC_HANDLER 2)
  (:CLSCTX_LOCAL_SERVER 4)
  (:CLSCTX_INPROC_SERVER16 8)
  (:CLSCTX_REMOTE_SERVER 10)
  (:CLSCTX_INPROC_HANDLER16 20)
  (:CLSCTX_RESERVED1 40)
  (:CLSCTX_RESERVED2 80)
  (:CLSCTX_RESERVED3 100)
  (:CLSCTX_RESERVED4 200)
  (:CLSCTX_NO_CODE_DOWNLOAD 400)
  (:CLSCTX_RESERVED5 800)
  (:CLSCTX_NO_CUSTOM_MARSHAL 1000)
  (:CLSCTX_ENABLE_CODE_DOWNLOAD 2000)
  (:CLSCTX_NO_FAILURE_LOG 4000)
  (:CLSCTX_DISABLE_AAA 8000)
  (:CLSCTX_ENABLE_AAA 10000)
  (:CLSCTX_FROM_DEFAULT_CONTEXT 20000)
  (:CLSCTX_ACTIVATE_32_BIT_SERVER 40000)
  (:CLSCTX_ACTIVATE_64_BIT_SERVER 80000)
  (:CLSCTX_ENABLE_CLOAKING 100000)
  (:CLSCTX_PS_DLL 80000000)) 

(defcfun ("CoCreateInstance" %co-create-instance) :ulong
  (clsid guid)
  (punk-outer :pointer)
  (context clsctx)
  (riid guid)
  (instance :pointer))
