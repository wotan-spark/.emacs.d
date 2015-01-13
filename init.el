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


;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
(when
    (load
     (expand-file-name "~/.emacs.d/elpa/package.el"))
  (package-initialize))
