;;; .emacs -- init
;;; Commentary:
;;; Code:

;; Enable ELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)

;; auto install packages from ELPA if not installed
(when (not package-archive-contents)
  (package-refresh-contents))
(defvar my-packages
  '(helm
    color-theme-solarized
    auto-complete
    go-mode
    go-autocomplete
    auto-complete-clang-async
    markdown-mode
    clojure-mode
    cider
    scala-mode2
    sbt-mode
    ensime
    dockerfile-mode
    flycheck
    magit
    undo-tree
    )
  "A list of packages to ensure are installed at launch."
  )
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)
    ))

;; add ~/.emacs.d/lisp/ and its subdirs to load-path
(let ((default-directory "~/.emacs.d/lisp/"))
  (normal-top-level-add-subdirs-to-load-path))

;; show time
(setq display-time-day-and-date t)
(setq display-time-24hr-format t)
(display-time)

;; UI
(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)

(show-paren-mode t)
(setq make-backup-files nil)
(display-battery-mode t)

(fset 'yes-or-no-p 'y-or-n-p)

;; MAXIMUM BUFFER HIGHLIGHTING.
(defconst font-lock-maximum-decoration t)

;; Auto decompress compressed files
(auto-compression-mode 1)
;; replace highlighted text with what I type rather than just inserting at point
(delete-selection-mode t)

;; set default font and size
(set-face-attribute 'default  0  :family "YaHei Consolas Hybrid"
                    :height 120)

;; start emacs as a server
(server-start)

;; color-theme
(load-theme 'solarized-dark t)

;; ERC
;;;; erc notify send
(require 'notifications)
(defun erc-global-notify (match-type nick message)
  "Notify when a message is recieved."
  (notifications-notify
   :body message
   :title (car (split-string nick "!"))
   :urgency 'normal))
(add-hook 'erc-text-matched-hook 'erc-global-notify)
;;;; erc kick auto-rejoin
(defun auto-rejoin(buffer)
  (let ((bn (buffer-name buffer)))
    (run-at-time "0.1 sec" nil
		 (lambda (bn) (set-buffer bn) (erc-join-channel bn)) bn)))
(add-hook 'erc-kick-hook 'auto-rejoin)

;; auto-complete
(require 'auto-complete-config)
(ac-config-default)
;;;; Golang complete
(require 'go-autocomplete)
;;;; auto-complete-clang-async
(require 'auto-complete-clang-async)
(defun ac-cc-mode-setup ()
  (setq ac-sources (append '(ac-source-clang-async) ac-sources))
  (ac-clang-launch-completion-process)
)
(defun my-ac-config ()
  (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
  (add-hook 'auto-complete-mode-hook 'ac-common-setup)
  (global-auto-complete-mode t))
(my-ac-config)

;; flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

;; undo-tree
(require 'undo-tree)
(global-undo-tree-mode)
(setq undo-tree-auto-save-history t)
(setq undo-tree-history-directory-alist `(("." . ,(concat user-emacs-directory "undo"))))
(defadvice undo-tree-make-history-save-file-name
  (after undo-tree activate)
  (setq ad-return-value (concat ad-return-value ".gz")))

(helm-mode 1)

(custom-set-variables
  '(helm-completing-read-handlers-alist (quote ((find-file . ido) (find-file-read-only . ido) (find-alternate-file . ido))))
)

(provide '.emacs)
;;; .emacs ends here
