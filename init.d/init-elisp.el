;; use emr

(req-package emr
  :config
  (progn (emr-initialize)
		 (define-key emacs-lisp-mode-map
		   (kbd "M-RET")
		   'emr-show-refactor-menu)))

;; use litable

(req-package litable :commands litable-mode)

;; use eldoc

(req-package eldoc
  :commands eldoc-mode
  :init (progn (add-hook 'emacs-lisp-mode-hook (lambda () (eldoc-mode 1)))
			   (add-hook 'lisp-interaction-mode-hook (lambda () (eldoc-mode 1)))))

(provide 'init-elisp)
