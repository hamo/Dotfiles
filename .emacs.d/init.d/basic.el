(setq make-backup-files nil)
(setq require-final-newline t)
(global-auto-revert-mode t)

(setq x-select-enable-clipboard t)

;;; MAXIMUM BUFFER HIGHLIGHTING.
(defconst font-lock-maximum-decoration t)

;;; Auto decompress compressed files
(auto-compression-mode 1)

;;; replace highlighted text with what I type rather than just inserting at point
(delete-selection-mode t)

;;; start emacs as a server
(require 'server)
(or (server-running-p)
    (server-start))
