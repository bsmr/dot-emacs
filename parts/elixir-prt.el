;;;; elixir-prt.el
;;;; setup Elixir environment
;;;; Github:
;;;;  - elixir-mode: https://github.com/elixir-lang/emacs-elixir
;;;;  - alchemist  : https://github.com/tonini/alchemist.el

(let ((emacs-mode-elixir-directory    (getenv "EMACS_MODE_ELIXIR_DIRECTORY"))
      (emacs-mode-alchemist-directory (getenv "EMACS_MODE_ALCHEMIST_DIRECTORY"))
      (erlang-source-directory        (getenv "ERLANG_SOURCE_DIRECTORY"))
      (elixir-source-directory        (getenv "ELIXIR_SOURCE_DIRECTORY"))
      (elixir-exec-path               (getenv "ELIXIR_EXEC_PATH")))
  ;; add elixir-mode from git
  (when (and (not (package-installed-p 'elixir-mode))
	   (file-exists-p emacs-mode-elixir-directory))
    (add-to-list 'load-path emacs-mode-elixir-directory)
    (require 'elixir-mode)
    (message "elixir-mode from git added"))
  ;; add alchemist from git
  (when (and (not (package-installed-p 'alchemist))
	   (file-exists-p emacs-mode-alchemist-directory))
    (add-to-list 'load-path emacs-mode-alchemist-directory)
    (require 'alchemist)
    (message "alchemist from git added"))
  ;; modifications for elixir-mode
  (when (package-installed-p 'elixir-mode)
    (setq exec-path (cons elixir-exec-path exec-path))
    (message "elixir modifications done"))
  ;; modifications for alchemist
  (when (package-installed-p 'alchemist)
    (if (file-exists-p erlang-source-directory)
	(setq alchemist-goto-erlang-source-dir erlang-source-directory)
      (message "Cannot find erlang source directory!"))
    (if (file-exists-p elixir-source-directory)
	(setq alchemist-goto-elixir-source-dir elixir-source-directory)
      (message "Cannot find elixir source directory!"))
    
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
    
    ;; (defun t-elixir-mode-hook ()
    ;;   (yas/minor-mode +1)
    ;;   (smartparens-mode +1)
    ;;   (tester-init-test-run #'alchemist-mix-test-file "_test.exs$")
    ;;   (tester-init-test-suite-run #'alchemist-mix-test))
    
    ;; (defun t-erlang-mode-hook ()
    ;;   (define-key erlang-mode-map (kbd "M-,") 'alchemist-goto-jump-back))
    
    ;; (add-hook 'elixir-mode-hook  't-elixir-mode-hook)
    ;; (add-hook 'erlang-mode-hook 't-erlang-mode-hook)

    (message "alchemist modifications done")))

(provide 'elixir-prt)
;;;; end of file
