;;;; company-prt.el

(when (package-installed-p 'company)
  (add-hook 'after-init-hook 'global-company-mode)
  (message "finished company mode modifications"))

(provide 'company-prt)
;;;; end of file
