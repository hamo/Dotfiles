;;; helm
(local/package-install 'helm)
(local/package-install 'helm-projectile)
(use-package helm
  :diminish helm-mode
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
  :diminish yas-minor-mode
  :init
  (progn
    (yas-global-mode 1)))

;;; company
;;; should be loaded after yasnippet so that they can work together
(local/package-install 'company)
(use-package company
  :diminish company-mode
  :init
  (progn
    (global-company-mode t))
  :config
  (progn
    (setq company-tooltip-limit 20) ; bigger popup window
    (setq company-idle-delay .3)    ; decrease delay before autocompletion popup shows
    (setq company-echo-delay 0)     ; remove annoying blinking

    (require 'color)
    (let ((bg (if window-system
		  (face-attribute 'default :background)
		  "black")))
      (custom-set-faces
       `(company-tooltip ((t (:inherit default :background ,(color-lighten-name bg 2)))))
       `(company-scrollbar-bg ((t (:background ,(color-lighten-name bg 10)))))
       `(company-scrollbar-fg ((t (:background ,(color-lighten-name bg 5)))))
       `(company-tooltip-selection ((t (:inherit font-lock-function-name-face))))
       `(company-tooltip-common ((t (:inherit font-lock-constant-face))))))))
