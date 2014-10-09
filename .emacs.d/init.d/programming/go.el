(local/package-install 'go-mode)
(local/package-install 'go-autocomplete)
(local/package-install 'go-eldoc)

(use-package go-mode
  :init
  (progn
    (require 'go-autocomplete)
    (add-hook 'before-save-hook 'gofmt-before-save)
    (add-hook 'go-mode-hook 'go-eldoc-setup)))
