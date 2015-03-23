;; load custom stuff
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;; make some room
(menu-bar-mode -1)
(tool-bar-mode -1)

;; give me more room
(toggle-scroll-bar -1)

;; go away
(setq inhibit-splash-screen t)

;; packages
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)

;; make it pretty
(load-theme 'spacegray)
