(use-package projectile
  :delight '(:eval (format " Prjl[%s]" (projectile-project-name)))
  :init
  (progn
    (projectile-global-mode))
  :config
  (progn
    (setq projectile-enable-caching t)))
(use-package treemacs-projectile
  :after (treemacs projectile)
  :ensure t)
(use-package helm-projectile
  :after (helm projectile)
  :ensure t)

(use-package magit
  :config
  (progn
    (setq magit-last-seen-setup-instructions "1.4.0")))
(use-package treemacs-magit
  :after (treemacs magit)
  :ensure t)
