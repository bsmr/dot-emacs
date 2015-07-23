;;; package-prt.el --- emacs package setup
;;; Commentary:
;;; TBD

;;; Code:

;;;; emacs package handling
(require 'package)

(when (featurep 'package)
  (setq package-enable-at-startup nil)
  (package-initialize)
  (message "finished package setup"))

(provide 'package-prt)
;;; package-prt.el ends here
