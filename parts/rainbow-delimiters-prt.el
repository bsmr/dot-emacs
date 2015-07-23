;;; rainbow-delimiters-prt.el --- rainbow delimiters setup
;;; Commentary:
;;; TBD

;;; Code:

(when (package-installed-p 'rainbow-delimiters)
  ;;(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)
  (add-hook 'prog-mode-hook 'rainbow-delimiters-mode)
  ;;(global-rainbow-delimiters-mode)
  (message "finished rainbow-delimiters setup"))

(provide 'rainbow-delimiters-prt)
;;; rainbow-delimiters-prt.el ends here