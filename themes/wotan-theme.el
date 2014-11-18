(deftheme wotan "Created 2014-11-19.")

;;; Transparent;;; Transparent
(set-frame-parameter nil 'alpha 80)

;;; Cursor
(set-cursor-color "#ffd700") ; gold

;;; Foreground
(set-foreground-color "#ffffff") ; white
(set-face-foreground 'font-lock-comment-face "#dc143c") ; crimson
(set-face-foreground 'font-lock-string-face "#00ac97") ; sea green
(set-face-foreground 'font-lock-keyword-face "#00a1e9") ; cyan
(set-face-foreground 'font-lock-function-name-face "#00afcc") ; turquoise blue
(set-face-foreground 'font-lock-variable-name-face "#ffffff") ; white
(set-face-foreground 'font-lock-type-face "#20b2aa") ; lightseagreen
(set-face-foreground 'font-lock-builtin-face "#4169e1") ; royalblue
(set-face-foreground 'font-lock-warning-face "#ff0000") ; red

;;; Background
(set-background-color "#000000") ; black

;;; Region
(set-face-background 'region "#e4007f") ; magenta

;;;; Mode Line
(set-face-foreground 'mode-line "#000000") ; black
(set-face-background 'mode-line "#ff0000") ; red
(set-face-foreground 'mode-line-inactive "#000000") ; black
(set-face-background 'mode-line-inactive "#736d71") ; red

;;; Highlight Current Line
(set-face-background hl-line-face "#24140e") ; lamp black 

;;; Show Paren Mode
(setq show-paren-style 'expression)
(set-face-background 'show-paren-match-face nil)
(set-face-underline-p 'show-paren-match-face "#dc143c") ; crimson
