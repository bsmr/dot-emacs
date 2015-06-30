;;;; email-prt.el
;;;; assign user's e-mail address from the ENV variable USER_MAIL_ADDRESS
;;;; use something like
;;;;   bash> export USER_MAIL_ADDRESS="firstname.lastname@example.com"

(let ((env-user-mail-address (getenv "USER_MAIL_ADDRESS")))
  (if env-user-mail-address
      (progn
	(setq user-mail-address env-user-mail-address)
	(message "user e-mail setup done"))
    (message "user e-mail setup failed")))

(provide 'email-prt)
;;;; end of file
