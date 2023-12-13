(setq inhibit-startup-message t)

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

(straight-use-package 'marginalia)
(straight-use-package 'pyim)
(straight-use-package 'verilog-ts-mode)
(straight-use-package 'doom-themes)
(straight-use-package 'w3m)
(straight-use-package 'magit)
(straight-use-package 'multiple-cursors)
(straight-use-package 'lua-mode)
(straight-use-package 'github-browse-file)
(straight-use-package 'move-text)
(straight-use-package 'evil-nerd-commenter)
(straight-use-package 'consult)
(straight-use-package 'markdown-mode)
(straight-use-package 'dockerfile-mode)
(straight-use-package 'docker)
(straight-use-package 'rust-mode)
(straight-use-package 'gruber-darker-theme)
(straight-use-package 'pydoc)
(straight-use-package 'smart-tab)
(straight-use-package 'go-mode)
(straight-use-package 'company-mode)
;; (straight-use-package 'markdown-preview-mode)

(setq ring-bell-function 'ignore)
(setq compilation-save-buffers-predicate 'ignore)

(setq c-default-style "linux"
      c-basic-offset 4)
;; (add-hook 'c-mode-hook (lambda () (c-toggle-comment-style -1)))

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(horizontal-scroll-bar-mode -1)
(blink-cursor-mode -1)
(setq-default tab-always-indent t)
(setq view-read-only t)
(setq auto-save-mode t)
(add-to-list 'default-frame-alist '(fullscreen . maximized))
;; (add-hook 'windows-setup-hook (lambda () (toggle-frame-fullscreen t)))
(add-hook 'after-init-hook 'global-company-mode)

(setq-default
 tab-width 4
 standard-indent 4)

;; (add-hook `rust-mode-hook `eglot-ensure)

(keymap-global-set "M-P" 'move-text-up)
(keymap-global-set "M-N" 'move-text-down)
(keymap-global-set "C-!" 'buffer-menu)
(keymap-global-set "C-c C-g" 'find-file-at-point)
(keymap-global-set "C-c C-d" (lambda() (interactive) (dired "~")))
(keymap-global-set "C-`" (lambda() (interactive) (find-file "/home/camellia/.emacs")))		   
(global-set-key (kbd "C-x C-c") (lambda () (interactive) (save-buffers-kill-emacs t)))
(global-set-key (kbd "C-c a C-r") (lambda () (interactive) (load-file "/home/camellia/.emacs")))	
(global-set-key [f5] 'compile)
(global-set-key (kbd "C-<f9>") 'view-mode)
(global-set-key (kbd "C-<tab>") 'ido-complete)

(global-unset-key "\C-xm")
(global-unset-key "\M-/")
(global-set-key (kbd "M-/") 'company-complete)

(setq-default truncate-lines 'nil)
(setq display-time-load-average 'nil)

(global-display-line-numbers-mode 1)
(setq display-line-numbers 'relative)

(setq-default line-spacing 0.2)
(add-to-list 'default-frame-alist '(font . "Input Mono-24"))
(set-face-attribute 'default nil :height 250)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; (require 'package)
;; (add-to-list 'package-archives '("malpa" . "https://melpa.org/packages/") t)
;; (package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(c-ts-mode-emacs-sources-support nil)
 '(c-ts-mode-indent-offset 4)
 '(company-idle-delay nil)
 '(cursor-type 'box)
 '(custom-enabled-themes '(gruber-darker))
 '(custom-safe-themes
   '("e27c9668d7eddf75373fa6b07475ae2d6892185f07ebed037eedf783318761d7"
	 "7964b513f8a2bb14803e717e0ac0123f100fb92160dcf4a467f530868ebaae3e"
	 "ffafb0e9f63935183713b204c11d22225008559fa62133a69848835f4f4a758c"
	 "10e5d4cc0f67ed5cafac0f4252093d2119ee8b8cb449e7053273453c1a1eb7cc"
	 "f64189544da6f16bab285747d04a92bd57c7e7813d8c24c30f382f087d460a33"
	 "2078837f21ac3b0cc84167306fa1058e3199bbd12b6d5b56e3777a4125ff6851"
	 "5f128efd37c6a87cd4ad8e8b7f2afaba425425524a68133ac0efd87291d05874"
	 "a9dc7790550dcdb88a23d9f81cc0333490529a20e160a8599a6ceaf1104192b5"
	 "4fdbed4aa8bcb199d7f6a643886bac51178d1705b9b354ef3dd82d4ec48072d2"
	 "6adeb971e4d5fe32bee0d5b1302bc0dfd70d4b42bad61e1c346599a6dc9569b5"
	 "9013233028d9798f901e5e8efb31841c24c12444d3b6e92580080505d56fd392"
	 "c5878086e65614424a84ad5c758b07e9edcf4c513e08a1c5b1533f313d1b17f1"
	 "5b9a45080feaedc7820894ebbfe4f8251e13b66654ac4394cb416fef9fdca789"
	 "9f297216c88ca3f47e5f10f8bd884ab24ac5bc9d884f0f23589b0a46a608fe14"
	 "8d3ef5ff6273f2a552152c7febc40eabca26bae05bd12bc85062e2dc224cde9a"
	 "a9abd706a4183711ffcca0d6da3808ec0f59be0e8336868669dc3b10381afb6f"
	 "9d29a302302cce971d988eb51bd17c1d2be6cd68305710446f658958c0640f68"
	 "2721b06afaf1769ef63f942bf3e977f208f517b187f2526f0e57c1bd4a000350"
	 "f053f92735d6d238461da8512b9c071a5ce3b9d972501f7a5e6682a90bf29725"
	 "ff24d14f5f7d355f47d53fd016565ed128bf3af30eb7ce8cae307ee4fe7f3fd0"
	 "df6dfd55673f40364b1970440f0b0cb8ba7149282cf415b81aaad2d98b0f0290"
	 "f4d1b183465f2d29b7a2e9dbe87ccc20598e79738e5d29fc52ec8fb8c576fcfd"
	 "e3daa8f18440301f3e54f2093fe15f4fe951986a8628e98dcd781efbec7a46f2"
	 "9e1cf0f16477d0da814691c1b9add22d7cb34e0bb3334db7822424a449d20078"
	 "da75eceab6bea9298e04ce5b4b07349f8c02da305734f7c0c8c6af7b5eaa9738"
	 "b9761a2e568bee658e0ff723dd620d844172943eb5ec4053e2b199c59e0bcc22"
	 "dc8285f7f4d86c0aebf1ea4b448842a6868553eded6f71d1de52f3dcbc960039"
	 "c8b3d9364302b16318e0f231981e94cbe4806cb5cde5732c3e5c3e05e1472434"
	 "38c0c668d8ac3841cb9608522ca116067177c92feeabc6f002a27249976d7434"
	 "162201cf5b5899938cfaec99c8cb35a2f1bf0775fc9ccbf5e63130a1ea217213"
	 "e14884c30d875c64f6a9cdd68fe87ef94385550cab4890182197b95d53a7cf40"
	 "70e7f094987e3c6226c54078dd986e11cab7246ea1c9e58a9907afa90f3c10c9"
	 "bf948e3f55a8cd1f420373410911d0a50be5a04a8886cabe8d8e471ad8fdba8e"
	 "680f62b751481cc5b5b44aeab824e5683cf13792c006aeba1c25ce2d89826426"
	 "a44e2d1636a0114c5e407a748841f6723ed442dc3a0ed086542dc71b92a87aee"
	 "89d9dc6f4e9a024737fb8840259c5dd0a140fd440f5ed17b596be43a05d62e67"
	 "29b4f767c48da68f8f3c2bbf0dde2be58e4ed9c97e685af5a7ab7844f0d08b8b"
	 "e1f4f0158cd5a01a9d96f1f7cdcca8d6724d7d33267623cc433fe1c196848554"
	 "3de5c795291a145452aeb961b1151e63ef1cb9565e3cdbd10521582b5fd02e9a"
	 "7e377879cbd60c66b88e51fad480b3ab18d60847f31c435f15f5df18bdb18184"
	 "013728cb445c73763d13e39c0e3fd52c06eefe3fbd173a766bfd29c6d040f100"
	 "1f292969fc19ba45fbc6542ed54e58ab5ad3dbe41b70d8cb2d1f85c22d07e518"
	 "443e2c3c4dd44510f0ea8247b438e834188dc1c6fb80785d83ad3628eadf9294"
	 "e4a702e262c3e3501dfe25091621fe12cd63c7845221687e36a79e17cf3a67e0"
	 "0c83e0b50946e39e237769ad368a08f2cd1c854ccbcd1a01d39fdce4d6f86478"
	 "4b6cc3b60871e2f4f9a026a5c86df27905fb1b0e96277ff18a76a39ca53b82e1"
	 "0d0936adf23bba16569c73876991168d0aed969d1e095c3f68d61f87dd7bab9a"
	 "88f7ee5594021c60a4a6a1c275614103de8c1435d6d08cc58882f920e0cec65e"
	 "00cec71d41047ebabeb310a325c365d5bc4b7fab0a681a2a108d32fb161b4006"
	 "75b2a02e1e0313742f548d43003fcdc45106553af7283fb5fad74359e07fe0e2"
	 "e87fd8e24e82eb94d63b1a9c79abc8161d25de9f2f13b64014d3bf4b8db05e9a"
	 "3cdd0a96236a9db4e903c01cb45c0c111eb1492313a65790adb894f9f1a33b2d"
	 "b54376ec363568656d54578d28b95382854f62b74c32077821fdfd604268616a"
	 "3fe1ebb870cc8a28e69763dde7b08c0f6b7e71cc310ffc3394622e5df6e4f0da"
	 "f5f80dd6588e59cfc3ce2f11568ff8296717a938edd448a947f9823a4e282b66"
	 "8d8207a39e18e2cc95ebddf62f841442d36fcba01a2a9451773d4ed30b632443"
	 "37b6695bae243145fa2dfb41440c204cd22833c25cd1993b0f258905b9e65577"
	 "be84a2e5c70f991051d4aaf0f049fa11c172e5d784727e0b525565bb1533ec78"
	 "a9eeab09d61fef94084a95f82557e147d9630fbbb82a837f971f83e66e21e5ad"
	 "8b148cf8154d34917dfc794b5d0fe65f21e9155977a36a5985f89c09a9669aa0"
	 "6f96a9ece5fdd0d3e04daea6aa63e13be26b48717820aa7b5889c602764cf23a"
	 "13096a9a6e75c7330c1bc500f30a8f4407bd618431c94aeab55c9855731a95e1"
	 "badd1a5e20bd0c29f4fe863f3b480992c65ef1fa63951f59aa5d6b129a3f9c4c"
	 "aec7b55f2a13307a55517fdf08438863d694550565dee23181d2ebd973ebd6b8"
	 "8c7e832be864674c220f9a9361c851917a93f921fedb7717b1b5ece47690c098"
	 "02d422e5b99f54bd4516d4157060b874d14552fe613ea7047c4a5cfa1288cf4f"
	 "dfb1c8b5bfa040b042b4ef660d0aab48ef2e89ee719a1f24a4629a0c5ed769e8"
	 "c1d5759fcb18b20fd95357dcd63ff90780283b14023422765d531330a3d3cec2"
	 "631c52620e2953e744f2b56d102eae503017047fb43d65ce028e88ef5846ea3b"
	 "b1acc21dcb556407306eccd73f90eb7d69664380483b18496d9c5ccc5968ab43"
	 "dccf4a8f1aaf5f24d2ab63af1aa75fd9d535c83377f8e26380162e888be0c6a9"
	 "c517e98fa036a0c21af481aadd2bdd6f44495be3d4ac2ce9d69201fcb2578533"
	 "014cb63097fc7dbda3edf53eb09802237961cbb4c9e9abd705f23b86511b0a69"
	 "4eb9462a8fff9153bfe88a9ef53aa043aec8b79c5298d2873e887e0c3a8b03de"
	 "0c860c4fe9df8cff6484c54d2ae263f19d935e4ff57019999edbda9c7eda50b8"
	 "5e5771e6ea0c9500aa87e987ace1d9f401585e22a976777b6090a1554f3771c6"
	 "45b84ddcc65bdf01d9cc76061a9473e3291d82c9209eac0694fbbb81c57b92fd"
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
 '(verilog-compiler "./build.sh")
 '(warning-suppress-log-types '((treesit) (comp)))
 '(word-wrap t)
 '(x-stretch-cursor t)
 '(x-underline-at-descent-line t))

(put 'scroll-left 'disabled nil)
(marginalia-mode 1)

(require 'multiple-cursors)
(global-set-key (kbd "C-c a a") 'mc/edit-lines)
(global-set-key (kbd "C-c a /") 'mc/mark-all-in-region)
(global-set-key (kbd "C-c a ?") 'mc/mark-all-in-region-regexp)
;; (global-set-key (kbd "C-c a .") 'mc/unmark-next-like-this)
;; (global-set-key (kbd "C-c a ,") 'mc/unmark-previous-like-this)

;; (global-set-key (kbd "M-]") 'mc/mark-next-word-like-this)
;; (global-set-key (kbd "M-[") 'mc/mark-previous-word-like-this)

(require 'evil-nerd-commenter)
(global-set-key (kbd "C-;") 'evilnc-comment-or-uncomment-lines)
(global-set-key "\C-c\C-f" "\C-a\C- \C-n\M-w\C-y")

;; (setq treesit-language-source-alist
;;    '((bash "https://github.com/tree-sitter/tree-sitter-bash")
;;      (cmake "https://github.com/uyha/tree-sitter-cmake")
;;      (css "https://github.com/tree-sitter/tree-sitter-css")
;;      (elisp "https://github.com/Wilfred/tree-sitter-elisp")
;;      (go "https://github.com/tree-sitter/tree-sitter-go")
;;      (html "https://github.com/tree-sitter/tree-sitter-html")
;;      (javascript "https://github.com/tree-sitter/tree-sitter-javascript" "master" "src")
;;      (json "https://github.com/tree-sitter/tree-sitter-json")
;;      (make "https://github.com/alemuller/tree-sitter-make")
;;      (markdown "https://github.com/ikatyang/tree-sitter-markdown")
;;      (python "https://github.com/tree-sitter/tree-sitter-python")
;;      (toml "https://github.com/tree-sitter/tree-sitter-toml")
;;      (tsx "https://github.com/tree-sitter/tree-sitter-typescript" "master" "tsx/src")
;;      (typescript "https://github.com/tree-sitter/tree-sitter-typescript" "master" "typescript/src")
;;      (yaml "https://github.com/ikatyang/tree-sitter-yaml")
;;      (c "https://github.com/tree-sitter/tree-sitter-c")
;;      (cpp "https://github.com/tree-sitter/tree-sitter-cpp")))

;; (mapc #'treesit-install-language-grammar (mapcar #'car treesit-language-source-alist))

;; (require 'smart-tab)
;; (global-smart-tab-mode 1)

(setq
 major-mode-remap-alist
 '((c-ts-mode . c-mode)
   (c++-ts-mode . c++-mode)
   (python-ts-mode . python-mode)))


;; c
;; (add-to-list 'auto-mode-alist
;; 	     '("\\.c\\'" . c-mode)
;; 	     '("\\.h\\'" . c-mode))
;; c++ 
;; (add-to-list 'auto-mode-alist
;; 	     '("\\.cc\\'" . c++-mode)
;; 	     '("\\.hh\\'" . c++-mode))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
