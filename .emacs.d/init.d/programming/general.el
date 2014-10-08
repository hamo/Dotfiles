(local/package-install 'idle-highlight-mode)
(use-package idle-highlight-mode
  :init
  (progn
    (add-hook 'prog-mode-hook 'idle-highlight-mode)))

(local/package-install 'flycheck)
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

;;; Semantic
(require 'semantic)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-scheduler-mode)
(add-to-list 'semantic-default-submodes 'global-semanticdb-minor-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-summary-mode)
