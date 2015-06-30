;;;; erlang-prt.el

;;;; add Erlang/OTP stuff
;;(setq load-path (cons "/opt/erlang/otp/git/20150629/0738/lib/erlang/lib/tools-2.8/emacs" load-path))
(add-to-list 'load-path "/opt/erlang/otp/git/20150629/0738/lib/erlang/lib/tools-2.8/emacs")
(setq erlang-root-dir "/opt/erlang/otp/active")
(setq exec-path (cons "/opt/erlang/otp/active/bin" exec-path))
(require 'erlang-start)


(provide 'erlang-prt)
;;;; end of file