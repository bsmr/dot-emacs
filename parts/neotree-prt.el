;;;; neotree-prt.el

(let ((emacs-mode-neotree-directory (getenv "EMACS_MODE_NEOTREE_DIRECTORY")))
  (if (and emacs-mode-neotree-directory (file-exists-p emacs-mode-neotree-directory))
      (progn
 	(add-to-list 'load-path emacs-mode-neotree-directory)
 	(require 'neotree)
 	(message "neotree setup done"))
    (message "neotree setup failed")))

(if (package-installed-p 'neotree)
    (progn
      (message "neotree modifications")
      (if (package-installed-p 'projectile)
	  (progn
	    (message "neotree + projectile modifications")
	    (setq projectile-switch-project-action 'neotree-projectile-action)))
      (if (package-installed-p 'ffip)
	  (progn
	    (message "neotree + ffip modifications")
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
	    (define-key map (kbd "C-c C-p") 'neotree-project-dir)))
      (if (package-installed-p 'evil)
	  (progn
	    (message "neotree + evil modifications")
	    (add-hook 'neotree-mode-hook
		      (lambda ()
			(define-key evil-normal-state-local-map (kbd "TAB") 'neotree-enter)
			(define-key evil-normal-state-local-map (kbd "SPC") 'neotree-enter)
			(define-key evil-normal-state-local-map (kbd "q") 'neotree-hide)
			(define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)))))
      (if (package-installed-p 'popwin)
       	  (progn
       	    (message "neotree + popwin modifications")
       	    (when neo-persist-show
       	      (add-hook 'popwin:before-popup-hook
       			(lambda () (setq neo-persist-show nil)))
       	      (add-hook 'popwin:after-popup-hook
       			(lambda () (setq neo-persist-show t))))))
      (global-set-key [f8] 'neotree-toggle)))

(provide 'neotree-prt)
;;;; end of file
