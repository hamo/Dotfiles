(local/package-install 'go-mode)
(local/package-install 'go-eldoc)
(local/package-install 'go-guru)

(use-package go-mode
  :hook ((go-mode . lsp))
  :init
  (progn
    (add-hook 'go-mode-hook (lambda ()
			      (go-eldoc-setup)
			      (go-guru-hl-identifier-mode)))
    (add-hook 'before-save-hook 'gofmt-before-save)))
