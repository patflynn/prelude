(require 'js2-mode)

;; (eval-after-load 'js2-mode
;;   '(progn
;;      (require 'js2-imenu-extras)
;;      (js2-imenu-extras-setup)))

(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
