(when (not package-archive-contents)
  (package-refresh-contents))

;; Add in your own as you wish:
(defvar my-packages '(starter-kit starter-kit-lisp starter-kit-bindings starter-kit-ruby ecb color-theme markdown-mode flymake-ruby)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; Needed to get rid of ECB stack error
(setq stack-trace-on-error t)

;; Link markdown mode to .md files
(setq auto-mode-alist (cons '("\\.md" . markdown-mode) auto-mode-alist))

;; Remove trailing whitespaces before save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Show line numbers
(global-linum-mode 1)

;; Flymake initialization for ruby syntax checking
(add-hook 'ruby-mode-hook 'flymake-ruby-load)

;; Default project to load
(load "~/.emacs.d/projects/datac.el")
