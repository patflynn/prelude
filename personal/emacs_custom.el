;;; emacs_custom.el --- Personalized customizations to prelude.
;;

;; This file is not part of GNU Emacs.

;;; Commentary:

;; Apparently I need some comments here.

;;; Code:

(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'super)

(prelude-require-packages '(ujelly-theme flymake-cursor flycheck))

(load-theme 'ujelly t)

(setq prelude-whitespace nil)

(setq prelude-flyspell nil)

(setq flymake-run-in-place nil)
;;; emacs_custom.el ends here
