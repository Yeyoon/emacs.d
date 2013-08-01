(require-package 'php-mode)
(require-package 'smarty-mode)

(paredit-mode)
(add-auto-mode
 'php-mode
 (concat "\\."
         (regexp-opt
          '("php" "php.example" "inc"))
         "\\'"))
(provide 'init-php)
