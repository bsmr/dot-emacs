;;;; file: gitlab-prt.el

(let ((env-gitlab-host     (getenv "PRIVATE_GITLAB_HOST"))
      (env-gitlab-username (getenv "PRIVATE_GITLAB_USERNAME"))
      (env-gitlab-password (getenv "PRIVATE_GITLAB_PASSWORD"))
      (env-gitlab-token-id (getenv "PRIVATE_GITLAB_TOKEN_ID")))
  (when (and env-gitlab-host
	     env-gitlab-username
	     env-gitlab-password
	     env-gitlab-token-id)
    (setq gitlab-host     env-gitlab-host
	  gitlab-username env-gitlab-username
	  gitlab-password env-gitlab-password
	  gitlab-token-id env-gitlab-token-id)
    (message "finished gitlab setup done")))

(provide 'gitlab-prt)
;;;; end of file
