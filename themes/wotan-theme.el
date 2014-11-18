(deftheme wotan "Created 2014-11-19.")

;;; Transparent;;; Transparent
(set-frame-parameter nil 'alpha 80)

;;; Show Paren Mode
(setq show-paren-style 'expression)
(set-face-background 'show-paren-match-face nil)
(set-face-underline-p 'show-paren-match-face "#dc143c") ; crimson
