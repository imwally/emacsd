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
(setq initial-scratch-message "")

;; make it pretty
(load-theme 'tao-yang)

;; programs
(add-to-list 'exec-path "/usr/local/bin")
(add-to-list 'exec-path "/usr/local/go/bin")

;; magit
(global-set-key (kbd "C-x g") 'magit-status)

;; scpaste
(setq scpaste-http-destination "https://imwally.net/p"
      scpaste-scp-destination "imwally.net:~/containers/imwally.net/volume/p")

;;; Common Lisp
(require 'slime)
(setq inferior-lisp-program "sbcl")
(slime-setup)

;; date and timestamp courtesy of kyle
(defun k-insert-timestamp ()
  (interactive)
  (insert (format-time-string "%Y-%m-%dT%H:%M:%S%z")))

(defun k-insert-date ()
  (interactive)
  (insert (format-time-string "%Y-%m-%d")))

(global-set-key (kbd "C-c t t") 'k-insert-timestamp)
(global-set-key (kbd "C-c t d") 'k-insert-date)
