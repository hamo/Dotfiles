(use-package lsp-mode
  :hook (
         (lsp-mode . lsp-enable-which-key-integration))
  :config (setq lsp-completion-provider :capf)
  :commands lsp)

(use-package lsp-ui :commands lsp-ui-mode)
(use-package helm-lsp :commands helm-lsp-workspace-symbol)
(use-package lsp-treemacs :commands lsp-treemacs-errors-list)

(use-package dap-mode)
;; (use-package dap-LANGUAGE) to load the dap adapter for your language
