;; Emacs configuration file.
;; Bertrand B.

;; File name in the title.
(setq frame-title-format '(buffer-file-name "Emacs: %b (%f)" "Emacs: %b"))

;; Display line and column number.
(column-number-mode t)
(line-number-mode t)

;; Display line number on the left.
(require 'linum)
(global-linum-mode 1)
(setq linum-format "%3d|")

;; Display date and time.
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(setq display-time-string-forms '(24-hours ":" minutes " - " dayname " " day "/" month"/"year " "))
(display-time)

;; Display battery status.
(display-battery-mode)

;; Highlight current line.
;; (global-hl-line-mode t)

;; Show empty lines.
(setq-default indicate-empty-lines t)

;; Show matching parenthesis.
(require 'paren)
(show-paren-mode)
(setq show-paren-style 'expression)

;; Delete white spaces at the end of lines on save.
(add-hook 'c++-mode-hook '(lambda () (add-hook 'write-contents-hooks 'delete-trailing-whitespace nil t)))
(add-hook   'c-mode-hook '(lambda () (add-hook 'write-contents-hooks 'delete-trailing-whitespace nil t)))

;; Color in red white spaces.
(setq show-trailing-whitespace t)
(setq-default show-trailing-whitespace t)

;; Delete successive white spaces.
;;(c-toggle-hungry-state t)

;; Color digit in yellow.
(font-lock-add-keywords 'c-mode'(("\\<\\([0-9]+\\|0x[0-9a-fA-F]+\\)\\>" . font-lock-doc-face)))

;; Mouse stay in position when scrolling.
(setq scroll-preserve-screen-position t)

;; Scroll line by line.
(setq scroll-step 1)

;; Remember cursor position, for emacs 25.1 or later
(save-place-mode 1)
