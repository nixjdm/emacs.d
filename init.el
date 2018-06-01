;; No splash screen please ... jeez
(setq inhibit-startup-message t)

;; Set paths to dependencies
(let ((default-directory
        (expand-file-name "~/.emacs.d/lisp/")))
  (normal-top-level-add-subdirs-to-load-path))

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
             '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/") t)
(package-initialize)

; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))
(package-refresh-contents)
; list the packages you want
(setq package-list
      '(
        ;; themes
        afternoon-theme
        ample-theme
        color-theme
        color-theme-modern
        cyberpunk-theme
        monokai-theme
        ;; everything else
        flymd
        json-mode
        less-css-mode
        markdown-mode
        salt-mode
        web-mode
        ))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))


;; Configure web-mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.template?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.less?\\'" . less-css-mode))
(add-to-list 'auto-mode-alist '("\\.css?\\'" . css-mode))
(setq web-mode-engines-alist
      '(("django"    . "\\.html\\'")))
(setq web-mode-engines-alist
      '(("django"    . "\\.template\\'")))
(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-less-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-enable-css-colorization t)
  (setq web-mode-comment-style 2)
  (setq web-mode-enable-block-face t)
  (setq web-mode-enable-part-face t)
  (setq web-mode-enable-comment-keywords t)
  (setq web-mode-enable-current-element-highlight t)
  (setq web-mode-enable-current-column-highlight t))
(defun my-css-mode-hook ()
  "Hooks for css-mode, and inherited by less-css-mode"
  (setq css-indent-offset 2))
(add-hook 'web-mode-hook  'my-web-mode-hook)
(add-hook 'css-mode-hook  'my-css-mode-hook)
(setq column-number-mode t)
;; Alias to have emacs not balk at uppercase UTF-8 encoding declaration
(define-coding-system-alias 'UTF-8 'utf-8)
;; Delete trailing whitespace automatically
(add-hook 'before-save-hook 'delete-trailing-whitespace)
;; No tabs
(setq-default indent-tabs-mode nil)
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;;;;;;;;;;;;;;;;;;;;;
;; fxbois' theme: see http://web-mode.org plus Joe's tweaks

;; (set-face-attribute 'default            nil :background "color-233" :foreground "ivory1")
;; (set-face-attribute 'fringe             nil :background "gray20")
;; (set-face-attribute 'highlight          nil :background "gray16")
;; (set-face-attribute 'mode-line          nil :box nil :background "gray26" :foreground "grey80")
;; (set-face-attribute 'mode-line-inactive nil :background "gray40")
;; (set-face-attribute 'font-lock-function-name-face    nil :foreground "Blue")
;; (set-face-attribute 'font-lock-string-face           nil :foreground "VioletRed1")

;; (set-face-attribute 'web-mode-html-tag-face          nil :foreground "#777777")
;; (set-face-attribute 'web-mode-html-tag-custom-face   nil :foreground "#8a9db4")
;; (set-face-attribute 'web-mode-html-tag-bracket-face  nil :foreground "gray70")
;; (set-face-attribute 'web-mode-html-attr-name-face    nil :foreground "#aaaaaa")
;; (set-face-attribute 'web-mode-html-attr-equal-face   nil :foreground "#eeeeee")
;; (set-face-attribute 'web-mode-html-attr-value-face   nil :foreground "RosyBrown")
;; (set-face-attribute 'web-mode-html-attr-custom-face  nil :foreground "#8a9db4")
;; (set-face-attribute 'web-mode-html-attr-engine-face  nil :foreground "#00f5ff")
;; (set-face-attribute 'web-mode-comment-face           nil :foreground "Firebrick")
;; (set-face-attribute 'web-mode-constant-face          nil :foreground "aquamarine")
;; (set-face-attribute 'web-mode-css-at-rule-face       nil :foreground "plum4")
;; (set-face-attribute 'web-mode-css-selector-face      nil :foreground "orchid3")
;; (set-face-attribute 'web-mode-css-pseudo-class-face  nil :foreground "plum2")
;; (set-face-attribute 'web-mode-css-property-name-face nil :foreground "Pink3")
;; (set-face-attribute 'web-mode-preprocessor-face      nil :foreground "DarkSeaGreen")
;; (set-face-attribute 'web-mode-block-face             nil :background "color-233" :foreground "brightcyan")
;; (set-face-attribute 'web-mode-block-control-face     nil :foreground "SeaGreen")
;; (set-face-attribute 'web-mode-variable-name-face     nil :foreground "Burlywood")
;; (set-face-attribute 'web-mode-function-name-face     nil :foreground "Blue")
