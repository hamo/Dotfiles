(local/package-install 'projectile)
(use-package projectile
  :init
  (progn
    (projectile-global-mode))
  :config
  (progn
    (setq projectile-enable-caching t))
)

(local/package-install 'magit)
