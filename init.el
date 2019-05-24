;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; define my configs
(setq my-configs '("backups.el"
		   "cl.el"
		   "go.el"
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

;; set PATH
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("801a567c87755fe65d0484cb2bded31a4c5bb24fd1fe0ed11e6c02254017acb2" "b59d7adea7873d58160d368d42828e7ac670340f11f36f67fa8071dbf957236a" default)))
 '(package-selected-packages
   (quote
    (airline-themes yaml-mode web-mode terraform-mode tao-theme slime scpaste rust-mode neotree markdown-mode magit json-mode go-mode go-autocomplete flatui-theme exec-path-from-shell color-theme-sanityinc-tomorrow basic-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
