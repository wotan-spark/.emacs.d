;;; Emacs Client
(server-start)

;;; Startup Message
(setq inhibit-startup-message t)

;;; Yes Or No P
(defalias 'yes-or-no-p 'y-or-n-p)

;;; Auto Install
(require 'auto-install)
(setq auto-install-directory "~/.emacs.d/elisp")
(auto-install-update-emacswiki-package-name t)
(auto-install-compatibility-setup)

;;; Coding
(prefer-coding-system 'utf-8)

(when (eq system-type 'windows-nt)
  (setq default-file-name-coding-system 'shift_jis)
  (set-file-name-coding-system 'cp932)
  (set-keyboard-coding-system 'cp932)
  (set-terminal-coding-system 'cp932)
)

;;; Auto Complete Mode
(require 'auto-complete-config)
(global-auto-complete-mode 1)

;;; Color Moccur
(require 'color-moccur)
(setq moccur-split-word t)
;;; Moccur Edit
(require 'moccur-edit)
(setq moccur-split-word t)

;;; Backup Directory
(add-to-list 'backup-directory-alist
  (cons "." "~/.emacs.d/backup")
)
(setq auto-save-file-name-transforms
  `((".*",(expand-file-name "~/.emacs.d/backup")) t)
)

;;; Save Hist
(savehist-mode 1)

;;; Save Place
(require 'saveplace)
(setq-default save-place t)

;;; Ediff
(setq ediff-window-setup-function 'ediff-setup-windows-plain)
(setq ediff-split-window-function 'split-window-horizontally)
