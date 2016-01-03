(setq 
    backup-by-copying t      ; don't clobber symlinks
    backup-directory-alist
    '(("." . "~/.emacsBackups"))    ; don't litter my fs tree
    delete-old-versions t
    kept-new-versions 6
    kept-old-versions 2
    version-control t)

(setq backup-directory-alist
      `((".*" . "~/.emacsBackups")))
(setq auto-save-file-name-transforms
      `((".*" "~/.emacsBackups" t)))

(require 'package)
(add-to-list 'package-archives 
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
    '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(add-hook 'prog-mode-hook 'linum-mode)

(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

(winner-mode 1)

; (set-face-attribute 'default nil :font "Inconsolata")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(background-color "#002b36")
 '(background-mode dark)
 '(cursor-color "#839496")
 '(custom-enabled-themes (quote (tango-dark)))
 '(foreground-color "#839496")
 '(initial-buffer-choice t)
 '(tool-bar-mode nil)
 '(tooltip-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
)
