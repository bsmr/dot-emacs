;;;; cask-prt.el
;;;; cask setup

(let ((emacs-mode-cask-directory (getenv "CASK_BASE_DIRECTORY")))
  (if (and emacs-mode-cask-directory (file-exists-p emacs-mode-cask-directory))
      (progn
	(add-to-list 'load-path emacs-mode-cask-directory)
	(message "cask is initialized"))
    (message "no cask home directory specified")))

(require 'cask)

(when (featurep 'cask)
  (cask-initialize))

(provide 'cask-prt)
;;;; end of file
