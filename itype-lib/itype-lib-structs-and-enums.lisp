(in-package :cl-com)

(defcenum syskind
  (:sys_win16)
  (:sys_win32)
  (:sys_mac))

(defcstruct tlibattr
  (guid guid)
  (lcid :int32)
  (syskind syskind)
  (major-version :ushort)
  (minor-version :ushort)
  (lib-flags :ushort))