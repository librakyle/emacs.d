
;;; Personal Setting

(setq-default history-delete-duplicates t)
(setq-default delete-active-region 'kill)
(setq-default auto-save-default nil)
;(setq-default major-mode 'text-mode)
(global-linum-mode 1)
(setq-default linum-format "%d ")


;;; Personal Setting

(put 'set-goal-column 'disabled nil)

(line-number-mode)
(global-hl-line-mode)
(setq-default line-move-visual nil)
(setq-default indicate-empty-lines t)
(setq-default dired-isearch-filenames t)

(setq-default custom-enabled-themes '(sanityinc-solarized-dark))
(global-set-key (kbd "C-x v m") 'magit-status)
(global-set-key (kbd "C-x v f") 'vc-git-grep)
;(global-set-key "\C-x\ \C-r" 'recentf-open-files)
(global-set-key (kbd "C-c n") 'winner-redo)
(global-set-key (kbd "C-c p") 'winner-undo)
(global-set-key (kbd "C-c d") 'duplicate-line-or-region)

(require 'init-ack)

(menu-bar-mode 0)
(if (display-graphic-p)
  (progn
    (sanityinc/increment-default-font-height 30)
    (tool-bar-mode 0)
    (mouse-wheel-mode 0))
  (progn
   (define-key input-decode-map "\e[1;2D" [S-left])
   (define-key input-decode-map "\e[1;2C" [S-right])
   (define-key input-decode-map "\e[1;2B" [S-down])
   (define-key input-decode-map "\e[1;2A" [S-up])))
(when *is-a-mac*
  (setq mac-command-modifier 'super)
  (setq mac-right-command-modifier 'meta)
  (setq mac-option-modifier 'control)
  (setq mac-right-option-modifier 'control))

(provide 'init-local)
