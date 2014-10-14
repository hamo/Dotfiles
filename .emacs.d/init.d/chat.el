(use-package erc
  :config
  (progn
    ;; https://www.gnu.org/software/emacs/manual/html_node/erc/Modules.html
    (setq erc-modules '(autojoin button completion fill irccontrols match
				 netsplit noncommands notify notifications
				 readonly ring services smiley spelling
				 stamp track)
	  erc-keywords nil
	  erc-prompt-for-nickserv-password t
	  erc-timestamp-format "%s "
	  erc-hide-timestamps t
	  erc-input-line-position 0
	  erc-auto-set-away nil
	  erc-insert-timestamp-function 'erc-insert-timestamp-left
	  erc-insert-away-timestamp-function 'erc-insert-timestamp-left
	  erc-echo-notice-always-hook '(erc-echo-notice-in-minibuffer)
	  erc-kill-queries-on-quit nil
	  erc-kill-server-buffer-on-quit t
	  erc-query-on-unjoined-chan-privmsg t
	  erc-auto-query 'window-noselect)

    (add-hook 'erc-mode-hook
	      '(lambda ()
		 (require 'notifications)
		 (turn-on-eldoc-mode)
		 (auto-fill-mode 1)
		 (pcomplete-erc-setup)
		 (setq pcomplete-ignore-case t)
		 (setq completion-ignore-case t)
		 (erc-completion-mode 1)
		 (erc-ring-mode 1)
		 (erc-netsplit-mode 1)
		 (erc-button-mode -1)
		 (erc-match-mode 1)
		 (erc-autojoin-mode 1)
		 (erc-nickserv-mode 1)
		 (erc-timestamp-mode 1)
		 (erc-services-mode 1)))))

(local/package-install 'weechat)
;; https://github.com/the-kenny/weechat.el
(setq weechat-modules '(weechat-complete weechat-notifications weechat-tracking weechat-smiley))
(use-package weechat)
