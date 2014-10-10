(local/package-install 'smartparens)
(use-package smartparens
  :config
  (progn
    (require 'smartparens-config)
    (smartparens-global-mode t)
    (show-smartparens-global-mode t)))
