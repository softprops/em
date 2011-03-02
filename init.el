; "use only what you need"

(defvar *emacs-load-start* (current-time))

; external executables
(push "/usr/local/bin" exec-path)

; no menus
(menu-bar-mode -1)

; no tool bars
(if (string-equal system-type "gnu/kfreebsd")
  (tool-bar-mode -1))

; no splashing
; put this in .emacs file
;(setq inhibit-splash-screen t)

(add-to-list 'load-path "~/.emacs.d")

; no #foo#
(setq auto-save-default nil)

; no foo~
(setq backup-inhibited t)

; indentation
(setq standard-indent 2)
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
(load "~/.emacs.d/vendor/indent.el")

; char-encoding
(prefer-coding-system 'utf-8)
(set-language-environment 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
; introduced post-Emacs 21.3
(setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING))
(setq default-buffer-file-coding-system 'utf-8)

; whitespace
;(global-whitespace-mode t)
;(setq show-trailing-whitespace t)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

; scala
(add-to-list 'load-path "~/.emacs.d/vendor/scala-mode")
(require `scala-mode-auto)

; SUPER scala!!
;; Load the ensime lisp code...
(add-to-list 'load-path "~/.emacs.d/vendor/ensime/elisp")
(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

; markdown
(add-to-list 'load-path "~/.emacs.d/vendor/markdown-mode")
(autoload 'markdown-mode "markdown-mode.el"
  "Major mode for editing Markdown files" t)
(setq auto-mode-alist (append
  '(("\\.markdown$" . markdown-mode))
  '(("\\.md$" . markdown-mode))
   auto-mode-alist))

; js*
(add-to-list 'load-path "~/emacs.d/vendor/js2.el")
(autoload 'js2-mode "js2" nil t)
(setq js2-bounce-indent-p t)
(setq auto-mode-alist (append
  '(("\\.js$" . js2-mode))
  '(("\\.json$" . js2-mode))
  auto-mode-alist))

; coffee-script
; see https://github.com/defunkt/coffee-mode for more fixins
(add-to-list 'load-path "~/.emacs.d/vendor/coffee-mode")
(require 'coffee-mode)
(setq auto-mode-alist (append
  '(("\\.coffee$" . coffee-mode))
  '(("Cakefile" . coffee-mode))
  auto-mode-alist))

; ruby
(autoload 'ruby-mode "ruby-mode" "Mode for editing ruby source files" t)
(autoload 'run-ruby "inf-ruby" "Run an inferior Ruby process")
(setq auto-mode-alist (append
  '(("\\.rb$" . ruby-mode))
  '(("Rakefile" . ruby-mode))
  '(("Capfile" . ruby-mode))
  '(("\\.rake" . ruby-mode))
  auto-mode-alist))

; nxhtml (for fundamental web stuffs)
(load "~/.emacs.d/vendor/nxhtml/autostart.el")
(setq
  nxhtml-global-minor-mode t
  mumamo-chunk-coloring 'submode-colored
  nxhtml-skip-welcome t
  indent-region-mode t
  rng-nxml-auto-validate-flag nil
  nxml-degraded t)
(eval-after-load 'nxhtml
  '(eval-after-load 'color-theme
     (custom-set-faces
       '(mumamo-background-chunk-major ((((class color) (min-colors 88) (background dark)) (:background "#242424"))))
       '(mumamo-background-chunk-submode1 ((((class color) (min-colors 88) (background dark)) (:background "#373736"))))
)))

; colors
(add-to-list 'load-path "~/.emacs.d/vendor/color-theme-6.6.0")
(require 'color-theme)
(color-theme-initialize)
(setq color-theme-is-global t)
(load-file "~/.emacs.d/vendor/color-theme-github/color-theme-github.el")
(color-theme-github)
;(load-file "~/.emacs.d/vendor/twilight-emacs/color-theme-twilight.el")
;(color-theme-twilight)

; buffers

(iswitchb-mode 1)
(setq iswitchb-buffer-ignore '("^ " "*Buffer"))
(setq iswitchb-buffer-ignore '("^\\*"))
(setq iswitchb-default-method 'samewindow)
; use left & right keys to navigate buffers
(defun iswitchb-local-keys ()
      (mapc (lambda (K)
	      (let* ((key (car K)) (fun (cdr K)))
    	        (define-key iswitchb-mode-map (edmacro-parse-keys key) fun)))
	    '(("<right>" . iswitchb-next-match)
	      ("<left>"  . iswitchb-prev-match)
	      ("<up>"    . ignore             )
	      ("<down>"  . ignore             ))))
    (add-hook 'iswitchb-define-mode-map-hook 'iswitchb-local-keys)
; short cut for iswitch-buffer
(global-set-key (kbd "C-b") 'iswitchb-buffer)

; tab completion
; http://www.emacswiki.org/cgi-bin/wiki/TabCompletion
(global-set-key [(tab)] 'smart-tab)
(defun smart-tab ()
  "This smart tab is minibuffer compliant: it acts as usual in
    the minibuffer. Else, if mark is active, indents region. Else if
    point is at the end of a symbol, expands it. Else indents the
    current line."
  (interactive)
  (if (minibufferp)
      (unless (minibuffer-complete)
        (dabbrev-expand nil))
    (if mark-active
        (indent-region (region-beginning)
                       (region-end))
      (if (looking-at "\\_>")
          (dabbrev-expand nil)
        (indent-for-tab-command)))))

(global-set-key (kbd "M-{") 'previous-buffer)
(global-set-key (kbd "M-}") 'next-buffer)

; ack
(load-file "~/.emacs.d/vendor/full-ack.el")
(autoload 'ack-same "full-ack" nil t)
(autoload 'ack "full-ack" nil t)
(autoload 'ack-find-same-file "full-ack" nil t)
(autoload 'ack-find-file "full-ack" nil t)
(global-set-key (kbd "M-F") 'ack)

; no distractions
(set-frame-parameter nil 'fullscreen 'fullboth)

; scm
(add-to-list 'load-path "~/.emacs.d/vendor/magit")
(require 'magit)

; tell all via https://github.com/stevej/emacs/blob/master/init.el#L53-55
(message "Emacs loaded in  %ds" (destructuring-bind (hi lo ms) (current-time)
                             (- (+ hi lo) (+ (first *emacs-load-start*) (second
                             *emacs-load-start*)))))