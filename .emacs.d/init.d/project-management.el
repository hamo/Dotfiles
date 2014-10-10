(local/package-install 'projectile)
(use-package projectile
  :diminish "Prjl"
  :init
  (progn
    (projectile-global-mode))
  :config
  (progn
    (setq projectile-enable-caching t))
)

(local/package-install 'magit)
(use-package magit
  :diminish magit-auto-revert-mode)
