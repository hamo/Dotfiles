;;show time
(display-time)
;;show line and column number
(line-number-mode t)
(column-number-mode t)
(tool-bar-mode nil)
(show-paren-mode t)
(set-scroll-bar-mode nil)
(setq make-backup-files nil)

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
