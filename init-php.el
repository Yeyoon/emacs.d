(require-package 'php-mode)
(require-package 'smarty-mode)
(require-package 'flymake-php)

(add-hook 'php-mode-hook 'flymake-php-load)

(global-set-key (kbd "TAB") 'auto-complete)

(setq ruby-deep-indent-paren nil)
(provide 'init-php)
