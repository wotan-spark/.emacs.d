;;; Frame Title
(setq frame-title-format "%f")

;;; Tool Bar
(tool-bar-mode -1)

;;; Menu Bar
(menu-bar-mode t)

;;; Scroll Bar
(scroll-bar-mode 0)

;;; Line Numbers
(global-linum-mode t)

;;; Transparent
(set-frame-parameter nil 'alpha 80)

;;; Highlight Current Line
(global-hl-line-mode t)

;;; Show Paren Mode
(setq show-paren-delay 0)
(show-paren-mode t)
(setq show-paren-style 'expression)

(set-face-background 'show-paren-match-face nil)
(set-face-underline-p 'show-paren-match-face "#dc143c") ; crimson
