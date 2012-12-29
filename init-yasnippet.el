;; YASnippet
(require 'yasnippet)
(setq yas/trigger-key (kbd "C-c <kp-multiply>"))
(yas/initialize)

(setq yas/root-directory '("~/.emacs.d/elpa/yasnippet-20121217.359/snippets"))
(mapc 'yas/load-directory yas/root-directory)

(provide 'init-yasnippet)
