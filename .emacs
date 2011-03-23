;;show time
(display-time)
;;show line and column number
(line-number-mode t)
(column-number-mode t)
(tool-bar-mode nil)
(show-paren-mode t)
(set-scroll-bar-mode nil)
(setq make-backup-files nil)

;; set default font and size
(set-face-attribute 'default nil :family "YaHei Consolas Hybrid"
                                 :height 120)

;; start emacs as a server
(server-start)

;; w3m
(require 'w3m-load)

;; color-theme
(require 'color-theme)
(color-theme-initialize)
(color-theme-taming-mr-arneson)

;; auctex
(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)

;; emms
(require 'emms-setup)
(emms-standard)
(emms-default-players)
