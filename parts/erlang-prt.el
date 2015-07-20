;;;; erlang-prt.el
;;;; add Erlang/OTP stuff

(unless (package-installed-p 'erlang)
  (let ((emacs-mode-erlang-directory (getenv "ERLANG_EMACS_DIRECTORY")))
    (when (file-exists-p emacs-mode-erlang-directory)
      (add-to-list 'load-path emacs-mode-erlang-directory)
      (message "added erlang-mode source directory"))))

(let ((erlang-root-directory (getenv "ERLANG_ROOT_DIRECTORY2"))
      (erlang-exec-path      (getenv "ERLANG_EXEC_PATH")))
  (progn
    (if (file-exists-p erlang-root-directory)
	(setq erlang-root-dir erlang-root-directory))
    (if (file-exists-p erlang-exec-path)
	(setq exec-path (cons erlang-exec-path exec-path)))
    (require 'erlang-start)
    (message "finished erlang modifications")))

(provide 'erlang-prt)
;;;; end of file
