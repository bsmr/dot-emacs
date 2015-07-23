;;; erlang-prt.el --- setup Erlang/OTP
;;; Commentary:
;;; add Erlang/OTP stuff
;;; http://www.erlang.org/doc/apps/tools/erlang_mode_chapter.html
;;; http://www.erlang.org/doc/man/erlang.el.html

;;; Code:
(unless (package-installed-p 'erlang)
  (let ((emacs-mode-erlang-directory (getenv "ERLANG_EMACS_DIRECTORY")))
    (when (file-exists-p emacs-mode-erlang-directory)
      (add-to-list 'load-path emacs-mode-erlang-directory)
      (message "added erlang-mode source directory"))))

(require 'erlang-start)

(when (featurep 'erlang-start)
  (let ((erlang-root-directory (getenv "ERLANG_ROOT_DIRECTORY2"))
	(erlang-exec-path      (getenv "ERLANG_EXEC_PATH")))
    (progn
      (if (file-exists-p erlang-root-directory)
	  (setq erlang-root-dir erlang-root-directory))
      (if (file-exists-p erlang-exec-path)
	  (setq exec-path (cons erlang-exec-path exec-path)))
      (message "finished erlang modifications"))))

(provide 'erlang-prt)
;;; erlang-prt.el ends here
