;;;; package-prt.el

;;;; emacs package handling
(require 'package)

(when (featurep 'package)
  (setq package-enable-at-startup nil)
  (package-initialize)
  (message "finished package setup"))

(provide 'package-prt)
;;;; end of file
