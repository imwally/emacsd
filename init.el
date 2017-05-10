;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; custom stuff
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;; define my configs
(setq my-configs '("backups.el"
		   "cl.el"
		   "magit.el"
		   "packages"
		   "scp-paste.el"
		   "util.el"
		   "visual.el"
		   "web-mode.el"))

;; load my configs
(mapcar #'load
	(mapcar (lambda (el)
		  (concat "~/.emacs.d/lib/" el))
		my-configs))

;; programs
(add-to-list 'exec-path "/usr/local/bin")
(add-to-list 'exec-path "/usr/local/go/bin")

