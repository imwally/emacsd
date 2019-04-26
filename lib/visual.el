;; make some room
(menu-bar-mode -1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)

;; go away
(setq inhibit-splash-screen t)
(setq initial-scratch-message "")

;; make it pretty
;;(load-theme 'tao-yang t)
(set-face-attribute 'default nil :font "SF Mono-11")
(set-background-color "white")

;; not so tiny
(set-frame-size (selected-frame) 100 65)
