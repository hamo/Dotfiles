(local/package-install 'auto-complete-clang-async)

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

(require 'cc-mode)

(require 'auto-complete-clang-async)
(defun ac-cc-mode-setup ()
  (setq ac-sources (append '(ac-source-yasnippet ac-source-clang-async) ac-sources))
  (ac-clang-launch-completion-process)
)
(add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
