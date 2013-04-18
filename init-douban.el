(require 'douban-fm)

(global-set-key (kbd "M-[") 'douban-fm-play)
(global-set-key (kbd "M-]") 'douban-fm-pause)
(global-set-key (kbd "C-c C-k") 'douban-fm-stop)

(provide 'init-douban)
