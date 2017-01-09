(setq semanticphp-packages '(cedet
                             ;; ede-php-autoload
                             ;; (ede-php-autoload :location (recipe :fetcher github
                             ;;                                     :repo "stevenremot/ede-php-autoload"))
                             (semantic-php :location (recipe :fetcher github
                                                             :repo "trashofmasters/semantic-php"))))
(defun semanticphp/init-cedet ())

(defun semanticphp/init-semantic-php ()
  (use-package semantic-php
    :defer t
    :mode ("\\.php\\'" . php-mode)
    :init (progn
            (require 'grammar-setup)
            (add-hook 'php-mode-hook #'semantic-mode)) ))
