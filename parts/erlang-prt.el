;;;; erlang-prt.el
;;;; add Erlang/OTP stuff

(if (not (package-installed-p 'erlang))
    (let ((emacs-mode-erlang-directory (getenv "ERLANG_EMACS_DIRECTORY")))
      (if (file-exists-p emacs-mode-erlang-directory)
	  (progn
	    (add-to-list 'load-path emacs-mode-erlang-directory)
	    (require 'erlang-start)
	    (message "erlang setup done"))
	(message "erlang setup failed"))))

(if (package-installed-p 'erlang)
    (let ((erlang-root-directory       (getenv "ERLANG_ROOT_DIRECTORY2"))
	  (erlang-exec-path            (getenv "ERLANG_EXEC_PATH")))
      (progn
	(if (file-exists-p erlang-root-directory)
	    (setq erlang-root-dir erlang-root-directory))
	(if (file-exists-p erlang-exec-path)
	    (setq exec-path (cons erlang-exec-path exec-path)))
	(require 'erlang-start)
	(message "erlang modifications done"))))

(provide 'erlang-prt)
;;;; end of file
