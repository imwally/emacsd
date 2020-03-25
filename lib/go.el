;; Language Server Protocol mode
(use-package lsp-mode
  :ensure t
  :commands (lsp lsp-deferred)
  :hook (go-mode . lsp-deferred))

;; Format code and add/delete imports before saving
(defun lsp-go-install-save-hooks ()
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t))
(add-hook 'go-mode-hook #'lsp-go-install-save-hooks)

;; Fancy UI overlays
;; https://github.com/emacs-lsp/lsp-ui
(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode)

;; Auto completion
;; http://company-mode.github.io
(use-package company
  :ensure t
  :config
  (setq company-idle-delay 0)
  (setq company-minimum-prefix-length 1))

;; Use company with lsp
(use-package company-lsp
  :ensure t
  :commands company-lsp)
	
