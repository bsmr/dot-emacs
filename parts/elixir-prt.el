;;;; elixir-prt.el
;;;; setup Elixir environment

(let ((emacs-mode-elixir-directory    (getenv "EMACS_MODE_ELIXIR_DIRECTORY"))
      (emacs-mode-alchemist-directory (getenv "EMACS_MODE_ALCHEMIST_DIRECTORY"))
      (erlang-source-directory        (getenv "ERLANG_SOURCE_DIRECTORY"))
      (elixir-source-directory        (getenv "ELIXIR_SOURCE_DIRECTORY"))
      (elixir-exec-path               (getenv "ELIXIR_EXEC_PATH")))
  (if (and (file-exists-p emacs-mode-elixir-directory)
	   (file-exists-p emacs-mode-alchemist-directory)
	   (file-exists-p erlang-source-directory)
	   (file-exists-p elixir-source-directory))
      (progn
	(add-to-list 'load-path emacs-mode-elixir-directory)
	(add-to-list 'load-path emacs-mode-alchemist-directory)
	(setq exec-path (cons elixir-exec-path exec-path))
	(require 'elixir-mode)
	(require 'alchemist)

	(setq alchemist-goto-erlang-source-dir erlang-source-directory)
	(setq alchemist-goto-elixir-source-dir elixir-source-directory)
	
	(eval-after-load 'smartparens
	  '(progn
	     (defun my-elixir-do-end-close-action (id action context)
	       (when (eq action 'insert)
		 (newline-and-indent)
		 (previous-line)
		 (indent-according-to-mode)))
	     
	     (sp-with-modes '(elixir-mode)
			    (sp-local-pair "do" "end"
					   :when '(("SPC" "RET"))
					   :post-handlers '(:add my-elixir-do-end-close-action)
					   :actions '(insert)))))
	
	(defun t-elixir-mode-hook ()
	  (yas/minor-mode +1)
	  (smartparens-mode +1)
	  (tester-init-test-run #'alchemist-mix-test-file "_test.exs$")
	  (tester-init-test-suite-run #'alchemist-mix-test))
	
	(defun t-erlang-mode-hook ()
	  (define-key erlang-mode-map (kbd "M-,") 'alchemist-goto-jump-back))
	
	(add-hook 'elixir-mode-hook  't-elixir-mode-hook)
	(add-hook 'erlang-mode-hook 't-erlang-mode-hook)
	(message "elixir setup done"))
    (message "elixir setup failed")))

(provide 'elixir-prt)
;;;; end of file