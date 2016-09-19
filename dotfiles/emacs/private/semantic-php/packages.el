(setq semantic-php-packages '(cedet
                              (ede-php-autoload :location (recipe :fetcher github
                                                                  :repo "stevenremot/ede-php-autoload"))
                              (semantic-php :location (recipe :fetcher github
                                                              :repo "trashofmasters/semantic-php"))))
(defun semantic-php/init-cedet ())

(defun semantic-php/init-ede-php-autoload ()
  ;; (add-hook 'php-mode-hook #'ede-php-autoload-mode)
  ;; (use-package ede-php-autoload
    ;; :defer t
  ;;   ;; :mode ("\\.php\\'" . php-mode)
  ;;   ;; :init (push "~/.emacs.d/" load-path)
  ;;   :config (progn
  ;;             (global-ede-mode t)
  ;;             (require 'ede-php-autoload)
  ;;             (require 'ede-php-autoload-mode)
  ;;             (add-hook 'php-mode-hook #'ede-php-autoload-mode)
              ;; ))
  ;; (use-package ede-php-autoload
    ;; :commands ede-php-autoload-mode
    ;; :load-path "~/.emacs.d/ede-php-autoload/"
    ;; :init (progn
    ;;         (add-hook 'php-mode-hook 'global-ede-mode)
    ;;         (add-hook 'php-mode-hook 'ede-php-autoload-mode)
    ;;         )
    ;; :config (ede-php-autoload-project "My project"
    ;;                                   :file "~/dev/yorso/yorso")
    ;; )
  ;; )
  )

(defun semantic-php/init-semantic-php ()
  (use-package semantic-php
               ;; :defer t
               ;; :mode ("\\.php\\'" . php-mode)
               :init (progn
                         (require 'grammar-setup)
                         (add-hook 'php-mode-hook #'semantic-mode)) ))
