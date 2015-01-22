; list the packages you want
(setq package-list '(
                     color-theme-solarized
                     help+ help-fns+ help-mode+
                     ;evil helm ;;; these come with prelude
                     smex ido-ubiquitous paredit find-file-in-project
                     4clojure clojure-mode
                     enh-ruby-mode
                     markdown-mode
                     magit
                    ))

; list the repositories containing them
(setq package-archives '(("elpa" . "http://tromey.com/elpa/")
                         ("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")
                        ))

; activate all the packages (in particular autoloads)
(package-initialize)

; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))
