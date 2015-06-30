;;;; sbcl-prt.el

;;; The SBCL binary and command-line arguments

(let ((emacs-mode-slime-directory "/opt/emacs/src/slime")
      (sbcl-exec-binary           "/opt/lisp/sbcl/active/bin/sbcl"))
  (if (and (file-exists-p emacs-mode-slime-directory)
	   (file-exists-p sbcl-exec-binary))
      (progn
	(add-to-list 'load-path emacs-mode-slime-directory)
	(setq inferior-lisp-program "/opt/lisp/sbcl/active/bin/sbcl --noinform")
	(setq slime-contribs '(slime-fancy))
	(require 'slime)
	(message "sbcl and slime setup done"))
    (message "sbcl and slime setup failed")))

(provide 'sbcl-prt)
;;;; end of file