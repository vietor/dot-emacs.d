;;; init.el --- -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(let ((minver "26.1"))
  (when (version< emacs-version minver)
    (error "Your Emacs is too old -- this config requires v%s or higher" minver))
  (unless (memq system-type '(darwin windows-nt gnu/linux))
    (error "I am not working on the current operating system, bye")))

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(require 'org)
(org-babel-load-file (expand-file-name "README.org" user-emacs-directory))

(when (file-exists-p custom-file)
  (load custom-file))

(provide 'init)

;; Local Variables:
;; coding: utf-8
;; no-byte-compile: t
;; End:
;;; init.el ends here
