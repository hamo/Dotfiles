(local/package-install 'rust-mode)
(local/package-install 'cargo)
(local/package-install 'racer)

(use-package rust-mode
  :init
  (progn
    (add-hook 'rust-mode-hook 'cargo-minor-mode)))

(use-package racer
  :init
  (progn
    (add-hook 'rust-mode-hook 'racer-mode)
    (add-hook 'racer-mode-hook 'eldoc-mode))
  :config
  (progn
    ;; (setq racer-cmd "~/.cargo/bin/racer") ;; Rustup binaries PATH
    (setq racer-rust-src-path "~/workspace/rust/rust-lang/src") ;; Rust source code PATH
    ))
