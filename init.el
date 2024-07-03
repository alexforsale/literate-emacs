;;; init --- `Emacs' Initialization file -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require 'ob-tangle)

(when (file-exists-p (expand-file-name "index.org" user-emacs-directory))
  (org-babel-tangle-file (expand-file-name "index.org" user-emacs-directory)))

(setq user-mail-address "alexforsale@yahoo.com"
	user-full-name "Kristian Alexander P")

;;; From https://emacs.stackexchange.com/questions/38008/adding-many-items-to-a-list/68048#68048
(defun merge-list-to-list (dst src)
  "Merges content of the 2nd list with the 1st one"
  (set dst
	 (append (eval dst) src)))

(when (file-directory-p (expand-file-name "Sync/org" (getenv "HOME")))
  (customize-set-variable '+config/org-directory (expand-file-name "Sync/org" (getenv "HOME"))))

(require 'config-evil (expand-file-name "modules/config-evil.el" user-emacs-directory) t)

(require 'config-general (expand-file-name "modules/config-general.el" user-emacs-directory) t)

(require 'config-ui (expand-file-name "modules/config-ui.el" user-emacs-directory) t)

(require 'config-builtins (expand-file-name "modules/config-builtins.el" user-emacs-directory) t)

(require 'config-completion (expand-file-name "modules/config-completion.el" user-emacs-directory) t)

(require 'config-shells (expand-file-name "modules/config-shells.el" user-emacs-directory) t)

(require 'config-editing (expand-file-name "modules/config-editing.el" user-emacs-directory) t)

(require 'config-ide (expand-file-name "modules/config-ide.el" user-emacs-directory) t)

(require 'config-org (expand-file-name "modules/config-org.el" user-emacs-directory) t)

(require 'config-tools (expand-file-name "modules/config-tools.el" user-emacs-directory) t)

(require 'config-dired (expand-file-name "modules/config-dired.el" user-emacs-directory) t)

(require 'config-treemacs (expand-file-name "modules/config-treemacs.el" user-emacs-directory) t)

(require 'config-mail (expand-file-name "modules/config-mail.el" user-emacs-directory) t)

(require 'config-progmodes (expand-file-name "modules/config-progmodes.el" user-emacs-directory) t)

(provide 'init)
;;; init.el ends here
