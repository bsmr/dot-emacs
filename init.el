;;; init.el --- setup emacs
;;; Commentary:
;;; setup emacs

;;; Code:

(let* ((user-parts-directory-name "parts")
       (user-parts-directory
	(expand-file-name user-parts-directory-name user-emacs-directory)))
  (when (file-exists-p user-parts-directory)
    (add-to-list 'load-path user-parts-directory)

    (require 'email-prt)              ;; personal E-Mail setup
    (require 'package-prt)            ;; support for emacs packages
    (require 'cask-prt)               ;; cask additions
    (require 'company-prt)            ;; needed by alchemist
    (require 'smartparens-prt)        ;;
    (require 'rainbow-delimiters-prt) ;; 
    (require 'flycheck-prt)           ;; on the fly syntax checking
    (require 'erlang-prt)             ;; Erlang/OTP support
    (require 'elixir-prt)             ;; Elixir support
    (require 'sbcl-prt)               ;; SBCL support
    ;;(require 'evil-prt)             ;; VI mode
    (require 'neotree-prt)            ;; project tree view
    (require 'customize-prt)          ;; some basic emacs customizations

    (message "finished user init setup")))

(provide 'init)
;;; init.el ends here