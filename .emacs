;;show time
(display-time)
;;show line and column number
(line-number-mode t)
(column-number-mode t)
(tool-bar-mode nil)
(show-paren-mode t)
(set-scroll-bar-mode nil)
(setq make-backup-files nil)

(setq default-tab-width 4) 
(setq c-indent-level 4)
(setq c-continued-statement-offset 4)
(setq c-brace-offset -4)
(setq c-argdecl-indent 4)
(setq c-label-offset -4)
(setq c-basic-offset 4)
(global-set-key "\C-m" 'reindent-then-newline-and-indent)
(setq indent-tabs-mode nil)
(setq standard-indent 4)

;; w3m
(require 'w3m-load)

;; color-theme
(require 'color-theme)
(color-theme-initialize)
(color-theme-taming-mr-arneson)

;; Load CEDET
(load-file "/usr/share/emacs/site-lisp/cedet/common/cedet.el")
;; ecb
(add-to-list 'load-path "/usr/share/emacs/site-lisp/ecb")
(require 'ecb)

;; emacs-python-mode
(autoload 'python-mode "python-mode.el" "Python mode." t)
(setq auto-mode-alist (append '(("/*.\.py$" . python-mode)) auto-mode-alist))

;; emacs-haskell-mode
(autoload 'haskell-mode "haskell-mode.el" "Haskell mode." t)
(setq auto-mode-alist (append '(("/*.\.hs$" . haskell-mode)) auto-mode-alist))

;; auctex
(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)
