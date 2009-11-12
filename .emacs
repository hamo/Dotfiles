;;显示时间
(display-time)
;;显示行号
(line-number-mode t)
(column-number-mode t)
(show-paren-mode t)
;;设置TAB宽度为4
(setq default-tab-width 4) 
;;以下设置缩进 
(setq c-indent-level 4)
(setq c-continued-statement-offset 4)
(setq c-brace-offset -4)
(setq c-argdecl-indent 4)
(setq c-label-offset -4)
(setq c-basic-offset 4)
(global-set-key "\C-m" 'reindent-then-newline-and-indent)
(setq indent-tabs-mode nil)
(setq standard-indent 4)

;;开启语法高亮。
(global-font-lock-mode 1) 

;; 去掉滚动条
(set-scroll-bar-mode nil)

;;关闭开启画面
(setq inhibit-startup-message t) 

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

