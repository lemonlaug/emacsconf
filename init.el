;;; startup -- summary
;;; Commentary:
;;; Just an init.

;;; Code:
;;No scrolling no tool-bar.
(tool-bar-mode -1)
(scroll-bar-mode -1)

(setq mac-option-key-is-meta 1)
(setq vc-follow-symlinks t)

;Show column.
(setq column-number-mode t)

;;Packages
(require 'package)
;;(require 'melpa)
;;(add-to-list 'package-archives
;;             '("melpa-stable" . "https://stable.melpa.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)

;;(setq exec-path (append exec-path '("/usr/local/bin")))

;;
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(defvar packages-my-packages
  '(elpy
    ess
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
    julia-mode
    ledger-mode
    polymode
    flycheck
))

(mapc #'(lambda (package)
    (unless (package-installed-p package)
      (package-install package)))
      packages-my-packages)

;; BASIC CUSTOMIZATION
;; --------------------------------------
(load-theme 'material t) ;; load material theme
(setq-default indent-tabs-mode nil)

;;Elpy
(elpy-enable)
;;(elpy-use-ipython)
(pyenv-mode)
;;(setq python-shell-interpreter-args "--simple-prompt --pprint")


;;m magit
(global-set-key (kbd "C-x g") 'magit-status)

;; make backup to a designated dir, mirroring the full path

(defun my-backup-file-name (fpath)
"Return a new file path of a given file path.
FPATH is a path
 If the new path's directories does not exist, create them."
  (let* (
        (backupRootDir "~/.emacs.d/emacs-backup/")
        (backupFilePath (replace-regexp-in-string "//" "/" (concat backupRootDir fpath "~") ))
        )
    (make-directory (file-name-directory backupFilePath) (file-name-directory backupFilePath))
    backupFilePath
  )
)

(setq make-backup-file-name-function 'my-backup-file-name)

;;;;;;;
;;org-mode stuff...
;;;;;;;
(global-set-key "\C-ca" 'org-agenda)
(setq org-startup-indented 1)
(setq org-return-follows-link 1)
;;(setq org-directory "~/Sync/notes")
(setq org-agenda-files (list org-directory))
(setq org-archive-location "%s_archive::")
(setq org-default-notes-file (concat org-directory "/notes.org"))
(define-key global-map "\C-cc" 'org-capture)
(setq org-log-done 'time)

(setq org-agenda-custom-commands
      '(("S" "Last week's snippet" tags
         "CLOSED>=\"<-1w>\""
         ((org-agenda-overriding-header "Last week's completed TODOs")))))

;; Rmd files edit as Markdown!
(require 'poly-R)
(require 'poly-markdown)
(add-to-list 'auto-mode-alist '("\\.Rmd" . poly-markdown+r-mode))


;; ediff customization
(setq ediff-window-setup-function 'ediff-setup-windows-plain)

;; Set up how to open links
(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program  "google-chrome")
(define-key global-map "\C-c\C-v" 'browse-url-at-point)

;;;;;;;
;;ledger-mode stuff...
;;;;;;;
(global-set-key "\C-clr" 'ledger-report-select-report)
(setq ledger-schedule-file "~/ledger/isaac_personal_schedule.ledger")

;;; Init.el ends here

