;; nginx mode
(add-to-list 'auto-mode-alist '("\\.nginx$" . nginx-mode))
(add-to-list 'auto-mode-alist '("nginx.conf$" . nginx-mode))

;; plist mode
(add-to-list 'auto-mode-alist '("\\.plist$" . nxml-mode))

;; php.example
(add-to-list 'auto-mode-alist '("\\.php.example$" . php-mode))

;; html mode for tpl
(add-to-list 'auto-mode-alist '("\\.tpl$" . html-mode))

;; css mode for pss
(add-to-list 'auto-mode-alist '("\\.pss$" . css-mode))

;; js3-mode mode for pjs
(add-to-list 'auto-mode-alist '("\\.pjs$" . js3-mode))

;; enable pretty mode
(require 'pretty-mode)
(global-pretty-mode 1)

(provide 'init-modes)