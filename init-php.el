(require-package 'php-mode)
(require-package 'smarty-mode)
(require-package 'flymake-php)

(add-hook 'php-mode-hook 'flymake-php-load)
(global-set-key (kbd "C-c h") 'php-search-documentation)

(add-auto-mode
 'php-mode
 (concat "\\."
         (regexp-opt
          '("php" "php.example" "inc"))
         "\\'"))

(defun browse-url-in-other-window (url &optional newwin)
  "Open url in other window"
  (message "Opening PHP online manual...")
  (let ((pop-up-windows t))
    (if (one-window-p) (split-window-sensibly (frame-selected-window)))
    (other-window 1)
    (w3m-browse-url url newwin)))

(setq browse-url-browser-function 'browse-url-in-other-window)

(provide 'init-php)
