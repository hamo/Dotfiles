(use-package projectile
  :delight '(:eval (format " Prjl[%s]" (projectile-project-name)))
  :init
  (progn
    (projectile-global-mode))
  :config
  (progn
    (setq projectile-enable-caching t))
)

(use-package magit
  :config
  (progn
    (setq magit-last-seen-setup-instructions "1.4.0"))
  )
