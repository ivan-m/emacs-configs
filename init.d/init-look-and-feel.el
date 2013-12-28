;; pretty lambda

(req-package pretty-lambdada
             :ensure
             pretty-lambdada
             :init
             (pretty-lambda-for-modes))

;; customizations

(req-package menu-bar
             :init
             (menu-bar-mode -1))

;; main line

(req-package smart-mode-line
             :ensure
             smart-mode-line
             :init
             (progn (setq sml/theme 'dark)
                    (sml/setup)))

;; mode line tweaks

(req-package simple
             :init
             (column-number-mode 1))

;; toolbar

(req-package tool-bar
             :init
             (tool-bar-mode -1))

;; scroll bar

(req-package scroll-bar
             :init
             (scroll-bar-mode -1))

;; turn off sctartup screen

(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)

;; show function name

(add-hook 'prog-mode-hook (lambda () (which-function-mode 1)))

;; miscaleous tweeks

(setq make-pointer-invisible nil)

;; smooth mouse scroll

(req-package mwheel
             :init
             (progn (setq mouse-wheel-scroll-amount '(2 ((shift) . 2)))
                    (setq mouse-wheel-progressive-speed nil)
                    (setq mouse-wheel-follow-mouse t)
                    (setq scroll-step 1)
                    (setq auto-window-vscroll nil)
                    (setq scroll-preserve-screen-position t)
                    (setq isearch-allow-scroll t)))

;; line highlight

(req-package hl-line
             :ensure
             hl-line
             :init
             (progn (global-hl-line-mode 1)))

;; todo, fixme highlighting

(req-package fic-mode
             :ensure
             fic-mode
             :init
             (add-hook 'prog-mode-hook (lambda () (fic-mode 1))))

;; highlight parenthesis

(req-package highlight-parentheses
             :ensure
             highlight-parentheses
             :init
             (add-hook 'prog-mode-hook (lambda () (highlight-parentheses-mode 1))))

;; hl sexps

(req-package hl-sexp
             :require
             hl-line
             :ensure
             hl-sexp
             :init
             (add-hook 'emacs-lisp-mode-hook (lambda () (hl-sexp-mode 1))))

;; diff highlight

(req-package smartrep
             :ensure
             smartrep)

(req-package diff-hl
             :require
             (smartrep fringe)
             :ensure
             diff-hl
             :init
             (global-diff-hl-mode 1))

;; remember theme

(req-package remember-theme
             :ensure
             remember-theme)

;; theme park mode

(req-package theme-park-mode
             :ensure
             theme-park-mode)

;; helm themes

(req-package helm-themes
             :require
             helm
             :ensure
             helm-themes)

(provide 'init-look-and-feel)
