;;; White Space
(require 'whitespace)
(global-whitespace-mode 0)

;;; Cua Mode
(cua-mode t)
(setq cua-enable-cua-keys nil)


;;;; PHP Mode
(when (require 'php-mode nil t)
  (add-to-list 'auto-mode-alist '("\\.ctp\\'" . php-mode))
  (add-to-list 'auto-mode-alist '("\\.tpl\\'" . php-mode))
  (setq php-search-url "http://jp.php.net/ja/")
  (setq php-manual-url "http://jp.php.net/manual/ja/")
  
  (defun php-indent-hook()
    (setq indent-tabs-mode nil)
    (setq c-basic-offset 4)
  )
  (add-hook 'php-mode-hook 'php-indent-hook)
)
