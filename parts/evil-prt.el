;;;; evil-prt.el
;;;; add EVIL mode

;; (let ((emacs-mode-evil-directory (getenv "EMACS_MODE_EVIL_DIRECTORY")))
;;   (if (file-exists-p emacs-mode-evil-directory)
;;       (progn
;; 	(add-to-list 'load-path emacs-mode-evil-directory)
;; 	(require 'evil)
;; 	(evil-mode 1)
;; 	(message "evil setup done"))
;;     (message "evil setup failed")))

(require 'evil)

(when (featurep 'evil)
  (evil-mode 1)

  ;;(global-evil-visualstar-mode 1)
  ;;(setq evil-default-cursor t)
  ;;(setq evil-default-state 'normal)
  ;;(setq evil-auto-indent t)
  ;;(setq evil-shift-width 2)
  ;;(setq evil-search-wrap t)
  ;;(setq evil-find-skip-newlines t)
  ;;(setq evil-move-cursor-back nil)
  ;;(setq evil-mode-line-format 'before)
  ;;(setq evil-cross-lines t)
  
  ;;(setq evil-overriding-maps nil)
  ;;(setq evil-intercept-maps nil)
  
  ;; Don't wait for any other keys after escape is pressed.
  ;;(setq evil-esc-delay 0)

  (message "finished evil modifications"))

(provide 'evil-prt)
;;;; end of file