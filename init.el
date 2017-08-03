;; require melpa to download web-mode
(require 'package)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))
;; Add .el files to load path
(add-to-list 'load-path "~/.emacs.d/lisp/")
;; Call for package initialization now, and not after this file is finished evaluating
(package-initialize)
(setq package-enable-at-startup nil)
;; Configure web-mode work
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.less?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css?\\'" . web-mode))
(setq web-mode-engines-alist
      '(("django"    . "\\.html\\'")))
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
;; Delete trailing whitespace automatically
(add-hook 'local-write-file-hooks
            (lambda ()
               (delete-trailing-whitespace)
               nil))
;; No tabs
(setq-default indent-tabs-mode nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (flymd markdown-mode web-mode-edit-element))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-string-face ((t (:foreground "VioletRed3"))))
 '(font-lock-type-face ((t (:foreground "brightgreen"))))
 '(web-mode-block-control-face ((t (:inherit nil :foreground "brightcyan"))))
 '(web-mode-block-delimiter-face ((t (:inherit font-lock-preprocessor-face :foreground "brightcyan"))))
 '(web-mode-block-face ((t (:background "color-233"))))
 '(web-mode-current-column-highlight-face ((t (:background "black"))))
 '(web-mode-html-tag-bracket-face ((t (:foreground "color-246")))))

;; fxbois' theme: see http://web-mode.org plus Joe's tweaks

(set-face-attribute 'default            nil :background "color-233" :foreground "ivory1")
(set-face-attribute 'fringe             nil :background "gray20")
(set-face-attribute 'highlight          nil :background "gray16")
(set-face-attribute 'mode-line          nil :box nil :background "gray26" :foreground "grey50")
(set-face-attribute 'mode-line-inactive nil :background "gray40")
(set-face-attribute 'font-lock-function-name-face    nil :foreground "Blue")
(set-face-attribute 'font-lock-string-face           nil :foreground "VioletRed1")

(set-face-attribute 'web-mode-html-tag-face          nil :foreground "#777777")
(set-face-attribute 'web-mode-html-tag-custom-face   nil :foreground "#8a9db4")
(set-face-attribute 'web-mode-html-tag-bracket-face  nil :foreground "gray70")
(set-face-attribute 'web-mode-html-attr-name-face    nil :foreground "#aaaaaa")
(set-face-attribute 'web-mode-html-attr-equal-face   nil :foreground "#eeeeee")
(set-face-attribute 'web-mode-html-attr-value-face   nil :foreground "RosyBrown")
(set-face-attribute 'web-mode-html-attr-custom-face  nil :foreground "#8a9db4")
(set-face-attribute 'web-mode-html-attr-engine-face  nil :foreground "#00f5ff")
(set-face-attribute 'web-mode-comment-face           nil :foreground "Firebrick")
(set-face-attribute 'web-mode-constant-face          nil :foreground "aquamarine")
(set-face-attribute 'web-mode-css-at-rule-face       nil :foreground "plum4")
(set-face-attribute 'web-mode-css-selector-face      nil :foreground "orchid3")
(set-face-attribute 'web-mode-css-pseudo-class-face  nil :foreground "plum2")
(set-face-attribute 'web-mode-css-property-name-face nil :foreground "Pink3")
(set-face-attribute 'web-mode-preprocessor-face      nil :foreground "DarkSeaGreen")
(set-face-attribute 'web-mode-block-face             nil :background "color-233" :foreground "brightcyan")
(set-face-attribute 'web-mode-block-control-face     nil :foreground "SeaGreen")
(set-face-attribute 'web-mode-variable-name-face     nil :foreground "Burlywood")
(set-face-attribute 'web-mode-function-name-face     nil :foreground "Blue")
