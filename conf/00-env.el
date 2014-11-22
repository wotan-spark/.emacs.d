;;; Startup Message
(setq inhibit-startup-message t)

;;; Yes Or No P
(defalias 'yes-or-no-p 'y-or-n-p)

;;; Auto Install
(require 'auto-install)
(setq auto-install-directory "~/.emacs.d/elisp")
(auto-install-update-emacswiki-package-name t)
(auto-install-compatibility-setup)
(setq ediff-window-setup-function 'ediff-setup-windows-plain)
