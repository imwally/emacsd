;; make some room
(menu-bar-mode -1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)

;; go away
(setq inhibit-splash-screen t)
(setq initial-scratch-message "")

;; make it pretty
(load-theme 'sanityinc-tomorrow-day)
(set-face-attribute 'default nil :font "SF Mono-12")
