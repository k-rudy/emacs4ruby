(when (not package-archive-contents)
  (package-refresh-contents))

;; Add in your own as you wish:
(defvar my-packages '(starter-kit starter-kit-lisp starter-kit-bindings starter-kit-ruby ecb-snapshot ruby-mode color-theme)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; Needed to get rid of ECB stack error
(setq stack-trace-on-error t)

;; Default project to load
(load "~/.emacs.d/projects/datac.el")
