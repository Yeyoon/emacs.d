(require 'w3m)

(setq browse-url-browser-function 'w3m-browse-url)
(global-set-key (kbd "C-c C-l") browse-url-browser-function)
(provide 'init-w3m)
