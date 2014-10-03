(when window-system
  (tooltip-mode -1)
  (tool-bar-mode -1)
  (menu-bar-mode -1)
  (scroll-bar-mode -1))

;;; no startup messages
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)

;;; mode line format
(setq display-time-day-and-date t)
(setq display-time-24hr-format t)
(display-time)
(display-battery-mode t)
(column-number-mode 1)

;;; Hide minor modes I care less about
(require 'diminish)
(eval-after-load "undo-tree" '(diminish 'undo-tree-mode))
(eval-after-load "eldoc" '(diminish 'eldoc-mode))
(diminish 'visual-line-mode)

(show-paren-mode t)
(fset 'yes-or-no-p 'y-or-n-p)

;;; set default font and size
(set-face-attribute 'default  0  :family "YaHei Consolas Hybrid"
                    :height 120)

;;; theme
(local/package-install 'color-theme-solarized)
(load-theme 'solarized-dark t)

;;; undo-tree
(local/package-install 'undo-tree)
(use-package undo-tree
  :init
  (progn
    (global-undo-tree-mode)
    (setq undo-tree-visualizer-timestamps t)
    (setq undo-tree-visualizer-diff t)
    (setq undo-tree-auto-save-history t)
    (setq undo-tree-history-directory-alist `(("." . ,(concat user-emacs-directory "undo"))))))
(defadvice undo-tree-make-history-save-file-name
  (after undo-tree activate)
  (setq ad-return-value (concat ad-return-value ".gz")))
