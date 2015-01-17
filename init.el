; (load-theme 'solarized-dark t)

(prelude-mode 1)
(ido-mode 1)

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(global-set-key (kbd "C-x f") 'find-file-in-project)

(smex-initialize)
; (global-set-key (kbd "M-x") 'smex)
; (global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
; (global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(global-set-key (kbd "M-x") 'helm-M-x)

;(define-key evil-normal-state-map (kbd "M-x") 'helm-M-x)
;(define-key evil-insert-state-map (kbd "M-x") 'helm-M-x)
;(define-key evil-motion-state-map (kbd "M-x") 'helm-M-x)

(autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
(add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
(add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
(add-hook 'ielm-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
(add-hook 'scheme-mode-hook           #'enable-paredit-mode)
(add-hook 'clojure-mode-hook          #'enable-paredit-mode)

; enable markdown-mode for markdownish files
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
