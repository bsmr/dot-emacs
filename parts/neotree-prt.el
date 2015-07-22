;;;; neotree-prt.el

(unless (package-installed-p 'neotree)
  (let ((emacs-mode-neotree-directory (getenv "EMACS_MODE_NEOTREE_DIRECTORY")))
    (when (and emacs-mode-neotree-directory (file-exists-p emacs-mode-neotree-directory))
      (add-to-list 'load-path emacs-mode-neotree-directory)
      (message "added neotree source"))))

(require 'neotree)

(when (featurep 'neotree)
  
  (when (featurep 'projectile)
    (setq projectile-switch-project-action 'neotree-projectile-action)
    (message "finished neotree + projectile modifications"))

  (when (featurep 'ffip)
    (defun neotree-project-dir ()
      "Open NeoTree using the git root."
      (interactive)
      (let ((project-dir (ffip-project-root))
	    (file-name (buffer-file-name)))
	(if project-dir
	    (progn
	      (neotree-dir project-dir)
	      (neotree-find file-name))
	  (message "Could not find git project root."))))
    
    (define-key map (kbd "C-c C-p") 'neotree-project-dir)
    (message "finished neotree + ffip modifications"))
  
  (when (featurep 'evil)
    (add-hook 'neotree-mode-hook
	      (lambda ()
		(define-key evil-normal-state-local-map (kbd "TAB") 'neotree-enter)
		(define-key evil-normal-state-local-map (kbd "SPC") 'neotree-enter)
		(define-key evil-normal-state-local-map (kbd "q") 'neotree-hide)
		(define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)))
    (message "finished neotree + evil modifications"))
  
  (when (featurep 'popwin)
    (when neo-persist-show
      (add-hook 'popwin:before-popup-hook
		(lambda () (setq neo-persist-show nil)))
      (add-hook 'popwin:after-popup-hook
		(lambda () (setq neo-persist-show t))))
    (message "finished neotree + popwin modifications"))
  
  (global-set-key [f8] 'neotree-toggle)
  (message "finished neotree modifications"))

(provide 'neotree-prt)
;;;; end of file
