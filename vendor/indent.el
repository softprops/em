
; ------------ what version of emacs? -----------------
; true if we're under NT
(setq version-os-nt     (equal (getenv "OS") "Windows_NT"))

; true if we're under XEmacs (www.xemacs.org)
(setq version-xemacs    (string-match "XEmacs\\|Lucid" emacs-version))

; true if we're under regular emacs
(setq version-emacs     (not version-xemacs))

; true if we're running under anything other than a text terminal
(setq version-not-term  (not (not window-system)))

; true under regular emacs and X windows
(setq version-emacs-x   (and (not version-xemacs) (equal window-system 'x)))

; ------------------ indentation -------------------------
; alt-left and alt-right: indent/outdent
(defun my-indent-fn (cols)
  (cond               ; I tried hard to write a portable version but..
    (version-emacs
      ; since this fn modifies the contents of the buffer,
      ; transient-mark-mode turns off the mark afterward,
      ; and there appears to be nothing I can do about it;
      ; so I must turn it off first, modify the buffer, then
      ; turn it on.  yay Gnu.
      (transient-mark-mode nil)
      (let ((m (mark))
            (p (point)))
         (if (< m p)
           (indent-rigidly m p cols)   ; do the real in/outdent
           (indent-rigidly p m cols)
         )
         ; this doesn't work...
         ;(let ((new-point (point)))
         ;  (goto-char m)               ; return to previous mark
         ;  (turn-on-mark)              ; start selecting
         ;  (goto-char new-point)       ; back to where we ended up after in/outdent
         ;)
      )
      (transient-mark-mode t)
    )

    (version-xemacs
      (default-selection)               ; nice shortcut, wish it worked above
      (interactive)
      (let ((m (mark))
            (p (point)))
         (if (< m p)
           (indent-rigidly m p cols)    ; do the real in/outdent
           (indent-rigidly p m cols)
         )
      )
      (keep-region-selected)
    )
  ))


; by the way, if I haven't said it already: GNU SUCKS!
; the only way the indent functions don't invisibilize the selected
; text is if the handler fn causes an error.  that's right, the fn must
; cause an error for it to work right.  what the hell.  's not worth it.

(defun my-indent ()
  "indent region by 2 columns"
  (interactive)
  (my-indent-fn 2))
(defun my-outdent ()
  "outdent region by 2 columns"
  (interactive)
  (my-indent-fn -2))


(global-set-key (kbd "M-+") 'my-indent)
(global-set-key (kbd "M-?") 'my-outdent)