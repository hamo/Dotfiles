(when window-system
  (tooltip-mode -1)
  (tool-bar-mode -1)
  (menu-bar-mode -1)
  (scroll-bar-mode -1)
  ;; Start maximised (cross-platf)
  (add-hook 'window-setup-hook 'toggle-frame-maximized t))

;;; no startup messages
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)

;;; mode line format
(setq display-time-day-and-date t)
(setq display-time-24hr-format t)
(display-time)
(display-battery-mode t)
(column-number-mode 1)

;;; Hide modes I care less about
(use-package delight
  :init
  (progn
    (delight '((abbrev-mode " Abv" abbrev)
            (smart-tab-mode " \\t" smart-tab)
            (rainbow-mode)
            (overwrite-mode " Ov" t)
            (emacs-lisp-mode "Elisp" :major)
	    (visual-line-mode)))
    ))

; use the similiar functionality provided by smartparens
;(show-paren-mode t)
(fset 'yes-or-no-p 'y-or-n-p)

;;; set default font and size
(set-face-attribute 'default  0  :family "YaHei Consolas Hybrid"
                    :height 120)

;;; theme
;;; https://github.com/bbatsov/solarized-emacs
(local/package-install 'solarized-theme)
(setq x-underline-at-descent-line t)
(load-theme 'solarized-dark t)

;;; http://nyan-mode.buildsomethingamazing.com/
(use-package nyan-mode
  :if window-system
  :init
  (progn
    (nyan-mode 1))
  :config
  (progn
    (nyan-start-animation)))

;;; undo-tree
(use-package undo-tree
  :delight undo-tree-mode
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
