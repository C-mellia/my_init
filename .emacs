(setq inhibit-startup-message t)
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)
(setq initial-scratch-message ";; \\(O w O)/")

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
	(url-retrieve-synchronously
	 "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
	 'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'use-package)
(setq straight-use-package-by-default t)

(straight-use-package 'pyim)
;; (straight-use-package 'verilog-mode)
;; (straight-use-package 'doom-themes)
(straight-use-package 'magit)
(straight-use-package 'lua-mode)
(straight-use-package 'evil-nerd-commenter)
(straight-use-package 'markdown-mode)
(straight-use-package 'dockerfile-mode)
(straight-use-package 'docker)
(straight-use-package 'rust-mode)
(straight-use-package 'gruber-darker-theme)
(straight-use-package 'pydoc)
(straight-use-package 'go-mode)
(straight-use-package 'company-mode)
(straight-use-package 'fzf)
(straight-use-package 'dumb-jump)
(straight-use-package 'helm)
(straight-use-package 'helm-xref)
(straight-use-package 'which-key)
(straight-use-package 'javascript-mode)

(setq company-format-margin-function #'company-text-icons-margin)

(helm-mode)
(define-key global-map [remap find-file] #'helm-find-files)
(define-key global-map [remap execute-extended-command] #'helm-M-x)
(define-key global-map [remap switch-to-buffer] #'helm-mini)

(which-key-mode)

;; (use-package lambda-line
;;   :straight (:type git :host github :repo "lambda-emacs/lambda-line") 
;;   :custom
;;   ;; (lambda-line-icon-time t)
;;   (lambda-line-clockface-update-fontset "ComicShannsMonoNerdFontMono") 
;;   (lambda-line-position 'bottom) ;; Set position of status-line 
;;   (lambda-line-abbrev 'nil) ;; abbreviate major modes
;;   (lambda-line-hspace "  ")  ;; add some cushion
;;   (lambda-line-prefix t) ;; use a prefix symbol
;;   (lambda-line-prefix-padding t) ;; no extra space for prefix 
;;   (lambda-line-status-invert nil)  ;; no invert colors
;;   (lambda-line-gui-ro-symbol  " 󰈡") ;; symbols
;;   (lambda-line-gui-mod-symbol " ") 
;;   (lambda-line-gui-rw-symbol  " ") 
;;   (lambda-line-space-top +.20)  ;; padding on top and bottom of line
;;   (lambda-line-space-bottom -.20)
;;   (lambda-line-symbol-position 0.1) ;; adjust the vertical placement of symbol
;;   :config
;;   ;; activate lambda-line 
;;   (lambda-line-mode) 
;;   ;; set divider line in footer
;;   (when (eq lambda-line-position 'top)
;;     (setq-default mode-line-format (list "%_"))
;;     (setq mode-line-format (list "%_"))))

(setq ring-bell-function 'ignore)
(setq compilation-save-buffers-predicate 'ignore)

(setq c-default-style "linux"
      c-basic-offset 4)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(horizontal-scroll-bar-mode -1)
(blink-cursor-mode -1)
(setq-default tab-always-indent t)
(setq view-read-only t)
(setq auto-save-mode t)
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(add-hook 'after-init-hook 'global-company-mode)

(setq-default
 tab-width 4
 standard-indent 4)

(global-unset-key (kbd "C-x m"))
(global-unset-key (kbd "M-/"))
(global-unset-key (kbd "C-/"))
(global-unset-key (kbd "C-x f"))
(global-unset-key (kbd "C-x C-d"))
(global-unset-key (kbd "C-_"))
(global-unset-key (kbd "C-h"))
(global-unset-key (kbd "M-{"))
(global-unset-key (kbd "M-}"))
(global-unset-key (kbd "M-m"))

;; (keymap-global-set "M-P" 'move-text-up)
;; (keymap-global-set "M-N" 'move-text-down)
(keymap-global-set "C-c C-g" 'find-file-at-point)
(keymap-global-set "C-`" (lambda() (interactive) (find-file "/home/camellia/my_init/.emacs")))		   
(global-set-key (kbd "C-x C-c") (lambda () (interactive) (save-buffers-kill-emacs t)))
(global-set-key (kbd "C-c a C-r") (lambda () (interactive) (load-file "/home/camellia/.emacs")))	
;; (global-set-key (kbd "C-x c s") 'compile)
(global-set-key (kbd "<f5>") 'compile)
(global-set-key (kbd "C-x c v") 'view-mode)
(global-set-key (kbd "C-=") 'forward-sexp)
(global-set-key (kbd "C--") 'backward-sexp)
(global-set-key (kbd "C-h") 'backward-delete-char-untabify)
(global-set-key (kbd "C-}") 'forward-paragraph)
(global-set-key (kbd "C-{") 'backward-paragraph)
(global-set-key (kbd "M-g d") 'dumb-jump-go)
(global-set-key (kbd "M-g -") 'dumb-jump-back)
(global-set-key (kbd "M-g s") (lambda() (interactive) (point-to-register 'j)))
(global-set-key (kbd "M-g j") (lambda() (interactive) (jump-to-register 'j)))
(global-set-key (kbd "C-_") 'back-to-indentation)
(keymap-global-set "C-!" (kbd "C-0 C-k"))
 
(global-set-key (kbd "M-/") 'company-complete)
(setq-default company-idle-delay nil)

(setq-default truncate-lines 'nil)
(setq display-time-load-average 'nil)

(global-display-line-numbers-mode 1)
(setq display-line-numbers 'relative)

;; (setq-default line-spacing 0.1)
(add-to-list 'default-frame-alist '(font . "ComicShannsMonoNerdFontMono-14"))
;; (set-face-attribute 'default nil :height 250)

;; (setq ido-enable-flex-matching t)
;; (setq ido-everywhere t)
;; (ido-mode 1)

(setq make-backup-files nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode t)
 '(company-clang-use-compile-flags-txt t)
 '(cursor-type 'box)
 '(custom-enabled-themes '(gruber-darker))
 '(custom-safe-themes
   '("e27c9668d7eddf75373fa6b07475ae2d6892185f07ebed037eedf783318761d7"
	 default))
 '(display-fill-column-indicator nil)
 '(display-line-numbers 'relative)
 '(display-line-numbers-type 'visual)
 '(display-line-numbers-widen t)
 '(display-raw-bytes-as-hex t)
 '(display-time-24hr-format t)
 '(display-time-day-and-date nil)
 '(display-time-default-load-average nil)
 '(display-time-format nil)
 '(display-time-mail-file 'none)
 '(display-time-mode t)
 '(font-use-system-font nil)
 '(global-linum-mode nil)
 '(go-ts-mode-indent-offset 4)
 '(ignored-local-variable-values
   '((git-commit-major-mode . git-commit-elisp-text-mode)
	 (vc-prepare-patches-separately)
	 (diff-add-log-use-relative-names . t)
	 (vc-git-annotate-switches . "-w")))
 '(major-mode-remap-alist
   '((python-mode . python-ts-mode) (c-mode . c-ts-mode)
	 (cpp-mode . cpp-ts-mode)))
 '(nil nil t)
 '(python-indent-offset 2)
 '(send-mail-function 'mailclient-send-it)
 '(verilog-auto-endcomments nil)
 '(verilog-auto-newline nil)
 '(warning-suppress-log-types '((treesit) (comp)))
 '(word-wrap t)
 '(x-stretch-cursor t)
 '(x-underline-at-descent-line t))

(put 'scroll-left 'disabled nil)

(require 'evil-nerd-commenter)
(global-set-key (kbd "C-;") 'evilnc-comment-or-uncomment-lines)
(global-set-key "\C-c\C-f" "\C-a\C- \C-n\M-w\C-y")

(setq
 major-mode-remap-alist
 '((c-ts-mode . c-mode)
   (c++-ts-mode . c++-mode)
   (python-ts-mode . python-mode)))

(require 'fzf)
(global-set-key (kbd "C-x f") 'fzf-find-file)
(global-set-key (kbd "C-x C-d") 'fzf-directory)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
