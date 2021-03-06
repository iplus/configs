;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   configuration-layer-private-directory "~/.emacs.d/private/private/"
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     better-defaults
     (auto-completion :variables
                      auto-completion-return-key-behavior nil
                      auto-completion-tab-key-behavior 'complete
                      auto-completion-complete-with-key-sequence "`"
                      auto-completion-complete-with-key-sequence-delay 0.2
                      auto-completion-enable-help-tooltip t
                      auto-completion-enable-snippets-in-popup t
                      auto-completion-enable-help-tooltip 'table-cell-map-hook
                      auto-completion-enable-sort-by-usage nil
                      auto-completion-use-menu-map t)
     helm
     ;;ivy

     org
     latex
     (markdown :variables markdown-live-preview-engine 'vmd)
     (clojure :variables
              clojure-enable-fancify-symbols t)
     my-clojure
     emacs-lisp
     java
     php
     semanticphp
     html
     javascript
     react
     (my-web-dev :variables
                 my-web-dev-php-fill-column 120)
     sql
     yaml

     (shell :variables
            shell-default-height 30
            shell-default-position 'bottom
            shell-default-shell 'eshell)
     (syntax-checking :variables syntax-checking-enable-by-default t)
     ;;(restclient :variables restclient-use-org t)
     semantic
     gtags
     version-control
     git
     github
     dash
     imenu-list
     docker

     fasd
     (ibuffer :variables ibuffer-group-buffers-by nil)
     bb-ibuffer
     bb-org
     bb-theming
     bb-web
     bb-keys
     bb-latex
     ;; w3m
     ;; ranger

     search-engine
     no-dots
     (evil-snipe :variables evil-snipe-enable-alternate-f-and-t-behaviors t)
     typography
     (spell-checking :variables
                     spell-checking-enable-auto-dictionary t
                     spell-checking-enable-by-default nil
                     ispell-program-name "/usr/local/bin/aspell")
     themes-megapack
     osx)

   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(defproject powerline org-projectile button-lock fixmee)
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '()
   dotspacemacs-download-packages 'used
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'. (default t)
   dotspacemacs-delete-orphan-packages nil))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   dotspacemacs-startup-buffer-responsive t
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https nil
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 10
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. (default t)
   dotspacemacs-check-for-update nil
   ;; One of `vim', `emacs' or `hybrid'. Evil is always enabled but if the
   ;; variable is `emacs' then the `holy-mode' is enabled at startup. `hybrid'
   ;; uses emacs key bindings for vim's insert mode, but otherwise leaves evil
   ;; unchanged. (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner nil
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'.
   ;; (default '(recents projects))
   dotspacemacs-startup-lists '(recents bookmarks projects)
   ;; Number of recent files to show in the startup buffer. Ignored if
   ;; `dotspacemacs-startup-lists' doesn't include `recents'. (default 5)
   dotspacemacs-startup-recent-list-size 5
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(minimal-light
                         solarized-light
                         zenburn
                         leuven
                         sanityinc-tomorrow-day
                         monokai
                         spacemacs-light)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   ;; dotspacemacs-default-font '("Ubuntu Mono"
   ;;                             :size 16
   ;;                             :weight normal
   ;;                             :width normal
   ;;                             :powerline-scale 1.1)
   dotspacemacs-default-font '("Source Code Pro"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m)
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; (Not implemented) dotspacemacs-distinguish-gui-ret nil
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non nil `Y' is remapped to `y$'. (default t)
   dotspacemacs-remap-Y-to-y$ t
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Home"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 10
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f), `find-spacemacs-file' (SPC f e s), and
   ;; `find-contrib-file' (SPC f e c) are replaced. (default nil)
   dotspacemacs-use-ido nil
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize t
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header t
   dotspacemacs-helm-use-fuzzy 'always
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   ;; dotspacemacs-enable-paste-micro-state t
   dotspacemacs-enable-paste-transient-state t
   enable-symbol-highlight-transient-state t
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup t
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols nil
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
   ;; derivatives. If set to `relative', also turns on relative line numbers.
   ;; (default nil)
   dotspacemacs-line-numbers t
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server t
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup 'changed
   dotspacemacs-show-transient-state-title t
   dotspacemacs-folding-method 'origami
   dotspacemacs-highlight-delimiters 'all
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init'.  You are free to put almost
any user code here.  The exception is org related code, which should be placed
in `dotspacemacs/user-config'."

  ;; (spacemacs/toggle-truncate-lines-on)
  (setq exec-path-from-shell-arguments '("-l"))
  (setq-default
   vc-follow-symlinks t
   ring-bell-function 'ignore
   whitespace-style '(face tab tab-mark)
   evil-shift-round nil)

  (setq-default
   neo-theme 'arrow
   neo-window-fixed-size nil)

  (setq browse-url-browser-function 'browse-url-generic
        engine/browser-function 'browse-url-generic
        browse-url-generic-program "/Applications/qutebrowser.app/Contents/MacOS/qutebrowser")
  ;;(setq browse-url-browser-function 'eww-browse-url
  ;;       engine/browser-function 'eww-browse-url)
  ;;(custom-set-variables
  ;; '(eclim-eclipse-dirs '("/Applications/Eclipse.app/Contents/Eclipse"))
  ;; '(eclim-executable "/Applications/Eclipse.app/Contents/Eclipse/eclim"))

  (setq-default
   ;; Whitespace mode
   whitespace-style '(face tabs tab-mark newline-mark)
   whitespace-display-mappings
   '((newline-mark 10 [172 10])
     (tab-mark 9 [9655 9]))

   ;; Flycheck
   flycheck-check-syntax-automatically '(save mode-enabled)

   ;; Avy
   avy-all-windows 'all-frames

   global-auto-highlight-symbol-mode t

   ;; shell-default-term-shell "/bin/zsh"
   ;; Ranger
   ;; ranger-override-dired t
   ;; ranger-parent-depth 2
   ;; ranger-width-parents 0.12
   ;; ranger-max-parent-width 0.12
   )
  ;; (find-file "~/org/todo.org")
  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration. You are free to put any user code."
  ;; (global-company-mode)
  (use-package fixmee
    :init
    (progn
      (global-button-lock-mode 1)
      (global-fixmee-mode 1)
      (spacemacs/set-leader-keys "et" 'fixmee-view-listing)))

  (add-to-list 'auto-mode-alist '("\\.volt\\'" . web-mode))
  (global-auto-revert-mode t)
  (setq-default
   ranger-cleanup-eagerly t)
  (global-set-key (kbd "s-d") 'kill-this-buffer)
  (global-set-key (kbd "s-k") 'spacemacs/kill-other-buffers)
  (global-set-key (kbd "`") 'yas-expand)

  ;; (setq cider-cljs-lein-repl
  ;;       "(do (require 'figwheel-sidecar.repl-api)
  ;;          (figwheel-sidecar.repl-api/start-figwheel!)
  ;;          (figwheel-sidecar.repl-api/cljs-repl))")

  (setq eclim-eclipse-dirs "/Applications/Eclipse.app/Contents/Eclipse"
        eclim-executable "/Applications/Eclipse.app/Contents/Eclipse/eclim")

  (defun spacemacs/cider-test-run-project-tests ()
    (interactive)
    (cider-load-buffer)
    (cider-test-run-project-tests))

  (defun spacemacs/cider-test-rerun-tests ()
    (interactive)
    (cider-load-buffer)
    (cider-test-rerun-failed-tests))

  (define-key evil-normal-state-map (kbd "j") 'evil-next-visual-line)
  (define-key evil-normal-state-map (kbd "k") 'evil-previous-visual-line)
  (define-key evil-visual-state-map (kbd "j") 'evil-next-visual-line)
  (define-key evil-visual-state-map (kbd "k") 'evil-previous-visual-line)

  (define-key evil-insert-state-map (kbd "C-g") 'evil-normal-state)
  (define-key evil-lisp-state-map (kbd "C-g") 'evil-normal-state)
  (define-key evil-visual-state-map (kbd "C-g") 'evil-normal-state)

  (define-key evil-insert-state-map (kbd "C-e") 'end-of-line)
  (define-key evil-insert-state-map (kbd "C-a") 'beginning-of-line-text)
  (define-key evil-insert-state-map (kbd "C-h") 'delete-backward-char)
  (define-key evil-insert-state-map (kbd "TAB") 'yas-expand)
  (set-face-background 'hl-line "white")
  (set-face-attribute hl-line-face nil :box "orange")
  ;; (evil-define-key 'insert (kbd "C-c") 'evil-normal-state)
  ;; (define-key evil-insert-state-map (kbd "k") 'evil-previous-visual-line)
  (evil-leader/set-key
    "," 'save-buffer
    "w TAB" 'ace-window
    "os" 'just-one-space)

  (setq evil-insert-state-modes (delq 'term-mode evil-insert-state-modes))
  (setq w3m-home-page "http://www.google.com")
  ;; W3M Home Page
  (setq w3m-default-display-inline-images t)
  (setq w3m-default-toggle-inline-images t)
  ;; W3M default display images
  (setq w3m-command-arguments '("-cookie" "-F"))
  (setq w3m-use-cookies t)
  ;; W3M use cookies
  ;; (setq browse-url-browser-function 'w3m-browse-url)
  ;; Browse url function use w3m
  (setq w3m-view-this-url-new-session-in-background t)

  (add-hook 'text-mode-hook 'auto-fill-mode)
  ;; (add-hook 'dired-mode-hook 'deer)
  (add-hook 'before-save-hook 'delete-trailing-whitespace)

  ;; Spaceline
  (setq powerline-default-separator 'arrow
        spaceline-buffer-encoding-abbrev-p nil
        spaceline-version-control-p nil)

  ;; (add-hook 'prog-mode-hook 'page-break-lines-mode)
  (add-hook 'prog-mode-hook 'turn-on-evil-mc-mode)
  (add-hook 'prog-mode-hook 'spacemacs/toggle-indent-guide-on)
  (add-hook 'prog-mode-hook 'spacemacs/toggle-fill-column-indicator-on)

  ;; Disable smartparens highlight
  (with-eval-after-load 'smartparens
    (show-smartparens-global-mode -1))

  ;; Semantic fucks up scrolling
  (with-eval-after-load 'semantic
    (setq semantic-submode-list (delq 'global-semantic-stickyfunc-mode semantic-submode-list))
    )

  ;; ORG-MODE
  (setq org-agenda-files '("~/org" "~/org/mind"))

  ;; (persp-switch "@Org")
  ;; (org-agenda nil "a")

  (eval-after-load 'org
    (lambda()
      (require 'ob-emacs-lisp)
      (require 'ob-latex)
      (require 'ob-sql)
      (require 'ob-shell)
      (require 'ob-sqlite)
      (require 'ob-org)
      (require 'ob-css)
      (setq org-image-actual-width nil)
      (org-babel-do-load-languages
       'org-babel-load-languages
       '((ditaa . t)))
      (setq org-export-babel-evaluate nil)
      (setq org-startup-indented t)
      ;; increase imenu depth to include third level headings
      (setq org-imenu-depth 3)
      ;; Set sensible mode for editing dot files
      (add-to-list 'org-src-lang-modes '("dot" . graphviz-dot))
      ;; Update images from babel code blocks automatically
      (add-hook 'org-babel-after-execute-hook 'org-display-inline-images)
      (setq org-src-fontify-natively t)
      (setq org-src-tab-acts-natively t)
      (setq org-ditaa-jar-path "~//bin/")
      (setq org-confirm-babel-evaluate nil)))


  ;; Bind avy to s and S in Normal and Visual.
  ;; Move evil-surround-region to gs in Visual
  (define-key evil-normal-state-map (kbd "s") 'avy-goto-word-1)
  (define-key evil-motion-state-map (kbd "s") 'avy-goto-word-1)
  (define-key evil-normal-state-map (kbd "S") 'avy-goto-char-timer)
  (define-key evil-motion-state-map (kbd "S") 'avy-goto-char-timer)
  (evil-define-key 'visual evil-surround-mode-map "s" 'avy-goto-word-1)
  (evil-define-key 'visual evil-surround-mode-map "S" 'avy-goto-char-timer)
  (evil-define-key 'visual evil-surround-mode-map "gs" 'evil-surround-region)

  ;; Diminish gtags minor mode indicator
  (with-eval-after-load 'ggtags
    (spacemacs|diminish ggtags-mode))

  (with-eval-after-load 'magit
    (add-hook 'magit-status-headers-hook 'magit-insert-repo-header t))



  ;; Additional packages
  ;; (use-package helm-flycheck
  ;;   :defer t
  ;;   :init
  ;;   (spacemacs/set-leader-keys "ee" 'helm-flycheck))
  ;; (use-package helm-fuzzier
  ;;   :defer t
  ;;   :commands helm-fuzzier-mode
  ;;   :init
  ;;   (with-eval-after-load 'helm
  ;;     (helm-fuzzier-mode t)))

  (use-package defproject
    :commands defproject)

  (spacemacs/toggle-centered-point-globally-on)
  ;; (spacemacs/toggle-golden-ratio-on)
  )

(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
  (custom-set-variables
   ;; custom-set-variables was added by Custom.
   ;; If you edit it by hand, you could mess it up, so be careful.
   ;; Your init file should contain only one such instance.
   ;; If there is more than one, they won't work right.
   '(eclim-eclipse-dirs (quote ("/Applications/Eclipse.app/Contents/Eclipse")) t)
   '(eclim-executable "/Applications/Eclipse.app/Contents/Eclipse/eclim" t)
   '(package-selected-packages
     (quote
      (clojure-semantic nav fixmee string-utils back-button button-lock ucs-utils smartrep nav-flash persistent-soft list-utils madhat2r-theme solarized-theme helm-themes helm-swoop helm-purpose helm-projectile helm-mode-manager helm-gtags helm-gitignore helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag flyspell-correct-helm ace-jump-helm-line powerline alert log4e gntp markdown-mode skewer-mode simple-httpd window-purpose imenu-list parent-mode haml-mode fringe-helper git-gutter+ git-gutter gh marshal logito pcache ht flyspell-correct flx smartparens iedit anzu evil goto-chg undo-tree json-mode tablist magit-popup docker-tramp json-snatcher json-reformat diminish projectile helm-dash swiper web-completion-data dash-functional tern restclient know-your-http-well pos-tip hydra inflections edn multiple-cursors paredit peg eval-sexp-fu highlight seq spinner pkg-info clojure-mode epl bind-map bind-key yasnippet packed async avy auto-complete popup php-mode f s dash org counsel with-editor js2-mode flycheck-clojure eclim autothemer magit auctex ws-butler winum tao-theme sayid org-download neotree moe-theme lispy jazz-theme info+ eshell-z counsel-projectile cider company flycheck helm helm-core git-commit ivy zoutline zonokai-theme zenburn-theme zen-and-art-theme yaml-mode xterm-color which-key wgrep web-mode web-beautify volatile-highlights vmd-mode vi-tilde-fringe uuidgen use-package unfill underwater-theme ujelly-theme typo twilight-theme twilight-bright-theme twilight-anti-bright-theme tronesque-theme toxi-theme toc-org tangotango-theme tango-plus-theme tango-2-theme tagedit sunny-day-theme sublime-themes subatomic256-theme subatomic-theme stickyfunc-enhance srefactor sql-indent spacemacs-theme spaceline spacegray-theme sourcerer-theme soothe-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme smex smeargle slim-mode shell-pop seti-theme semantic-php scss-mode sass-mode reverse-theme reveal-in-osx-finder restart-emacs request rainbow-delimiters railscasts-theme queue quelpa purple-haze-theme pug-mode professional-theme popwin planet-theme phpunit phpcbf php-refactor-mode php-extras php-auto-yasnippets phoenix-dark-pink-theme phoenix-dark-mono-theme persp-mode pcre2el pbcopy pastels-on-dark-theme parinfer paradox osx-trash osx-dictionary origami orgit organic-green-theme org-projectile org-present org-pomodoro org-plus-contrib org-bullets open-junk-file omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme ob-restclient ob-http noctilux-theme niflheim-theme nginx-mode naquadah-theme mwim mustang-theme multi-term move-text monokai-theme monochrome-theme molokai-theme mmm-mode minimal-theme material-theme markdown-toc majapahit-theme magit-gitflow magit-gh-pulls macrostep lush-theme lorem-ipsum livid-mode linum-relative link-hint light-soap-theme less-css-mode launchctl js2-refactor js-doc jbeans-theme ivy-purpose ivy-hydra ir-black-theme inkpot-theme indent-guide ido-vertical-mode ibuffer-projectile hungry-delete htmlize hl-todo highlight-parentheses highlight-numbers highlight-indentation hide-comnt heroku-theme hemisu-theme help-fns+ helm-make hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme google-translate golden-ratio gnuplot gitignore-mode github-search github-clone github-browse-file gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gist gh-md ggtags gandalf-theme flyspell-correct-ivy flycheck-pos-tip flx-ido flatui-theme flatland-theme firebelly-theme fill-column-indicator fasd farmhouse-theme fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-snipe evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu espresso-theme eshell-prompt-extras esh-help erlang engine-mode emmet-mode elisp-slime-nav dumb-jump drupal-mode dracula-theme dockerfile-mode docker django-theme diff-hl defproject dash-at-point darktooth-theme darkokai-theme darkmine-theme darkburn-theme dakrone-theme cyberpunk-theme counsel-dash company-web company-tern company-statistics company-restclient company-quickhelp company-emacs-eclim company-auctex column-enforce-mode color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized coffee-mode clues-theme clojure-snippets clj-refactor clean-aindent-mode cider-eval-sexp-fu cherry-blossom-theme busybee-theme bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme auto-yasnippet auto-highlight-symbol auto-dictionary auto-compile apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes aggressive-indent afternoon-theme adaptive-wrap ace-window ace-link ac-ispell)))
   '(safe-local-variable-values
     (quote
      ((TeX-engine . pdflatex)
       (TeX-command-extra-options . "-shell-escape")
       (mangle-whitespace . t)
       (phpunit-configuration-file . "tests/phpunit_full_without_api.xml")))))
  )
