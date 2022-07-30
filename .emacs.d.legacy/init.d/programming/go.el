(use-package go-mode
  :hook ((go-mode . lsp-deferred))
  :init
  (progn
    (add-hook 'before-save-hook #'lsp-format-buffer t t)
    (add-hook 'before-save-hook #'lsp-organize-imports t t)))
