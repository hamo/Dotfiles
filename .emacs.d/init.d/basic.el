(setq make-backup-files nil)
(setq require-final-newline t)
(global-auto-revert-mode t)
(setq visible-bell t)

(setq x-select-enable-clipboard t)

;;; MAXIMUM BUFFER HIGHLIGHTING.
(defconst font-lock-maximum-decoration t)

;;; Auto decompress compressed files
(auto-compression-mode 1)

;;; replace highlighted text with what I type rather than just inserting at point
(delete-selection-mode t)

;;; for Mac OS, read and set env from shell
(use-package exec-path-from-shell
  :if (memq window-system '(ns mac))
  :ensure t
  :config
  (setq exec-path-from-shell-arguments '("-l"))
  (setq exec-path-from-shell-variables '("PATH" "MANPATH" "GOROOT" "GOPATH"))
  (exec-path-from-shell-initialize))

;;; start emacs as a server
(require 'server)
(when (and (>= emacs-major-version 23)
	   (equal window-system 'w32))
  (defun server-ensure-safe-dir (dir) "Noop" t))
(or (server-running-p)
    (server-start))
