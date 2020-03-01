(local/package-install 'cargo)

(use-package rust-mode
  :config
  (setq
   rust-format-on-save t
   )
  :hook
  (rust-mode . lsp)
  (rust-mode . cargo-minor-mode))

(use-package flycheck-rust
  :config
  (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))
