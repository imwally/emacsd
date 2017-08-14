;; Run gofmt before saving
(setq gofmt-command "goimports")
(add-hook 'before-save-hook 'gofmt-before-save)

;; go autocomplete
(require 'go-autocomplete)
(require 'auto-complete-config)
(ac-config-default)


