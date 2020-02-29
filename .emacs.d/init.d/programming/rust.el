(local/package-install 'rust-mode)
(local/package-install 'cargo)
(local/package-install 'racer)
(local/package-install 'flycheck-rust)

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
