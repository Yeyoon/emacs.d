(add-hook 'php-mode-hook 'flymake-php-load)

(autoload 'smarty-mode "smarty-mode" "Smarty Mode" t)
(add-auto-mode 'smarty-mode "\\.tpl\\'")

(global-set-key (kbd "TAB") 'auto-complete)

(setq ruby-deep-indent-paren nil)
(provide 'init-php)
