;;;; company-prt.el

(add-to-list 'load-path "/opt/emacs/git/company-mode")

(require 'company)

(add-hook 'after-init-hook 'global-company-mode)

(provide 'company-prt)
;;;; end of file