;;; helm
(local/package-install 'helm)
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
    (add-to-list 'helm-completing-read-handlers-alist '(find-file . ido))
    (add-to-list 'helm-completing-read-handlers-alist '(find-file-read-only . ido))
    (add-to-list 'helm-completing-read-handlers-alist '(find-alternate-file . ido))))
(ido-mode -1) ;; Turn off ido mode in case I enabled it accidentally
(setq ido-enable-flex-matching t)

(local/package-install 'company)
(use-package company
  :init
  (progn
    (add-hook 'after-init-hook 'global-company-mode))
  :config
  (progn
    (setq company-tooltip-limit 20)                      ; bigger popup window
    (setq company-idle-delay .3)                         ; decrease delay before autocompletion popup shows
    (setq company-echo-delay 0)                          ; remove annoying blinking
    (setq company-begin-commands '(self-insert-command)) ; start autocompletion only after typing

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
