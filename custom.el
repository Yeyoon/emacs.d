(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(LaTeX-command "pdflatex")
 '(custom-safe-themes (quote ("4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" default)))
 '(gud-gdb-command-name "gdb --annotate=1")
 '(large-file-warning-threshold nil)
 '(session-use-package t nil (session)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(flymake-errline ((t (:background "blue" :foreground "brightwhite"))))
 '(font-lock-comment-delimiter-face ((t (:inherit font-lock-comment-face))))
 '(font-lock-comment-face ((t (:foreground "#00AADD"))))
 '(font-lock-constant-face ((t (:foreground "brightred"))))
 '(font-lock-doc-face ((t (:inherit font-lock-string-face :foreground "blue"))))
 '(font-lock-function-name-face ((t (:foreground "brightblue"))))
 '(font-lock-keyword-face ((t (:foreground "brightyellow")))))
;; disable bell alert
(setq ring-bell-function 'ignore)

;; recode-region
(defun recode-region (start end &optional coding-system)
  "Replace the region with a recoded text."
  (interactive "r\n\zCoding System (utf-8): ")
  (setq coding-system (or coding-system 'utf-8))
  (let ((buffer-read-only nil)
        (text (buffer-substring start end)))
    (delete-region start end)
    (insert (decode-coding-string (string-make-unibyte text) coding-system))))

;; key-bindings
(global-set-key (kbd "C-/") 'undo)

;; truncate line
(toggle-truncate-lines)

;; custom mode line
;; mode line
(set-face-background 'mode-line-inactive "#222222")
(set-face-foreground 'mode-line-inactive "#CCCCCC")
(set-face-background 'mode-line "#FFFFFF")
(set-face-foreground 'mode-line "#003300")

;; region background
(set-face-background 'region "#444444")

;; Weather Report --------------------------------------------------
;; this api key is owned by Lei Wang (blueabysm@gmail.com)
;; (require 'weather)
;; (setq weather-key "b0fb853ab7071518122006")

;; save places -----------------------------------------------------
(setq save-place-file "~/.saveplace")
(setq-default save-place t)
(require 'saveplace)

;; disable menu bar ------------------------------------------------
;; (menu-bar-mode 0)

;; function arguments indention
(defun set-argument-indentation-style ()
  (c-set-offset 'arglist-intro '+))
(add-hook 'c-mode 'set-argument-indentation-style)

;; ruby arguments indentation
(setq ruby-deep-indent-paren nil)

;; objective C
(add-to-list 'magic-mode-alist '("\\(.\\|\n\\)*\n@implementation" . objc-mode))
(add-to-list 'magic-mode-alist '("\\(.\\|\n\\)*\n@interface" . objc-mode))
(add-to-list 'magic-mode-alist '("\\(.\\|\n\\)*\n@protocol" . objc-mode))
