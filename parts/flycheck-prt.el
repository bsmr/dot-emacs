;;; flycheck-prt.el --- flycheck setup
;;; Commentary:
;;; https://github.com/flycheck/flycheck
;;; http://www.flycheck.org/

;;; Code:
(when (package-installed-p 'flycheck)
  (add-hook 'after-init-hook #'global-flycheck-mode)
  (message "finished flycheck setup"))

(provide 'flycheck-prt)
;;; flycheck-prt.el ends here