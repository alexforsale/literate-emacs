;;; init --- `Emacs' Initialization file -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(with-eval-after-load 'org
  (require 'ob-tangle)

  (when (file-exists-p (expand-file-name "index.org" user-emacs-directory))
    (org-babel-tangle-file (expand-file-name "index.org" user-emacs-directory)))

  (require 'config (expand-file-name "config.el" user-emacs-directory)))

(provide 'init)
;;; init.el ends here
