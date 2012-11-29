;; General Settings

(setq inhibit-startup-message t)
(setq make-backup-files nil)

;; Theming
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes (quote (wombat)))
 '(js2-basic-offset 2)
 '(js2-highlight-level 3))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(setnu-line-number-face ((t (:inherit default))) t))

;; Tramp Settings
(setq tramp-default-method "ssh")

;; Javascript Mode
(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(require 'package)

(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)

(custom-set-variables ;; Hopefully diminish wonkiness of default indentation scheme.
 '(js2-basic-offset 2)
 '(js2-bounce-indent-p t)
)

;; Org Mode Settings

(setq org-log-done 'time) ; Taken from victorquinn
(setq org-startup-indented t) ; http://stackoverflow.com/questions/1771981/how-to-keep-indentation-with-emacs-org-mode-visual-line-mode

(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
