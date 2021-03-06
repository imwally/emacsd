;; make some room
(menu-bar-mode -1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)

;; go away
(setq inhibit-splash-screen t)
(setq initial-scratch-message "")

;; don't wrap lines by default
(set-default 'truncate-lines t)

;; give me line numbers
(global-display-line-numbers-mode 1)

;; make it pretty
(load-theme 'monotropic t)
(set-face-attribute 'default nil :font "SF Mono-11")

;; not so tiny
(set-frame-size (selected-frame) 140 79)
