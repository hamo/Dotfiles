(local/package-install 'cargo)

(use-package rust-mode
  :init
  (progn
    (add-hook 'rust-mode-hook 'cargo-minor-mode))
  :config
  (setq
   rust-format-on-save t
   ))

(use-package racer
  :init
  (progn
    (add-hook 'rust-mode-hook 'racer-mode)
    (add-hook 'racer-mode-hook 'eldoc-mode)))

(use-package flycheck-rust
  :config
  (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))
