(in-package :cl-com)

(defun get-hresult-values-for-symbol (symbol)
  (iterate (for (s v)  in *hresult-list*)
      (when (eql symbol s)
	(collect v))))

(defun get-hresult-symbol-for-value (value)
  (iterate (for (s v)  in *hresult-list*)
      (when (eql value v)
	(collect s))))
