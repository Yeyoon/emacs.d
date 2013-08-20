(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "black" :foreground "gray84" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 130 :width normal :foundry "apple" :family "Monaco"))))
 '(flymake-errline ((t (:background "blue" :foreground "#fcfcfc"))))
 '(font-lock-builtin-face ((t (:foreground "DarkOrange1"))))
 '(font-lock-comment-delimiter-face ((t (:inherit font-lock-comment-face))))
 '(font-lock-comment-face ((t (:foreground "gray34"))))
 '(font-lock-constant-face ((t (:foreground "yellow1"))))
 '(font-lock-doc-face ((t (:inherit font-lock-string-face :foreground "purple1"))))
 '(font-lock-function-name-face ((t (:foreground "lime green"))))
 '(font-lock-keyword-face ((t (:foreground "RoyalBlue1"))))
 '(font-lock-string-face ((t (:foreground "SlateBlue1"))))
 '(region ((t (:background "#444444" :foreground "white")))))

;; mode line
(set-face-background 'mode-line-inactive "#222222")
(set-face-foreground 'mode-line-inactive "#CCCCCC")
(set-face-background 'mode-line "#FFFFFF")
(set-face-foreground 'mode-line "#003300")
(set-face-attribute 'mode-line nil :family "Monaco" :height 120 :weight 'normal)

;; region background
(set-face-background 'region "#444444")

;; disable truncate line in minibuffer
(setq resize-mini-windows t)
(setq max-mini-window-height 1)
(add-hook 'minibuffer-setup-hook
          (lambda () (setq truncate-lines nil)))

;; fullscreen after startup
(if window-system
    (progn
     (if (fboundp 'ns-toggle-screen)
         (ns-toggle-fullscreen))
     (set-frame-parameter nil 'alpha 90)))

(global-pretty-mode t)

(tool-bar-mode -1)

(provide 'init-look)
