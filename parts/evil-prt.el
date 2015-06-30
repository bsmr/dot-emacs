;;;; evil-prt.el

;;;; add EVIL mode
;;(push "~/.emacs.d/evil" 'load-path)
(add-to-list 'load-path "/opt/emacs/git/evil")
(require 'evil)
(evil-mode 1)

(provide 'evil-prt)
;;;; end of file