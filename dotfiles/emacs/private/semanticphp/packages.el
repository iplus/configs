(setq semanticphp-packages '(cedet
                             ede-php-autoload
                              ;; (ede-php-autoload :location (recipe :fetcher github
                              ;;                                     :repo "stevenremot/ede-php-autoload"))
                              (semantic-php :location (recipe :fetcher github
                                                              :repo "trashofmasters/semantic-php"))))
(defun semanticphp/init-cedet ()
  (use-package cedet))

(defun semanticphp/init-ede-php-autoload ()
   (add-hook 'php-mode-hook #'ede-php-autoload-mode))

;;(defun semanticphp/init-ede-php-autoload ()
  ;; (add-hook 'php-mode-hook #'ede-php-autoload-mode)
;;  (use-package ede-php-autoload
    ;; :defer t
  ;;   ;; :mode ("\\.php\\'" . php-mode)
  ;;   ;; :init (push "~/.emacs.d/" load-path)
;;    :load-path "~/.emacs.d/private/semantic-php/ede-php-autoload/"
;;    :config (progn
;;              (global-ede-mode t)
  ;;             (require 'ede-php-autoload)
  ;;             (require 'ede-php-autoload-mode)
;;              (add-hook 'php-mode-hook #'ede-php-autoload-mode)
;;              ))
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
;;  )

(defun semanticphp/init-semantic-php ()
  (use-package semantic-php
               ;; :defer t
               ;; :mode ("\\.php\\'" . php-mode)
               :init (progn
                         (require 'grammar-setup)
                         (add-hook 'php-mode-hook #'semantic-mode)) ))
