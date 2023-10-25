;; SERVER SETUP
;(require 'server)
;(unless (server-running-p)
;  (server-start))
(setq debug-on-error t)

;; CL DEPRECATION SOLUTION
(require 'cl-lib)


;; BORDERLESS --NO-DECORATION
;; (set-frame-parameter nil 'undecorated t)
;; (add-to-list 'default-frame-alist '(undecorated . t))


;; DEFAULT FRAME SIZE
; (set-frame-parameter nil 'background-color "black")
; (set-frame-parameter nil 'foreground-color "white")
(setq default-directory "C:/Users/Patta/")
(setq default-frame-alist
      '((width . 150)
        (height . 40)))



;; SETUP PACKAGE ARCHIVES
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
(package-initialize)


;; SET UTF-8 ENCODING EVERYWHERE
(set-terminal-coding-system 'utf-8)
(set-language-environment 'utf-8)
(prefer-coding-system 'utf-8)
(setq locale-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)

;; display-buffer
;;(setq display-buffer-alist '((".*" display-buffer-at-bottom)))


;; EDITING TWEAKS
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(setq-default indent-tabs-mode nil); indent-tabs-mode t (default) make it to nil (fot python) .. use spaces instead of tab
(setq-default tab-width 4) ; tab-width  8(default) set it to 4 (my preference)
(setq c-basic-offset 4) ; c-basic-offset 2(default)  set it to 4 (my preference)
(electric-pair-mode 1); electric-pair-mode ...MUST
(setq ido-enable-flex-matching t) ; default completion
(setq ido-everywhere t)
(ido-mode 1)


;; NECESSARY APPEARANCE CHANGES
(setq use-dialog-box nil)
(setq use-file-dialog nil)
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq inhibit-startup-screen t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(fringe-mode -1)
(scroll-bar-mode -1)
(global-subword-mode 1)
(defalias 'yes-or-no-p 'y-or-n-p)
(global-display-line-numbers-mode 1)
(global-visual-line-mode t)
;(display-time-mode 1)
;(setq display-time-day-and-date nil)
;(setq-default mode-line-end-spaces nil)
;(setq visible-bell 1)
;(setq display-line-numbers-type 'relative)
(setq tab-bar-auto-width 1)
(setq tab-bar-auto-width-max nil)       ;default (220 20)
;(setq tab-bar-separator "")             ;remove spaces around tabs
;(setq tab-bar-close-button-show t)
;(setq tab-bar-tab-hints t)
(setq tab-bar-format '(tab-bar-fomat-history tab-bar-format-tabs-groups tab-bar-separator tab-bar-format-add-tab))
;; (tab-bar-format-history tab-bar-format-tabs tab-bar-separator ;;tab-bar-format-add-tab)


;; DOCVIEW Configuration
;add this to exec path for mupdf to work
;; (setq exec-path (append '("C:/Program Files (x86)/mupdf-1.23.0-windows/") exec-path))
(setq doc-view-dvipdfm-program "mutool.exe")
(setq doc-view-odf->pdf-converter-program "c:/Program Files/LibreOffice/program/soffice.exe")
(setq doc-view-odf->pdf-converter-function 'doc-view-odf->pdf-converter-soffice)
;; Use 'mutool' to generate SVGs when displaying PDFs.
(setq doc-view-mupdf-use-svg (image-type-available-p 'svg))

;; Dired-X
(add-hook 'dired-load-hook (function (lambda () (load "dired-x"))))


;; THEME CONFIG
(use-package modus-themes :ensure t)
;; (setq modus-themes-common-palette-overrides
;;       '((border-mode-line-active unspecified)
;;         (border-mode-line-inactive unspecified)
;;         (fg-main "#F4F4F4")
;;         (bg-main "#161616")
;;         (bg-region "#4d5358")
;;         (fg-region unspecified)
;;         (bg-mode-line-active "#262626")
;;         (bg-mode-line-inactive "#272525")
;;         (fg-mode-line-active "#ffffff")
;;         (comment green-warmer)
;;         (fnname yellow-warmer)
;;         (bg-tab-bar bg-main)
;;         (bg-tab-current bg-active)
;;         (bg-tab-other bg-dim)
;;         (type blue)
;;         (constant red)))
(setq modus-themes-bold-constructs nil
       modus-themes-italic-constructs nil
       modus-themes-tabs-accented t
       modus-themes-paren-match '(bold intense)
       modus-themes-prompts '(regular intense)
       modus-themes-scale-headings t
       modus-themes-region '(bg-only)
       modus-themes-headings
       '((1 . (rainbow overline background 1.3))
         (2 . (rainbow background 1.2))
         (3 . (rainbow bold 1.1))
         (t . (semilight 1.0)))
       )
(setq modus-themes-completions
      (quote ((matches . (regular underline))
              (selection . (regular italic)))))


(setq modus-themes-common-palette-overrides
      '((border-mode-line-active unspecified)
        (border-mode-line-inactive unspecified)
        (fg-prompt "#878d96")
        (bg-prompt unspecified)
        (bg-region "#4d5358")
        (fg-region unspecified)
        (fg-completion-match-0 blue-warmer)
        (fg-completion-match-1 blue-cooler)
        (fg-completion-match-2 blue-warmer)
        (fg-completion-match-3 blue-cooler)
        (bg-completion-match-0 unspecified)
        (bg-completion-match-1 unspecified)
        (bg-completion-match-2 unspecified)
        (bg-completion-match-3 unspecified)))
;; (setq modus-themes-org-blocks 'gray-background)
 (load-theme 'modus-vivendi t) ; for the dark version

;; IDO customization
(custom-set-faces
 '(ido-subdir ((t (:foreground "#ffffff")))) ;; Face used by ido for highlighting subdirs in the alternatives.
 '(ido-first-match ((t (:foreground "#79a8ff")))) ;; Face used by ido for highlighting first match.
 '(ido-only-match ((t (:foreground "#79a8ff"))))) ;; Face used by ido for highlighting only match.

;; NEW EMACS FONT CONFIG
(add-to-list 'default-frame-alist '(font . "Iosevka Fixed-16"))
(set-face-attribute 'default nil :font "Iosevka Fixed-16")



;; PACKAGES INSTALL (by USE-PACKAGE)
;company completion framework
(use-package company
  :ensure t
  :config
  (global-company-mode 1))

;smex : ido based completion for M-x
(use-package smex
  :ensure t
  :init (smex-initialize)
  :bind
  ("M-x" . smex))
;which key
(use-package which-key
             :ensure t
             :init
             (which-key-mode))

(use-package yasnippet :ensure t)
(use-package multiple-cursors :ensure t)
(use-package proof-general :ensure t)
(use-package powershell :ensure t)
(use-package markdown-mode
  :ensure t)


(use-package imenu-list
  :ensure t
  :config
  (setq imenu-list-focus-after-activation t
        imenu-list-auto-resize nil))
;; compiler-explorer
;(use-package compiler-explorer :ensure t)
(use-package rfc-mode
  :ensure t
  :init
  (setq rfc-mode-directory (expand-file-name "C:/Users/Patta/Documents/rfcs/")))


;; WOMAN PATH SETUP
;(setq woman-manpath '("C:/Users/Patta/OpenBSD_ManPages/man-pages/"))
(setq woman-manpath '("//wsl.localhost/Ubuntu/usr/share/man"))


;; PWSH AS DEFAULT SHELL IN EMACS
(setq explicit-shell-file-name "pwsh.exe")
(setq shell-file-name "pwsh.exe")
(setq explicit-pwsh.exe-args '("-ExecutionPolicy" "Unrestricted"))


;; nxml-mode
(add-to-list 'auto-mode-alist '("\\.html\\'" . nxml-mode))
(add-to-list 'auto-mode-alist '("\\.xsd\\'" . nxml-mode))
(add-to-list 'auto-mode-alist '("\\.ant\\'" . nxml-mode))

;; tramp
;; (setq tramp-auto-save-directory "/tmp")
(setq tramp-auto-save-directory "C:/Users/Patta/AppData/Local/Temp")


;; CUSTOM KEY BINDINGS
(global-set-key (kbd "C-c u") 'update-all-packages)
(global-set-key (kbd "C-c c") 'compile)
(global-set-key (kbd "C-c w") 'woman)
(global-set-key (kbd "<f12>") 'evil-mode)
(global-set-key (kbd "C-=") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)
;(global-set-key (kbd "C-w") 'backward-kill-word)
;(global-set-key (kbd "C-c C-k") 'kill-region)
(global-set-key (kbd "C-c k") 'ido-kill-buffer) ;alternative to C-x k
;; (global-set-key (kbd "M-p") 'move-text-up)
;; (global-set-key (kbd "M-n") 'move-text-down)



;; CUSTOM VARIABLES ADDED BY EMACS
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(markdown-mode which-key use-package smex modus-themes company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; HIGHLIGHT CONSTANTS AS RED
;; (add-hook 'prog-mode-hook
;;           (lambda ()
;;             (font-lock-add-keywords nil
;;               '(("\\b\\(?:[0-9]+\\(?:\\.[0-9]*\\(?:[eE][-+]?[0-9]+\\)?\\)?\\|0[bB][01]+\\|0[oO]?[0-7]+\\|0[xX][0-9A-Fa-f]+\\|\\(?:[0-9]+[eE][-+]?[0-9]+\\)\\|\\(?:[0-9]+_[0-9a-fA-F]+\\)\\)\\b"
;;                  . font-lock-constant-face)))))



;; FOREGROUND COLOR SETTINGS
;; (set-face-attribute 'error nil :foreground "#da1e28" :weight 'bold)
;; (set-face-attribute 'warning nil :foreground "#f1c21b" :weight 'bold)
;; ;(set-face-attribute 'info nil :foreground "#")
;; (set-face-attribute 'success nil :foreground "#24a148")
;; (with-eval-after-load 'compile
;;   (custom-set-faces
;;    '(compilation-error ((t (:foreground "#da1e28" ))))
;;    '(compilation-info ((t (:foreground "#24a148" ))))
;;    '(compilation-mode-line-fail ((t (:foreground "#da1e28" ))))
;;    '(compilation-mode-line-run ((t (:foreground "#f1c21b" ))))
;;    '(compilation-mode-line-exit ((t (:foreground "#24a148" ))))
;;    '(compilation-warning ((t (:foreground "#ff832b" ))))
;;    ))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(compilation-error ((t (:foreground "#da1e28"))))
;;  '(compilation-info ((t (:foreground "#24a148"))))
;;  '(compilation-mode-line-exit ((t (:foreground "#24a148"))))
;;  '(compilation-mode-line-fail ((t (:foreground "#da1e28"))))
;;  '(compilation-mode-line-run ((t (:foreground "#f1c21b"))))
;;  '(compilation-warning ((t (:foreground "#ff832b"))))
;;  '(font-lock-binary-literal-face ((t (:foreground "#880000"))))
;;  '(font-lock-float-literal-face ((t (:foreground "#880000"))))
;;  '(font-lock-hexadecimal-literal-face ((t (:foreground "#880000"))))
;;  '(font-lock-numeric-literal-face ((t (:foreground "#880000"))))
;;  '(font-lock-octal-literal-face ((t (:foreground "#880000")))))


;; CUSTOMIZATION FOR SOME KEYWORDS
;; (defface font-lock-todo-face
;;   '((t (:foreground "#da1e28")))
;;   "Face for TODO keywords.")
;; (defface font-lock-fixme-face
;;   '((t (:foreground "#9f1853")))
;;   "Face for FIXME keywords.")
;; (defface font-lock-note-face
;;   '((t (:foreground "#0f62fe")))
;;   "Face for NOTE keywords.")
;; (defface font-lock-hack-face
;;   '((t (:foreground "yellow")))
;;   "Face for HACK keywords.")
;; (defvar font-lock-todo-keywords
;;   '(("\\<\\(TODO\\)\\>" 0 'font-lock-todo-face t)
;;     ("\\<\\(FIXME\\)\\>" 0 'font-lock-fixme-face t)
;;     ("\\<\\(NOTE\\)\\>" 0 'font-lock-note-face t)
;;     ("\\<\\(HACK\\)\\>" 0 'font-lock-hack-face t))
;;   "Font-lock keywords for highlighting TODO, FIXME, NOTE, and HACK.")
;; (add-hook 'prog-mode-hook
;;           (lambda ()
;;             (font-lock-add-keywords nil font-lock-todo-keywords)))
;; (add-hook 'text-mode-hook
;;           (lambda ()
;;             (font-lock-add-keywords nil font-lock-todo-keywords)))


;; ;;EMACS FONT CONFIG
;; (add-to-list 'default-frame-alist
;; 	         '(font . "-outline-Iosevka Fixed Medium-normal-normal-normal-mono-*-*-*-*-c-*-iso10646-1")) ;I use medium weight, because of my low resolution monitor

;; ; Set the default font to Iosevka with size 12, 120 or 1.1 or 1.0 or 1.2 nothing else
;; (set-face-attribute 'default nil :font "-outline-Iosevka Fixed Medium-normal-normal-normal-mono-*-*-*-*-c-*-iso10646-1")
;; (set-face-attribute 'variable-pitch nil :font "-outline-IBM Plex Sans Cond Text-normal-normal-normal-sans-*-*-*-*-p-*-iso10646-1" :height '1.1) ;This font really looks good in eww while viewing webpages
;; (set-face-attribute 'fixed-pitch nil :font "-outline-Iosevka Fixed Medium-normal-normal-normal-mono-*-*-*-*-c-*-iso10646-1")
;; (set-face-attribute 'fixed-pitch-serif nil :font "-outline-Courier New-normal-normal-normal-mono-*-*-*-*-c-*-iso10646-1") ;Courier new default for fixed-pitch and serif --the-only-one
;; (set-face-attribute 'mode-line nil :font "-outline-Iosevka Term Medium-normal-normal-normal-mono-*-*-*-*-c-*-iso10646-1" :height '1.0)
;; (set-face-attribute 'minibuffer-prompt nil :font "-outline-Iosevka Fixed Medium-normal-normal-normal-mono-*-*-*-*-c-*-iso10646-1")
;; (set-face-attribute 'header-line nil :font "-outline-Iosevka Fixed Medium-normal-normal-normal-mono-*-*-*-*-c-*-iso10646-1" :height '1.0)
;; (set-face-attribute 'bold nil  :family "Iosevka Fixed" :weight 'semibold)  ;I set bold to semibold, because bold looks obnoxious in my monitor
;; (set-face-attribute 'italic nil :font "-outline-Iosevka Fixed Medium-normal-italic-normal-mono-*-*-*-*-c-*-iso10646-1")


;; TreeSitter Setup
;;(setq treesit-extra-load-path '("C:/Users/Patta/AppData/Roaming/.emacs.d/tree-sitter/"))
;(add-to-list 'load-path "C:/Users/Patta/AppData/Roaming/.emacs.d/tree-sitter/")
;;(setq treesit-language-source-alist
;       '((cpp "https://github.com/tree-sitter/tree-sitter-c")
;          (c "https://github.com/tree-sitter/tree-sitter-c")
         ;; (python "https://github.com/tree-sitter/tree-sitter-python")
         ;; (java "https://github.com/tree-sitter/tree-sitter-java")
         ;; (javascript "https://github.com/tree-sitter/tree-sitter-javascript")
         ;; (html "https://github.com/tree-sitter/tree-sitter-html")
         ;; (css "https://github.com/tree-sitter/tree-sitter-css")
         ;; (bash "https://github.com/tree-sitter/tree-sitter-bash")
         ;; (rust "https://github.com/tree-sitter/tree-sitter-rust")
         ;; (go "https://github.com/tree-sitter/tree-sitter-go")
         ;; (verilog "https://github.com/tree-sitter/tree-sitter-verilog")
         ;; (haskell "https://github.com/tree-sitter/tree-sitter-haskell")
         ;; (typescript "https://github.com/tree-sitter/tree-sitter-typescript")
         ;; (ocaml "https://github.com/tree-sitter/tree-sitter-ocaml")
         ;; (yaml "https://github.com/ikatyang/tree-sitter-yaml")
         ;; (dart "https://github.com/UserNobody14/tree-sitter-dart")
         ;; (cshart "https://github.com/tree-sitter/tree-sitter-c-sharp")
         ;; (json "https://github.com/tree-sitter/tree-sitter-json")
         ;; (php "https://github.com/tree-sitter/tree-sitter-php")
         ;; (scala "https://github.com/tree-sitter/tree-sitter-scala")
         ;; (cmake "https://github.com/uyha/tree-sitter-cmake")))
;;))
;; ;; install any grammar libraries which is not already installed
;; (dolist (lang treesit-language-source-alist)
;;   (unless (treesit-language-available-p (car lang))
;;     (treesit-install-language-grammar (car lang))))
;; ;; map c++ to the correct name

;; ;; treesitter mode default

;; (add-to-list 'major-mode-remap-alist '(c-mode . c-ts-mode))

;; ;; EGLOT hooks
;; (add-hook 'cmake-ts-mode 'eglot-ensure)
;; (add-hook 'python-ts-mode 'eglot-ensure)
;; (add-hook 'json-ts-mode 'eglot-ensure)
;; (add-hook 'js-ts-mode 'eglot-ensure)
;; (add-hook 'typescript-ts-mode 'eglot-ensure)
; (add-hook 'c-ts-mode 'eglot-ensure)
 ;(add-hook 'c++-ts-mode 'eglot-ensure)
;; (add-hook 'java-ts-mode 'eglot-ensure)
;; (add-hook 'dart-ts-mode 'eglot-ensure)
;; (add-hook 'yaml-ts-mode 'eglot-ensure)
;; (add-hook 'css-ts-mode 'eglot-ensure)
;; (add-hook 'dockerfile-ts-mode 'eglot-ensure)
;; (add-hook 'csharp-ts-mode 'eglot-ensure)


; Pakcage upgrade through one command
;; (defun update-all-packages ()
;;   "Update all packages in Emacs."
;;   (interactive)
;;   (package-refresh-contents)
;;   (package-list-packages)
;;   (package-menu-mark-upgrades)
;;   (package-menu-execute))
