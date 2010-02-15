(in-package :midl-lisp-generator)

(defctype hwnd :pointer)
(defctype wparam :uint) ;looks like it should be pointer
(defctype lparam :long)
;(defctype point point)
(defctype hinstance :pointer)
(defctype lpcstr (:pointer :char))
(defctype hmodule :pointer)
(defctype lresult :long)
(defctype hicon :pointer)
(defctype hcursor :pointer)
(defctype hbrush :pointer)
(defctype atom :uint16)
(defctype hgdiobj :pointer)
(defctype dword :uint32)
(defctype hconv (:pointer :int))
(defctype hsz (:pointer :int))
(defctype uint :uint32)
(defctype dword* (:pointer :uint))
(defctype word :uint16)
(defctype lpdword (:pointer dword))
;; Actuall:y thi is far pointer to byte
;; typedef: BYTE far *LPBYTE;
;; Try to :use usual pointer, and hope for the best.
(defctype lpbyte :pointer)
(defctype lptstr (:pointer :char))
(defctype intptr (:pointer :int))
(defctype hddedata :pointer)
(defctype lpstr (:pointer :char))

(defctype ulptr (:pointer :ulong))

(defctype hresult :ulong)
(defctype byte :uint8)