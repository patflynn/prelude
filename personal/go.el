;;; go.el --- setup golang specific customizations.

;;; Commentary:

;;; Code:
(setq gofmt-command "goimports")
(add-to-list 'load-path "/home/sid/go/misc/emacs/")
(add-hook 'before-save-hook 'gofmt-before-save)
(add-hook 'go-mode-hook (lambda ()
                          (local-set-key (kbd "M-.") #'godef-jump)))
(add-hook 'after-init-hook #'global-flycheck-mode)
;;(add-to-list 'load-path "~/gocode/src/github.com/dougm/goflymake")
(setq flymake-log-level 3)
;;(setq goflymake-debug 'true)
;;(require 'go-flycheck)

;;(require 'flymake-cursor)

;;; go.el ends here

