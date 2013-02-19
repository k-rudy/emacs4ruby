(when (not package-archive-contents)
  (package-refresh-contents))

;; Add in your own as you wish:
(defvar my-packages '(starter-kit starter-kit-lisp starter-kit-bindings ecb color-theme markdown-mode ruby-mode flymake-ruby
                      inf-ruby ruby-electric ruby-end ruby-test-mode robe lua-mode ruby-compilation rvm rinari)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; Needed to get rid of ECB stack error
(setq stack-trace-on-error t)

;; Link markdown mode to .md files
(setq auto-mode-alist (cons '("\\.md" . markdown-mode) auto-mode-alist))

;; Link ruby mode to files
(setq auto-mode-alist (cons '("\\.\\(rb\\|ru\\|builder\\|rake\\|thor\\|gemspec\\)\\'" . ruby-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\(rake\\|thor\\|guard\\|gem\\|cap\\|vagrant\\)file\\'" . ruby-mode) auto-mode-alist))

;; Remove trailing whitespaces before save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Show line numbers
(global-linum-mode 1)


;; RVM configuration
(require 'rvm)
(rvm-use-default)

;; Beginning of the el4r block:
;; RCtool generated this block automatically. DO NOT MODIFY this block!
;;(add-to-list 'load-path "~/.rvm/rubies/ruby-1.9.3-p327/share/emacs/site-lisp")
;;(require 'el4r)
;;(el4r-boot)
;; End of the el4r block.
;; User-setting area is below this line.

;; Robe initialization
(add-hook 'ruby-mode-hook 'robe-mode)

; Flymake initialization for ruby syntax checking
(require 'flymake-ruby)
(add-hook 'ruby-mode-hook 'flymake-ruby-load)

;; Default project to load
(load "~/.emacs.d/projects/datac.el")
