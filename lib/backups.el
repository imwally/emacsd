;; Send all backups created by emacs to ~/.emacs-backup-files
(setq
 backup-by-copying t
 backup-directory-alist
 '(("." . "~/.emacs-backup-files"))
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2
 version-control t)
