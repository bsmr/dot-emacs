;;; sbcl-prt.el --- Steel Banks Common Lisp setup
;;; Commentary:
;;; The SBCL binary and command-line arguments

;;; Code:

(require 'slime)

(when (featurep 'slime)
  (let ((sbcl-exec-binary "/opt/lisp/sbcl/active/bin/sbcl"))
    (when (file-executable-p sbcl-exec-binary)
      (setq inferior-lisp-program "/opt/lisp/sbcl/active/bin/sbcl --noinform")))
  (setq slime-contribs '(slime-fancy))
  (message "finished slime/sbcl setup"))

(provide 'sbcl-prt)
;;; sbcl-prt.el ends here
