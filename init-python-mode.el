(autoload 'doctest-mode "doctest-mode" "Python doctest editing mode." t)

(setq auto-mode-alist
      (append '(("\\.py$" . python-mode)
		("SConstruct$" . python-mode)
		("SConscript$" . python-mode))
              auto-mode-alist))

(setq interpreter-mode-alist
      (cons '("python" . python-mode) interpreter-mode-alist))


;;----------------------------------------------------------------------------
;; On-the-fly syntax checking via flymake
;;----------------------------------------------------------------------------
(eval-after-load 'python
  '(require 'flymake-python-pyflakes))

(add-hook 'python-mode-hook 'flymake-python-pyflakes-load)

;;----------------------------------------------------------------------------
;; pylookup is used to view documents of python
;;----------------------------------------------------------------------------
(eval-when-compile (require 'pylookup))
(setq pylookup-root "~/.emacs.d/site-lisp/pylookup")
(setq pylookup-program (concat pylookup-root "/pylookup.py"))
(setq pylookup-db-file (concat pylookup-root "/pylookup.db"))
(autoload 'pylookup-lookup "pylookup"
  "Lookup SEARCH-TERM in the Python html indexes." t)
(autoload 'pylookup-update "pylookup"
  "Run pylookup-update and create the database at `pylookup-db-file'." t)

(global-set-key (kbd "C-c h") 'pylookup-lookup)
(global-set-key (kbd "C-c u") 'pylookup-update)

(provide 'init-python-mode)
