;;; enterprise-prt.el --- an enterprise setup
;;; Commentary:
;;; TBD

;;; Code:
;; replace highlighted text with what I type rather than just inserting at point
(delete-selection-mode t)

;; All settings clicked in the Options menu are saved here by Emacs.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(display-battery-mode t)
 '(display-time-24hr-format t)
 '(display-time-day-and-date nil)
 '(display-time-default-load-average nil)
 '(display-time-mail-file (quote none))
 '(display-time-mode t)
 '(indicate-buffer-boundaries (quote ((t . right) (top . left))))
 '(indicate-empty-lines t)
 '(save-place t nil (saveplace))
 '(scroll-bar-mode (quote right))
 '(show-paren-mode t)
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))
  '(uniquify-buffer-name-style (quote forward) nil (uniquify)))


(provide 'enterprise-prt)
;;; enterprise-prt.el ends here