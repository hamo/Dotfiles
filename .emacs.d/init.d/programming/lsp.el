(use-package lsp-mode
  :hook (
         (lsp-mode . lsp-enable-which-key-integration))
  :config (require 'lsp-clients)
  :commands lsp)

(use-package lsp-ui :commands lsp-ui-mode)
(use-package company-lsp
  :commands company-lsp
  :config
  (push 'company-lsp company-backends))

(use-package helm-lsp :commands helm-lsp-workspace-symbol)

(use-package dap-mode)
;; (use-package dap-LANGUAGE) to load the dap adapter for your language
