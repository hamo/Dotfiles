(local/package-install 'go-mode)
(local/package-install 'go-eldoc)
(local/package-install 'company-go)

(use-package go-mode
  :init
  (progn
    (add-hook 'go-mode-hook (lambda ()
			      (go-eldoc-setup)
			      (set (make-local-variable 'company-backends) '(company-go company-yasnippet))))
    (add-hook 'before-save-hook 'gofmt-before-save)))
