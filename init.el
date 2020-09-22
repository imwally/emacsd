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
		   "packages.el"
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

;;(custom-set-variables
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("f738c3eb5cfc7e730fea413f9cd8ba0624bd8b4837451660fe169f13f77c7814" "30289fa8d502f71a392f40a0941a83842152a68c54ad69e0638ef52f04777a4c" default))
 '(package-selected-packages
   '(phps-mode yaml-mode web-mode plisp-mode company-lsp lsp-ui use-package lsp-mode monotropic-theme plan9-theme exec-path-from-shell scpaste magit go-mode slime)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
