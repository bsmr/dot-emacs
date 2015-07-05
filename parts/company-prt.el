;;;; company-prt.el

;; (let ((emacs-mode-company-directory (getenv "EMACS_MODE_COMPANY_DIRECTORY")))
;;   (if (file-exists-p emacs-mode-company-directory)
;;       (progn

;; 	(add-to-list 'load-path emacs-mode-company-directory)
	
;; 	(require 'company)
	
;; 	;;(add-hook 'after-init-hook 'global-company-mode)
;; 	(message "company mode setup done"))
;;     (message "company more setup failed")))

(if (package-installed-p 'company)
    (progn
      (message "company mode modifications")
      (add-hook 'after-init-hook 'global-company-mode)))

(provide 'company-prt)
;;;; end of file
