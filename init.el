;;;; ~/.emacs.d/init.el
;;;; -*- mode: emacs-lisp; -*-

;;;; add other parts
(add-to-list 'load-path (expand-file-name "parts" user-emacs-directory))

(require 'email-prt)
(require 'package-prt)
(require 'cask-prt)
(require 'erlang-prt)
(require 'elixir-prt)
(require 'sbcl-prt)
(require 'evil-prt)
(require 'company-prt)
(require 'customize-prt)

(provide 'init)
;;;; end of file