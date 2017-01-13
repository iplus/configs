(defconst my-clojure-packages
  '(parinfer
    lispy
    (sayid :location (recipe :repo "bpiel/sayid"
                             :fetcher github
                             :files ("src/el/*.el")))))


(defun my-clojure/init-sayid ())

(defun my-clojure/init-lispy ())

(defun my-clojure/init-parinfer ()
  (use-package parinfer
    :ensure t
    :bind
    (("C-," . parinfer-toggle-mode))
    :init
    (progn
      (setq parinfer-extensions
            '(defaults       ; should be included.
               pretty-parens  ; different paren styles for different modes.
               evil           ; If you use Evil.
               lispy          ; If you use Lispy. With this extension, you should install Lispy and do not enable lispy-mode directly.
               ;; paredit        ; Introduce some paredit commands.
               smart-tab      ; C-b & C-f jump positions and smart shift with tab & S-tab.
               smart-yank))   ; Yank behavior depend on mode.
      (add-hook 'clojure-mode-hook #'parinfer-mode)
      (add-hook 'emacs-lisp-mode-hook #'parinfer-mode)
      (add-hook 'common-lisp-mode-hook #'parinfer-mode)
      (add-hook 'scheme-mode-hook #'parinfer-mode)
      (add-hook 'lisp-mode-hook #'parinfer-mode))))
