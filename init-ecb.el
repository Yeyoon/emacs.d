(add-to-list 'load-path "~/site-lisp/ecb")
(require 'ecb)

(global-set-key (kbd "C-x x") 'ecb-goto-window-edit1)
(ecb-byte-compile)

(provide 'init-ecb)
