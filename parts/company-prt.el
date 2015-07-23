;;; company-prt.el --- company setup
;;; Commentary:
;;; TBD

;;; Code:

(when (package-installed-p 'company)
  (add-hook 'after-init-hook 'global-company-mode)
  (message "finished company setup"))

(provide 'company-prt)
;;; company-prt.el ends here
