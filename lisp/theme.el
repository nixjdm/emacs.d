;; fxbois' theme: see http://web-mode.org

(set-face-attribute 'default            nil :background "grey14" :foreground "ivory1")
(set-face-attribute 'fringe             nil :background "grey20")
(set-face-attribute 'highlight          nil :background "grey16")
(set-face-attribute 'mode-line          nil :box nil :background "grey26" :foreground "grey50")
(set-face-attribute 'mode-line-inactive nil :background "grey40")

(set-face-attribute 'web-mode-html-tag-face          nil :foreground "#777777")
(set-face-attribute 'web-mode-html-tag-custom-face   nil :foreground "#8a9db4")
(set-face-attribute 'web-mode-html-tag-bracket-face  nil :foreground "#aaaaaa")
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
(set-face-attribute 'web-mode-block-delimiter-face   nil :foreground "DarkSeaGreen")
(set-face-attribute 'web-mode-block-control-face     nil :foreground "SeaGreen")
(set-face-attribute 'web-mode-variable-name-face     nil :foreground "Burlywood")
(set-face-attribute 'web-mode-function-name-face     nil :foreground "Blue")

 '(package-selected-packages (quote (web-mode-edit-element))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-function-name-face ((t (:foreground "Blue"))))
 '(font-lock-string-face ((t (:foreground "VioletRed1"))))
 '(web-mode-block-face ((t (:background "color-234"))))
 '(web-mode-html-tag-bracket-face ((t (:foreground "Green")))))
