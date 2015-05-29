; "use only what you need"

(defvar *emacs-load-start* (current-time))

; external executables
(push "/usr/local/bin" exec-path)

; no welcome
(setq inhibit-startup-message t)

; no tool bars
(if (string-equal system-type "gnu/kfreebsd")
  (tool-bar-mode -1))

; no bell
(setq ring-bell-function 'ignore)

; no menus
(menu-bar-mode -1)

; no tool bars
(if (string-equal system-type "gnu/kfreebsd")
  (tool-bar-mode -1))

; no splashing
; put this in .emacs file
;(setq inhibit-splash-screen t)

;(add-to-list 'load-path "~/.emacs.d")

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
(setq auto-mode-alist (append
  '(("\\.sbt$" . scala-mode))
  '(("\\.scala$" . scala-mode))
  auto-mode-alist))

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
(setq js-enter-indents-newline t)
(setq js-basic-offset 2)
(setq js2-auto-indent-flag nil)
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

(defun coffee-custom ()
  "coffee-mode-hook"
  ;; CoffeeScript uses two spaces.
   (set (make-local-variable 'tab-width) 2)
  ;; *Messages* spam
   (setq coffee-debug-mode t)
  ;; Emacs key binding
;  (define-key coffee-mode-map [(meta r)] 'coffee-compile-buffer)
  ;; Riding edge.
  ;(setq coffee-command "~/dev/coffee"))
  ;; Compile '.coffee' files on every save
  ;(add-hook 'after-save-hook
  ;    '(lambda ()
  ;       (when (string-match "\.coffee$" (buffer-name))
  ;        (coffee-compile-file))
  ; )
)

(add-hook 'coffee-mode-hook '(lambda () (coffee-custom)))

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
(add-to-list 'load-path "~/.emacs.d/vendor/emacs-color-theme-solarized")
(require 'color-theme-solarized)(load-file "~/.emacs.d/vendor/color-theme-github/color-theme-github.el")
(color-theme-github)

(setq-default cursor-type 'bar)
(set-cursor-color "#6DE9FF")

(global-hl-line-mode 1)
;(set-face-foreground 'hl-line "#000")
;(set-face-background 'hi-line "#eee")

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

; lefty <-> righty
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
; (set-frame-parameter nil 'fullscreen 'fullboth)

; scm
;(add-to-list 'load-path "~/.emacs.d/vendor/magit")
;(require 'magit)

; symbol jump - http://chopmo.blogspot.com/2008/09/quickly-jumping-to-symbols.html
(defun ido-goto-symbol ()
  "Will update the imenu index and then use ido to select a
   symbol to navigate to"
  (interactive)
  (imenu--make-index-alist)
  (let ((name-and-pos '())
        (symbol-names '()))
    (flet ((addsymbols (symbol-list)
                       (when (listp symbol-list)
                         (dolist (symbol symbol-list)
                           (let ((name nil) (position nil))
                             (cond
                              ((and (listp symbol) (imenu--subalist-p symbol))
                               (addsymbols symbol))

                              ((listp symbol)
                               (setq name (car symbol))
                               (setq position (cdr symbol)))

                              ((stringp symbol)
                               (setq name symbol)
                               (setq position (get-text-property 1 'org-imenu-marker symbol))))

                             (unless (or (null position) (null name))
                               (add-to-list 'symbol-names name)
                               (add-to-list 'name-and-pos (cons name position))))))))
      (addsymbols imenu--index-alist))
    (let* ((selected-symbol (ido-completing-read "Symbol? " symbol-names))
           (position (cdr (assoc selected-symbol name-and-pos))))
      (goto-char position))))
(global-set-key (kbd "M-s") 'ido-goto-symbol)

(defun toggle-fullscreen (&optional f)
      (interactive)
      (let ((current-value (frame-parameter nil 'fullscreen)))
           (set-frame-parameter nil 'fullscreen
                                (if (equal 'fullboth current-value)
                                    (if (boundp 'old-fullscreen) old-fullscreen nil)
                                    (progn (setq old-fullscreen current-value)
                                           'fullboth)))))
(global-set-key (kbd "M-!") 'toggle-fullscreen)

; tell all via https://github.com/stevej/emacs/blob/master/init.el#L53-55
;(message "Emacs loaded in  %ds" (destructuring-bind (hi lo ms) (current-time)
;                             (- (+ hi lo) (+ (first *emacs-load-start*) (second
;                             *emacs-load-start*)))))

;(set-face-attribute 'default nil :height 290)


