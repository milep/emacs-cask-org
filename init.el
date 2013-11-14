(require 'cask "~/.cask/cask.el")
(cask-initialize)

(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

(dolist (package '(org pallet))
  (unless (package-installed-p package)
    (package-install package)))

;; not working?
;;(when (not (cl-remove-if-not 
;;            (lambda (p) (equal 'org (car p)))
;;            package-alist))
;;  (message "No org-mode package found; installing now...")
;;  (package-install 'org))

(require 'org)
(when (string-match "^[1234567]" (org-version))
  (warn "Org-Mode is out of date. We expect org 8 or higher, but instead we have %s" (org-version)))

(require 'pallet)

(org-babel-load-file "~/.emacs.d/emacs.org")

