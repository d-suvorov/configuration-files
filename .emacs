;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; Disable the toolbar
(tool-bar-mode -1)

;; Make these Org commands accessible through global keys
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-switchb)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (adwaita)))
 '(org-agenda-files
   (quote
    ("~/Dropbox/org/study.org" "~/Dropbox/org/gtd/maintenance.org" "~/Dropbox/org/gtd/teaching.org" "~/Dropbox/org/gtd/ctlab.org")))
 '(org-clock-into-drawer "CLOCKING")
 '(org-enforce-todo-checkbox-dependencies t)
 '(org-enforce-todo-dependencies t)
 '(org-log-done (quote time))
 '(org-log-into-drawer t)
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "https://stable.melpa.org/packages/"))))
 '(package-selected-packages
   (quote
    (haskell-mode tuareg markdown-mode evil org multiple-cursors solidity-mode solarized-theme eink-theme))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Proof General support
(load-file "~/misc/PG/generic/proof-site.el")
;; Ssreflect support
(load-file "~/misc/math-comp/mathcomp/ssreflect/pg-ssr.el")

;; Scilla mode
(load-file "~/workplace/scilla/misc/emacs-mode/scilla.el")

;; Agda mode
(load-file (let ((coding-system-for-read 'utf-8))
                (shell-command-to-string "agda-mode locate")))

;; NuSMV mode
(load-file "~/misc/emacs-modes/nusmv-mode.el")
