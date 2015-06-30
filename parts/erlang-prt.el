;;;; erlang-prt.el
;;;; add Erlang/OTP stuff

(let ((erlang-root-directory       (getenv "ERLANG_ROOT_DIRECTORY"))
      (erlang-exec-path            (getenv "ERLANG_EXEC_PATH"))
      (emacs-mode-erlang-directory (getenv "ERLANG_EMACS_DIRECTORY")))
  (if (and (file-exists-p erlang-root-directory)
	   (file-exists-p erlang-exec-path)
	   (file-exists-p emacs-mode-erlang-directory))
      (progn
	(add-to-list 'load-path emacs-mode-erlang-directory)
	(setq erlang-root-dir erlang-root-directory)
	(setq exec-path (cons erlang-exec-path exec-path))
	(require 'erlang-start)
	(message "erlang setup done"))
    (message "erlang setup failed")))

(provide 'erlang-prt)
;;;; end of file
