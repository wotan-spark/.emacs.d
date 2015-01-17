;;; add-to-load-path function
(defun add-to-load-path(&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory(expand-file-name(concat user-emacs-directory path))))
        (add-to-list 'load-path default-directory)
        (if 
          (fboundp 'normal-top-level-add-subdirs-to-load-path)
          (normal-top-level-add-subdirs-to-load-path)
        )
      )
    )
  )
)

;;; add load-path
(add-to-load-path "server" "conf" "themes" "elisp" "elpa" "public_repos")

;;; http://coderepos.org/share/browser/lang/elisp/init-loader/init-loader.el
(require 'init-loader)
(init-loader-load "~/.emacs.d/conf")

;;; Package
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives  '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)
