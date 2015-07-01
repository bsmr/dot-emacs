;;;; file: gitlab-prt.el

(let ((env-gitlab-host     (getenv "PRIVATE_GITLAB_HOST"))
      (env-gitlab-username (getenv "PRIVATE_GITLAB_USERNAME"))
      (env-gitlab-password (getenv "PRIVATE_GITLAB_PASSWORD"))
      (env-gitlab-token-id (getenv "PRIVATE_GITLAB_TOKEN_ID")))
  (if (and env-gitlab-host
	   env-gitlab-username
	   env-gitlab-password
	   env-gitlab-token-id)
      (progn
	(setq gitlab-host     env-gitlab-host
	      gitlab-username env-gitlab-username
	      gitlab-password env-gitlab-password
	      gitlab-token-id env-gitlab-token-id)
	(message "gitlab setup done"))
    (message "gitlab setup failed")))

(provide 'gitlab-prt)
;;;; end of file
