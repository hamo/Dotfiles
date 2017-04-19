(local/package-install 'elpy)
(local/package-install 'py-autopep8)

(add-hook 'python-mode-hook
          '(lambda ()
             (setq indent-tabs-mode nil)
             (setq tab-width 4)
             (setq py-indent-offset tab-width)
             (setq py-smart-indentation t)
             ))

(use-package elpy
  :ensure t
  :init
  (progn
    (elpy-enable))
  :config
  (progn
    (defalias 'workon 'pyvenv-workon)
    (add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)))
