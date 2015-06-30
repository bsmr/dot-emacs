;;;; sbcl-prt.el

;;; The SBCL binary and command-line arguments

(add-to-list 'load-path "/opt/emacs/src/slime")
(setq inferior-lisp-program "/opt/lisp/sbcl/active/bin/sbcl --noinform")
(setq slime-contribs '(slime-fancy)) ; almost everything
(require 'slime)
(message "sbcl setup done")

(provide 'sbcl-prt)
;;;; end of file