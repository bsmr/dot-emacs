;;;; evil-prt.el
;;;; add EVIL mode

(let ((emacs-mode-evil-directory (getenv "EMACS_MODE_EVIL_DIRECTORY")))
  (if (file-exists-p emacs-mode-evil-directory)
      (progn
	(add-to-list 'load-path emacs-mode-evil-directory)
	(require 'evil)
	(evil-mode 1)
	(message "evil setup done"))
    (message "evil setup failed")))

(provide 'evil-prt)
;;;; end of file