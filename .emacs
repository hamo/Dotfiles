;;; .emacs --- init
;;; Commentary:
;;; Code:

;; Enable ELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)
(setq package-enable-at-startup nil)

(setq user-full-name "Yang Bai"
      user-mail-address "hamo.by@gmail.com")

(defun local/package-install (package &optional repository)
  "Install PACKAGE if it has not yet been installed.
If REPOSITORY is specified, use that."
  (when (not package-archive-contents)
    (package-refresh-contents))
  (unless (package-installed-p package)
    (let ((package-archives (if repository
                                (list (assoc repository package-archives))
                              package-archives)))
      (package-install package))))

(local/package-install 'use-package)
(require 'use-package)

(load "~/.emacs.d/init.d/basic.el")
(load "~/.emacs.d/init.d/ui.el")
(load "~/.emacs.d/init.d/completion.el")
(load "~/.emacs.d/init.d/modes.el")
(load "~/.emacs.d/init.d/misc.el")

(load "~/.emacs.d/init.d/programming/general.el")
(load "~/.emacs.d/init.d/programming/go.el")
(load "~/.emacs.d/init.d/programming/clojure.el")
(load "~/.emacs.d/init.d/programming/scala.el")
(load "~/.emacs.d/init.d/programming/misc.el")

;;; FIXME: move it to module or remove it
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

(provide '.emacs)
;;; .emacs ends here
