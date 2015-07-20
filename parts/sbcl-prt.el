;;;; sbcl-prt.el
;;; The SBCL binary and command-line arguments

(when (package-installed-p 'slime)
  (let ((sbcl-exec-binary "/opt/lisp/sbcl/active/bin/sbcl"))
    (when (file-executable-p sbcl-exec-binary)
      (setq inferior-lisp-program "/opt/lisp/sbcl/active/bin/sbcl --noinform")))
  (setq slime-contribs '(slime-fancy))
  (require 'slime)
  (message "finished slime/sbcl setup"))

(provide 'sbcl-prt)
;;;; end of file