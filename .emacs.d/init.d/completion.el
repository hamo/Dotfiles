;;; helm
(local/package-install 'helm)
(local/package-install 'helm-projectile)
(use-package helm
  :init
  (progn
    (require 'helm-config)
    ;; From https://gist.github.com/antifuchs/9238468
    (setq helm-idle-delay 0.0 ; update fast sources immediately (doesn't).
          helm-input-idle-delay 0.01  ; this actually updates things
					; reeeelatively quickly.
          helm-quick-update t
          helm-M-x-requires-pattern nil
          helm-ff-skip-boring-files t)
    (helm-mode))
  :config
  (progn
    (define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action))
  :bind
  (("M-x" . helm-M-x)))
(ido-mode -1) ;; Turn off ido mode in case I enabled it accidentally
(setq ido-enable-flex-matching t)

;;; yasnippet
;;; should be loaded before auto complete so that they can work together
(local/package-install 'yasnippet)
(use-package yasnippet
  :init
  (progn
    (yas-global-mode 1)))

;;; auto complete
;;; should be loaded after yasnippet so that they can work together
(local/package-install 'auto-complete)
(use-package auto-complete
  :init
  (progn
    (require 'auto-complete-config))
  :config
  (progn
    (ac-config-default)
    (global-auto-complete-mode t)
    (setq ac-auto-start t)
    ;;; set the trigger key so that it can work together with yasnippet on tab key,
    ;;; if the word exists in yasnippet, pressing tab will cause yasnippet to
    ;;; activate, otherwise, auto-complete will
    (ac-set-trigger-key "TAB")
    (ac-set-trigger-key "<tab>")))
