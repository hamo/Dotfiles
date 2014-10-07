(local/package-install 'go-mode)
(local/package-install 'company-go)
(local/package-install 'go-eldoc)

(use-package go-mode
  :init
  (progn
    (add-hook 'before-save-hook 'gofmt-before-save)
    (add-hook 'go-mode-hook 'go-eldoc-setup)
    (add-hook 'go-mode-hook (lambda ()
      (set (make-local-variable 'company-backends) '(company-go))))))
