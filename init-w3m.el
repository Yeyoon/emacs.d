(require-package 'w3m)

(setq browse-url-browser-function 'browse-url-in-other-window-without-focus-on)

(defun browse-url-in-other-window (url &optional newwin)
  "Open url in other window"
  (message "Loading...")
  (let ((w3m-pop-up-windows t))
    (if (one-window-p) (split-window-sensibly (frame-selected-window)))
    (other-window 1)
    (w3m-browse-url url newwin)))

(defun browse-url-in-other-window-without-focus-on (url &optional newwin)
  "Open url in other window without move focus on it"
  (message "Loading...")
  (let ((w3m-pop-up-windows t))
    (if (one-window-p) (split-window-sensibly (frame-selected-window)))
    (other-window 1)
    (w3m-browse-url url newwin)
    (other-window -1)))

(global-set-key (kbd "C-c C-l") 'browse-url)
(provide 'init-w3m)
