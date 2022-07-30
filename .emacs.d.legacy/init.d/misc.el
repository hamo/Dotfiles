(use-package smartparens
  :delight smartparens-mode
  :config
  (progn
    (require 'smartparens-config)
    (smartparens-global-mode t)
    (show-smartparens-global-mode t)))

(use-package which-key
  :delight
  :config
  (which-key-mode))
