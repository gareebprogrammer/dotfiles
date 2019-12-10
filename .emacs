(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (when no-ssl
    (warn "\
Your version of Emacs does not support SSL connections,
which is unsafe because it allows man-in-the-middle attacks.
There are two things you can do about this warning:
1. Install an Emacs version that does support SSL and be safe.
2. Remove this warning from your init file so you won't see it again.")) 
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives (cons "gnu" (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)


(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; use C-x for cut
;; C-c for copy
;; C-v for paste
(cua-mode 1)

;;Stop starup screen
(setq inhibit-startup-message t) 
(setq initial-scratch-message nil)

;; turn off menu bar ;;
(menu-bar-mode -1)

;; Turn off scroll bar ;;
(toggle-scroll-bar -1)

;; Turn off tool bar ;;
(tool-bar-mode -1)

;; Stop creating backup file it's so anoying 
(setq make-backup-files nil)

;; Setting up rust stuff 
(require 'rust-mode)
(setq rust-format-on-save t)

;; Setting up javascript stuff 
(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; Better imenu
(add-hook 'js2-mode-hook #'js2-imenu-extras-mode)

;; Set default font
(add-to-list 'default-frame-alist
                       '(font . "Liberation Mono-11"))

;; Disable lock files
(setq create-lockfiles nil)

;;Load theme
(load-theme 'nimbus t)

;;Move line up
(defun move-line-up ()
  "Move up the current line."
  (interactive)
  (transpose-lines 1)
  (forward-line -2)
  (indent-according-to-mode))

;;Move line down
(defun move-line-down ()
  "Move down the current line."
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1)
  (indent-according-to-mode))

;;Set move lines
(global-set-key [(control shift up)]  'move-line-up)
(global-set-key [(control shift down)]  'move-line-down)


;;Set goto lines
(global-set-key (kbd "C-c g") 'goto-line)

;;Set Note and Todo in color
(setq fixme-modes '(c++-mode c-mode emacs-lisp-mode))
 (make-face 'font-lock-fixme-face)
 (make-face 'font-lock-note-face)
 (mapc (lambda (mode)
	 (font-lock-add-keywords
	  mode
	  '(("\\<\\(TODO\\)" 1 'font-lock-fixme-face t)
            ("\\<\\(NOTE\\)" 1 'font-lock-note-face t))))
	fixme-modes)
 (modify-face 'font-lock-fixme-face "Red" nil nil t nil t nil nil)
 (modify-face 'font-lock-note-face "Dark Green" nil nil t nil t nil nil)
