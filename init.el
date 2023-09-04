(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;Se precisar mudar esse arquivo pra um outro emacs, parece que é só usar:
; M-x package-install-selected-packages. que ele instala tudo sozinho
(add-hook 'after-init-hook
	  (lambda ()
	    (load-theme 'tango-dark)))
(setq inhibit-startup-screen t)

(tool-bar-mode -1)
(scroll-bar-mode -1)
(ivy-mode)
(projectile-mode +1)
(cider-mode)
(fset 'display-startup-echo-area-message 'ignore)
(setq make-backup-files nil)
(setq auto-save-default nil)

;; Recommended keymap prefix on macOS
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(ripgrep ag lsp-mode cider ivy projectile)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-hook 'clojure-mode-hook 'lsp)
(add-hook 'clojurescript-mode-hook 'lsp)
(add-hook 'clojurec-mode-hook 'lsp)
