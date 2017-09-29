(local/package-install 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(use-package web-mode
  :config
  (progn
    (setq indent-tabs-mode nil)
    (setq web-mode-markup-indent-offset 2
	  web-mode-css-indent-offset 2
	  web-mode-code-indent-offset 2)))

(local/package-install 'coffee-mode)

(local/package-install 'slim-mode)

(local/package-install 'php-mode)
(local/package-install 'company-php)
(use-package php-mode
  :config
  (progn
    (setq indent-tabs-mode nil)
    (setq c-basic-offset 2)
    (setq php-template-compatibility nil))
  :init
  (progn
    (subword-mode 1)
    (add-to-list 'company-backends 'company-ac-php-backend)
    ))
