;;; cask-prt.el --- setup cask
;;; Commentary:
;;; cask setup

;;; Code:
(let ((emacs-mode-cask-directory (getenv "CASK_BASE_DIRECTORY")))
  (when (and emacs-mode-cask-directory
	     (file-exists-p emacs-mode-cask-directory))
    (add-to-list 'load-path emacs-mode-cask-directory)))

(require 'cask)

(when (featurep 'cask)
  (cask-initialize)
  (message "finished cask setup"))

(provide 'cask-prt)
;;; cask-prt.el ends here
