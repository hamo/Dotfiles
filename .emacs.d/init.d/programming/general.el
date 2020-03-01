(use-package idle-highlight-mode
  :init
  (progn
    (add-hook 'prog-mode-hook 'idle-highlight-mode)))

(use-package flycheck
  :init
  (progn
    (add-hook 'after-init-hook #'global-flycheck-mode)))

(defun highlight-font-lock-comment-annotations ()
  "Highlight a bunch of well known comment annotations."
  (font-lock-add-keywords
   nil '(("\\<\\(\\(FIX\\(ME\\)?\\|TODO\\|OPTIMIZE\\|HACK\\|REFACTOR\\):\\)"
          1 font-lock-warning-face t))))
(add-hook 'prog-mode-hook 'highlight-font-lock-comment-annotations)

(use-package rainbow-delimiters
  :init
  (add-hook 'prog-mode-hook 'rainbow-delimiters-mode))

(add-hook 'prog-mode-hook (lambda ()
			    (setq show-trailing-whitespace t)
			    (electric-indent-mode 1)))

(use-package helm-gtags
  :init
  (setq
   helm-gtags-ignore-case t
   helm-gtags-auto-update t
   helm-gtags-use-input-at-cursor t
   helm-gtags-pulse-at-cursor t
   helm-gtags-path-style 'root
   )
  )

;;; common Language Server Protocol (lsp) Support
(load "~/.emacs.d/init.d/programming/lsp.el")

;;; language specified config
(load "~/.emacs.d/init.d/programming/lisp.el")
(load "~/.emacs.d/init.d/programming/c-family.el")
(load "~/.emacs.d/init.d/programming/go.el")
(load "~/.emacs.d/init.d/programming/python.el")
(load "~/.emacs.d/init.d/programming/clojure.el")
(load "~/.emacs.d/init.d/programming/rust.el")
(load "~/.emacs.d/init.d/programming/web.el")
(load "~/.emacs.d/init.d/programming/javascript.el")
(load "~/.emacs.d/init.d/programming/misc.el")
