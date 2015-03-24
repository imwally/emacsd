;; load stuff
(setq custom-file "~/.emacs.d/custom.el")
(setq packages "~/.emacs.d/packages.el")
(load custom-file)
(load packages)

;; make some room
(menu-bar-mode -1)
(tool-bar-mode -1)
(toggle-scroll-bar -1)

;; go away
(setq inhibit-splash-screen t)

;; make it pretty
(load-theme 'spacegray)
