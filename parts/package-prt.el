;;;; package-prt.el

;;;; emacs package handling
(require 'package)
(setq package-enable-at-startup nil)
(package-initialize)
(message "package setup done")

(provide 'package-prt)
;;;; end of file
