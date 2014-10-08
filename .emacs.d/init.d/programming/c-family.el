(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

(require 'cc-mode)
(add-hook 'c-mode-common-hook (lambda ()
				(semantic-mode t)))

(local/package-install 'company-c-headers)
(add-to-list 'company-backends 'company-c-headers)
