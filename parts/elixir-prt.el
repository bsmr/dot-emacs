;;; elixir-prt.el --- setup elixir environment
;;; Commentary:
;;; setup Elixir environment
;;; Github:
;;;  - elixir-mode: https://github.com/elixir-lang/emacs-elixir
;;;  - alchemist  : https://github.com/tonini/alchemist.el

;;; Code:
(unless (package-installed-p 'elixir-mode)
  (let ((emacs-mode-elixir-directory (getenv "EMACS_MODE_ELIXIR_DIRECTORY")))
    (when (file-exists-p emacs-mode-elixir-directory)
      (add-to-list 'load-path emacs-mode-elixir-directory)
      (message "added elixir-mode source directory"))))

(require 'elixir-mode)

(unless (package-installed-p 'alchemist)
  (let ((emacs-mode-alchemist-directory (getenv "EMACS_MODE_ALCHEMIST_DIRECTORY")))
    (when (file-exists-p emacs-mode-alchemist-directory)
      (add-to-list 'load-path emacs-mode-alchemist-directory)
      (message "added alchemist source directory"))))

(require 'alchemist)

(when (featurep 'elixir-mode)
  (message "starting elixir-mode modifications...")
  (let ((elixir-exec-path (getenv "ELIXIR_EXEC_PATH")))
    (when (file-exists-p elixir-exec-path)
      (setq exec-path (cons elixir-exec-path exec-path))
      (message "finished elixir modifications"))))
      
(when (featurep 'alchemist)
  (message "starting alchemist modifications...")
  (let ((erlang-source-directory (getenv "ERLANG_SOURCE_DIRECTORY"))
	(elixir-source-directory (getenv "ELIXIR_SOURCE_DIRECTORY")))
    (progn
      ;;(setq alchemist-key-command-prefix (kbd "C-c a"))
      (when (file-exists-p erlang-source-directory)
	(setq alchemist-goto-erlang-source-dir erlang-source-directory)
	(message "added erlang source directory for alchemist"))
      (when (file-exists-p elixir-source-directory)
	(setq alchemist-goto-elixir-source-dir elixir-source-directory)
	(message "added elixir source directory for alchemist"))

      ;; (eval-after-load 'smartparens
      ;;   '(progn
      ;; 	 (defun my-elixir-do-end-close-action (id action context)
      ;; 	   (when (eq action 'insert)
      ;; 	     (newline-and-indent)
      ;; 	     (previous-line)
      ;; 	     (indent-according-to-mode)))
      
      ;; 	 (sp-with-modes '(elixir-mode)
      ;; 			(sp-local-pair "do" "end"
      ;; 				       :when '(("SPC" "RET"))
      ;; 				       :post-handlers '(:add my-elixir-do-end-close-action)
      ;; 				       :actions '(insert)))))
      
      ;; (when (package-installed-p 'elixir-mode)
      ;; 	(defun custom-elixir-mode-hook ()
      ;; 	  ;;(yas/minor-mode +1)
      ;; 	  (smartparens-mode +1)
      ;; 	  (tester-init-test-run #'alchemist-mix-test-file "_test.exs$")
      ;; 	  (tester-init-test-suite-run #'alchemist-mix-test))
      ;; 	(add-hook 'elixir-mode-hook 'custom-elixir-mode-hook)
      ;; 	(message "added alchemist-elixir-mode modifications"))

      ;; (when (package-installed-p 'erlang)
      ;; 	(defun custom-erlang-mode-hook ()
      ;; 	  (define-key erlang-mode-map (kbd "M-,") 'alchemist-goto-jump-back))
      ;; 	(add-hook 'erlang-mode-hook 'custom-erlang-mode-hook)
      ;; 	(message "added alchemist-erlang modifications"))

      (when (featurep 'ruby-end-mode)
	(add-to-list 'elixir-mode-hook
		     (defun auto-activate-ruby-end-mode-for-elixir-mode ()
		       (set (make-variable-buffer-local 'ruby-end-expand-keywords-before-re)
			    "\\(?:^\\|\\s-+\\)\\(?:do\\)")
		       (set (make-variable-buffer-local 'ruby-end-check-statement-modifiers) nil)
		       (ruby-end-mode +1)))
	(message "finished alchemist-ruby-end-mode modifications"))

      (when (featurep 'smartparens)
	(sp-with-modes '(elixir-mode)
		       (sp-local-pair "fn" "end"
				      :when '(("SPC" "RET"))
				      :actions '(insert navigate))
		       (sp-local-pair "do" "end"
				      :when '(("SPC" "RET"))
				      :post-handlers '(sp-ruby-def-post-handler)
				      :actions '(insert navigate)))
	(message "finished alchemist-smartparens modifications"))

      (message "finished alchemist modifications"))))

(provide 'elixir-prt)
;;; elixir-prt.el ends here
