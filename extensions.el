;;; extensions.el --- agda Layer extensions File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(defvar agda-pre-extensions
  '(
    ;; pre extension agdas go here
    )
  "List of all extensions to load before the packages.")

(defvar agda-post-extensions '(
  )
  "List of all extensions to load after the packages.")

(load-file (let ((coding-system-for-read 'utf-8))
     (shell-command-to-string "agda-mode locate")))

(evil-leader/set-key-for-mode 'agda2-mode
        "mm"  'agda2-load
        "mC"  'agda2-compile
        "mQ"  'agda2-quit
        "mR"  'agda2-restart
        "mD"  'agda2-remove-annotations
        "mim" 'agda2-display-implicit-arguments
        "m="  'agda2-show-constraints
        "ms"  'agda2-solve-constraints
        "m?"  'agda2-show-goals
        "mj"  'agda2-next-goal
        "mk"  'agda2-previous-goal
        "mg"  'agda2-give
        "mr"  'agda2-refine
        "ma"  'agda2-auto
        "mc"  'agda2-make-case
        "mt"  'agda2-goal-type
        "me"  'agda2-show-context
        "mh"  'agda2-helper-function-type
        "md"  'agda2-infer-type-maybe-toplevel
        "mw"  'agda2-why-in-scope-maybe-toplevel
        "m,"  'agda2-goal-and-context
        "m."  'agda2-goal-and-context-and-inferred
        "mo"  'agda2-module-and-contents-maybe-toplevel
        "mn"  'agda2-compute-normalised-maybe-toplevel
        )
;; For each extension, define a function agda/init-<extension-agda>
;;
;; (defun agda/init-my-extension ()
;;   "Initialize my extension"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
