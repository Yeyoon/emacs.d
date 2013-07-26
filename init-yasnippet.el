(require 'yasnippet)
(yas--initialize)
(setq yas/prompt-functions '(yas/ido-prompt))
(yas-global-mode 1)
(setq yas-snippet-dirs
      '("~/.emacs.d/snippets" ;; personal snippets
        ))
(provide 'init-yasnippet)
