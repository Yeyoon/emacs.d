;; YASnippet
(require 'yasnippet)
(yas-global-mode 1)
(require 'dropdown-list)
(setq yas/prompt-functions '(yas/ido-prompt
                             yas/dropdown-prompt
                             yas/completing-prompt))
(provide 'init-yasnippet)
