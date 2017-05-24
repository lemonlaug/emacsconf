;;No scrolling no tool-bar.
(if window-system
    (tool-bar-mode 0))
(if window-system
     (scroll-bar-mode -1))
(setq mac-option-key-is-meta 1)
(setq vc-follow-symlinks t)

;Show column.
(setq column-number-mode t)

;;Packages
(require 'package)
;;(require 'melpa)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)

;;(setq exec-path (append exec-path '("/usr/local/bin")))

;;
(setq custom-file "~/.emacs.d/custom.el")

(defvar myPackages
  '(elpy
    company
    find-file-in-project
    highlight-indentation
    ivy
    magit
    git-commit
    magit-popup
    markdown-mode
    material-theme
    pyenv-mode
    python-mode
    pythonic
    f
    pyvenv
    s
    with-editor
    dash
    async
    yaml-mode
    yasnippet
    better-shell
))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      myPackages)

;; BASIC CUSTOMIZATION
;; --------------------------------------
(load-theme 'material t) ;; load material theme

;;Elpy
(elpy-enable)
(elpy-use-ipython)
(pyenv-mode)
(setq python-shell-interpreter-args "--simple-prompt --pprint")

;;m magit
(global-set-key (kbd "C-x g") 'magit-status)
