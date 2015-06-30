;;;; sbcl-prt.el

;;; The SBCL binary and command-line arguments
;;(setq inferior-lisp-program "/usr/local/bin/sbcl --noinform")
(setq inferior-lisp-program "/opt/lisp/sbcl/active/bin/sbcl --noinform")
(setq slime-contribs '(slime-fancy)) ; almost everything
(message "sbcl setup done")

(provide 'sbcl-prt)
;;;; end of file