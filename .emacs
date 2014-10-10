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
(load "~/.emacs.d/init.d/project-management.el")
(load "~/.emacs.d/init.d/completion.el")
(load "~/.emacs.d/init.d/modes.el")
(load "~/.emacs.d/init.d/misc.el")

(load "~/.emacs.d/init.d/programming/general.el")
(load "~/.emacs.d/init.d/programming/lisp.el")
(load "~/.emacs.d/init.d/programming/c-family.el")
(load "~/.emacs.d/init.d/programming/go.el")
(load "~/.emacs.d/init.d/programming/clojure.el")
(load "~/.emacs.d/init.d/programming/scala.el")
(load "~/.emacs.d/init.d/programming/misc.el")

(provide '.emacs)
;;; .emacs ends here
