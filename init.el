;;------------------------------------------------------------------------------
;; Bool values to decide which functions are available
;;------------------------------------------------------------------------------
;; System type
(defvar *windows* (eq system-type 'windows-nt))
(defvar *cygwin*  (eq system-type 'cygwin))
(defvar *darwin*  (eq system-type 'darwin))
(defvar *linux*   (or (eq system-type 'gnu/linux) (eq system-type 'linux)))

;; Emacs version
(defvar *emacs23* (= emacs-major-version 23))
(defvar *emacs24* (= emacs-major-version 24))
(defvar *emacs25* (= emacs-major-version 25))
;; (defvar *emacs27* (version>emacs-version 27))

;; System name (hostname)
(defvar *home-desktop* (string= system-name "Mars"))
(defvar *macprom1* (string= system-name "Sirius.local"))
(defvar *macpro15* (string= system-name "Acturus"))


;;------------------------------------------------------------------------------
;; Bootstrap configs, need to execute before loading specific configs
;;------------------------------------------------------------------------------
;; This will add "~/.emacs.d/inits" to emacs load path.
(add-to-list 'load-path (expand-file-name "inits" user-emacs-directory))
(require 'init-preload-all-configs)     ; must be called first
(require 'init-site-packages)           ; init third party packages
(require 'init-elpa)                    ; init elpa managed packages
(require 'init-exec-path-from-shell)    ; init emacs for Mac GUI

;;------------------------------------------------------------------------------
;; Load configs for features and modes
;;------------------------------------------------------------------------------
;; General mode with configurations
(require 'init-ido)
(require 'init-erc)
(require 'init-smex)
(require 'init-tramp)
(require 'init-org-mode)
(require 'init-livedown)
(require 'init-yasnippet)
(require 'init-multi-term)
(require 'init-auto-complete)
(require 'init-window-numbering)
(require 'init-smartparens-mode)
(require 'init-fill-column-indicator)

;; Init language (or related) mode with configurations
(require 'init-cc-mode)
(require 'init-sh-mode)
(require 'init-go-mode)
(require 'init-lua-mode)
(require 'init-js2-mode)
(require 'init-web-mode)
(require 'init-gud-mode)                ; debug python
(require 'init-java-mode)
(require 'init-geben-mode)              ; debug php
(require 'init-python-mode)
(require 'init-rust-mode)
;(require 'init-protobuf-mode)

;; My custom mode, functions, etc.
(require 'init-keys)
(require 'init-theme)
(require 'init-custom)
(require 'init-functions)

;; Simple mode that does not need configurations
;(require 'init-simple-misc-mode)

;; Only install chinese-pyim in linux: we can use sougou in Mac easily.
(when *linux*
  (require 'init-chinese-pyim))


;;------------------------------------------------------------------------------
;; Automatic generated
;;------------------------------------------------------------------------------
(put 'erase-buffer 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(livedown:autostart nil)
 '(livedown:open t)
 '(livedown:port 1337)
 '(package-selected-packages
   '(rust-mode zenburn-theme yasnippet yaml-mode window-numbering web-mode w3m thrift tern-auto-complete smex smartparens protobuf-mode php-mode nginx-mode multi-term markdown-mode magit lua-mode js2-mode jedi jade-mode hackernews go-eldoc go-autocomplete ggtags flycheck fill-column-indicator exec-path-from-shell dockerfile-mode coffee-mode apache-mode))
 '(send-mail-function 'mailclient-send-it))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(isearch ((t (:background "green" :foreground "#D0BF8F" :weight bold))))
 '(lazy-highlight ((t (:background "IndianRed4" :foreground "#D0BF8F" :weight bold))))
 '(popup-isearch-match ((t (:background "red" :foreground "#DCDCCC")))))
