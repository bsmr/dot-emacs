;;;; neotree-prt.el

(let ((emacs-mode-neotree-directory (getenv "EMACS_MODE_NEOTREE_DIRECTORY")))
  (if (file-exists-p emacs-mode-neotree-directory)
      (progn
	(add-to-list 'load-path emacs-mode-neotree-directory)
	(require 'neotree)
	(message "neotree setup done"))
    (message "neotree setup failed")))

(if (package-installed-p 'neotree)
    (progn
      (message "neotree modifications")
      (global-set-key [f8] 'neotree-toggle)))

(provide 'neotree-prt)
;;;; end of file