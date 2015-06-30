;;;; cask-prt.el
;;;; cask setup

(let ((emacs-mode-cask-directory (getenv "CASK_BASE_DIRECTORY")))
  (if (file-exists-p emacs-mode-cask-directory)
      (progn
	(add-to-list 'load-path emacs-mode-cask-directory)
	(require 'cask)
	(cask-initialize)
	(message "cask is initialized"))
    (message "no cask home directory specified")))

(provide 'cask-prt)
;;;; end of file
