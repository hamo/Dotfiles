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
