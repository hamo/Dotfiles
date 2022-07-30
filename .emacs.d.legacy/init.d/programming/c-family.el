(local/package-install 'company-c-headers)

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

(require 'cc-mode)
(add-hook 'c-mode-hook (lambda ()
			 (setq-default indent-tabs-mode nil)
			 (set (make-local-variable 'company-backends) '(company-c-headers company-clang company-yasnippet))))

(add-hook 'c++-mode-hook (lambda ()
			   (setq-default indent-tabs-mode nil)
			   (set (make-local-variable 'company-backends) '(company-c-headers company-clang company-yasnippet))))

(add-hook 'java-mode-hook (lambda ()
			   (setq-default indent-tabs-mode nil)))
