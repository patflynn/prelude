;;; emacs_custom.el --- Personalized customizations to prelude.
;;

;; This file is not part of GNU Emacs.

;;; Commentary:

;; Apparently I need some comments here.

;;; Code:

(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'super)

(prelude-require-packages '(ujelly-theme flymake-cursor flycheck company company-go))

(load-theme 'ujelly t)

(setq prelude-whitespace nil)

(setq prelude-flyspell nil)

(setq flymake-run-in-place nil)

(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)


(require 'company)                                   ; load company mode
(require 'company-go)                                ; load company mode go backend
(setq company-tooltip-limit 20)                      ; bigger popup window
(setq company-minimum-prefix-length 0)               ; autocomplete right after '.'
(setq company-idle-delay .3)                         ; shorter delay before autocompletion popup

;; Better company mode colors.
(custom-set-faces
 '(company-preview
   ((t (:foreground "darkgray" :underline t))))
 '(company-preview-common
   ((t (:inherit company-preview))))
 '(company-tooltip
   ((t (:background "lightgray" :foreground "black"))))
 '(company-tooltip-selection
   ((t (:background "steelblue" :foreground "white"))))
 '(company-tooltip-common
   ((((type x)) (:inherit company-tooltip :weight bold))
    (t (:inherit company-tooltip))))
 '(company-tooltip-common-selection
   ((((type x)) (:inherit company-tooltip-selection :weight bold))
    (t (:inherit company-tooltip-selection)))))

;;; emacs_custom.el ends here

