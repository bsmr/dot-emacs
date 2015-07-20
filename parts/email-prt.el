;;;; email-prt.el
;;;; assign user's e-mail address from the ENV variable USER_MAIL_ADDRESS
;;;; use something like
;;;;   bash> export USER_MAIL_ADDRESS="firstname.lastname@example.com"

(let ((env-user-mail-address (getenv "USER_MAIL_ADDRESS")))
  (when env-user-mail-address
    (setq user-mail-address env-user-mail-address)
    (message "finished user e-mail setup")))

(provide 'email-prt)
;;;; end of file
