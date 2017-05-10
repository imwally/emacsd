;; date and timestamp courtesy of kyle
(defun k-insert-timestamp ()
  (interactive)
  (insert (format-time-string "%Y-%m-%dT%H:%M:%S%z")))

(defun k-insert-date ()
  (interactive)
  (insert (format-time-string "%Y-%m-%d")))

(global-set-key (kbd "C-c t t") 'k-insert-timestamp)
(global-set-key (kbd "C-c t d") 'k-insert-date)
