;; web-mode
(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2))
(add-hook 'web-mode-hook 'my-web-mode-hook)

(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
