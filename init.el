(require 'package)

(setq package-archives '(("org"       . "http://orgmode.org/elpa/")
                         ("gnu"       . "http://elpa.gnu.org/packages/")
                         ("melpa"     . "http://melpa.org/packages/")))

(package-refresh-contents)



;;
;; (package-install 'exec-path-from-shell)
;; (require 'exec-path-from-shell)
;; (exec-path-from-shell-initialize)


;; message-box "neato")

(unless (package-installed-p 'use-package)
  (package-install 'use-package))
(require 'use-package)

(setq use-package-always-ensure t)

;; Treat all themes as safe; no query before use.
(setf custom-safe-themes t)

;; Nice looking themes ^_^
;; (use-package solarized-theme)
;; (use-package doom-themes)
;; (use-package spacemacs-common
;;   :ensure spacemacs-theme)
;;

;; (setq my/themes '(doom-solarized-light doom-vibrant spacemacs-light solarized-gruvbox-dark solarized-gruvbox-light))


;; (setq package-load-list '((htmlize t)))
;; (package-initialize)
(use-package htmlize)

(find-file "index.org")
;; (use-package solarized-theme)
;; (load-theme 'solarized-gruvbox-light)
(load-theme 'adwaita)
(org-html-export-to-html)
(kill-emacs)
;;; init.el ends here
