(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)

;(require 'package)
;(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

;; Install the latest version of org manually
(require 'org)
(when (string-match "^[1234567]" (org-version))
  (warn "Org-Mode is out of date. We expect org 8 or higher, but instead we have %s" (org-version)))


(org-babel-load-file "~/.emacs.d/emacs.org")


