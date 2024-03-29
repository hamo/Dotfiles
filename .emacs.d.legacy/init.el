;;; .emacs --- init
;;; Commentary:
;;; Code:

;; Enable package
(require 'package)
(setq package-archives '(("gnu"          . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa"        . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
                         ("melpa-stable" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/stable-melpa/")
                         ("org"          . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")))
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
(setq use-package-always-ensure t)
(setq use-package-verbose t)
(setq use-package-compute-statistics t)

(load "~/.emacs.d/init.d/basic.el")
(load "~/.emacs.d/init.d/ui.el")
(load "~/.emacs.d/init.d/project-management.el")
(load "~/.emacs.d/init.d/completion.el")
(load "~/.emacs.d/init.d/modes.el")
(load "~/.emacs.d/init.d/misc.el")

(load "~/.emacs.d/init.d/programming/general.el")

(provide '.emacs)
;;; .emacs ends here
