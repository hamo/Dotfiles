;;show time
(display-time)
;;show line and column number
(line-number-mode t)
(column-number-mode t)

(show-paren-mode t)

;; 去掉滚动条
(set-scroll-bar-mode nil)

;;不产生备份文件
(setq make-backup-files nil)

;; Load CEDET
(load-file "/usr/share/emacs/site-lisp/cedet/common/cedet.el")
;; ecb
(add-to-list 'load-path "/usr/share/emacs/site-lisp/ecb")
(require 'ecb)

;; emacs-python-mode
(autoload 'python-mode "python-mode.el" "Python mode." t)
(setq auto-mode-alist (append '(("/*.\.py$" . python-mode)) auto-mode-alist))
