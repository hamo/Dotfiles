;;show time
(display-time)
;;show line and column number
(line-number-mode t)
(column-number-mode t)
(tool-bar-mode 0)
(show-paren-mode t)
(scroll-bar-mode 0)
(setq make-backup-files nil)

;; set default font and size
(set-face-attribute 'default  0  :family "YaHei Consolas Hybrid"
                                 :height 120)

;; start emacs as a server
(server-start)

;; color-theme
(color-theme-initialize)
(color-theme-taming-mr-arneson)

;; ERC
;;;;erc notify send;;;;;
(require 'notifications)
(defun erc-global-notify (match-type nick message)
  "Notify when a message is recieved."
  (notifications-notify
    :body message
    :title (car (split-string nick "!"))
    :urgency 'normal))
(add-hook 'erc-text-matched-hook 'erc-global-notify)
;;;;;erc kick auto-rejoin;;;;;
(defun auto-rejoin(buffer)
  (let ((bn (buffer-name buffer)))
    (run-at-time "0.1 sec" nil	
		 (lambda (bn) (set-buffer bn) (erc-join-channel bn)) bn)))
(add-hook 'erc-kick-hook 'auto-rejoin)
