;;show time
(display-time)
;;show line and column number
(line-number-mode t)
(column-number-mode t)
(tool-bar-mode 0)
(show-paren-mode t)
(scroll-bar-mode 0)
(setq make-backup-files 0)

;; set default font and size
(set-face-attribute 'default  0  :family "YaHei Consolas Hybrid"
                                 :height 120)

;; start emacs as a server
(server-start)

;; color-theme
(color-theme-initialize)
(color-theme-taming-mr-arneson)
