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
 '(font-lock-builtin-face ((t (:foreground "yellow"))))
 '(font-lock-comment-delimiter-face ((t nil)))
 '(font-lock-comment-face ((t (:foreground "controlShadowColor"))))
 '(font-lock-constant-face ((t (:foreground "purple4"))))
 '(font-lock-doc-face ((t (:inherit font-lock-string-face :foreground "blue"))))
 '(font-lock-function-name-face ((t (:foreground "color-129"))))
 '(font-lock-keyword-face ((t (:foreground "blue"))))
 '(font-lock-string-face ((t (:foreground "color-202"))))
 '(font-lock-variable-name-face ((t (:foreground "brightred"))))
 '(message-header-subject ((t (:foreground "brightgreen" :weight bold))))
 '(message-header-to ((t (:foreground "brightblue" :weight bold))))
 '(region ((t (:background "#444444" :foreground "white")))))
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

;; truncate line
;; (toggle-truncate-lines)

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

(when *is-cocoa-emacs*
    (tool-bar-mode -1))

;; defadvice
(defadvice message (after message-tail activate)
  "goto point max after a message"
  (with-current-buffer "*Messages*"
    (goto-char (point-max))
    (walk-windows (lambda (window)
                    (if (string-equal (buffer-name (window-buffer window)) "*Messages*")
                        (set-window-point window (point-max))))
                  nil t)))
