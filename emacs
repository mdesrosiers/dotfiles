(add-to-list 'load-path "~/.emacs.d")

(require 'ido)
(ido-mode t)

(add-to-list 'load-path "~/src/rinari")
(require 'rinari)

(add-to-list 'load-path "~/.emacs.d/color-theme")
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
    (color-theme-initialize)
    (color-theme-midnight)))

(require 'doremi-cmd)

(require 'whitespace)

(custom-set-variables
 '(inhibit-startup-screen t)
 '(initial-scratch-message nil)
 '(ns-command-modifier (quote control)))

(add-hook 'before-save-hook 'delete-trailing-whitespace)