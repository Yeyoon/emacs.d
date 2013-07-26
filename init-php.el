(require-package 'php-mode)
(require-package 'smarty-mode)
(require-package 'flymake-php)

(add-hook 'php-mode-hook 'flymake-php-load)

(paredit-mode)
(add-auto-mode
 'php-mode
 (concat "\\."
         (regexp-opt
          '("php" "php.example" "inc"))
         "\\'"))
(provide 'init-php)
