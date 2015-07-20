;;;; customize-prt.el

;; replace highlighted text with what I type rather than just inserting at point
(delete-selection-mode t)

;; All settings clicked in the Options menu are saved here by Emacs.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t)
 '(column-number-mode t)
 '(mode-require-final-newline nil)
 ;;'(display-battery-mode t)
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

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Inconsolata" :foundry "unknown" :slant normal :weight normal :height 80 :width normal)))))

(provide 'customize-prt)
;;;; end of file