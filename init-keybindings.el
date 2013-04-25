(global-set-key (kbd "C-c g") 'goto-line)
(global-set-key (kbd "M-n") 'scroll-other-window)
(global-set-key (kbd "M-p") 'scroll-other-window-down)
(global-set-key (kbd "M-`") 'other-window)
(global-set-key (kbd "C-2") 'cua-set-mark)
(global-set-key (kbd "C-c i") 'imenu)

(global-set-key (kbd "C-/") 'undo)

(defun ask-before-closing ()
  "Ask whether or not to close, and then close if y was pressed"
  (interactive)
  (if (y-or-n-p (format "Are you sure you want to exit Emacs? "))
      (if (< emacs-major-version 22)
          (save-buffers-kill-terminal)
        (save-buffers-kill-emacs))
    (message "Canceled exit")))

(when window-system
  (global-set-key (kbd "C-x C-c") 'ask-before-closing))

(require-package 'highlight-symbol)
(global-set-key (kbd "C-c C-m") 'highlight-symbol-at-point)

(provide 'init-keybindings)
