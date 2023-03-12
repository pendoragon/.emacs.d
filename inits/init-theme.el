;;------------------------------------------------------------------------------
;; Load theme and font
;;------------------------------------------------------------------------------
(require-package 'zenburn-theme)


(defun load-zenburn ()
  (load-theme 'zenburn t)
  ;; Make active buffer more highlighted, used with zenburn. Color code borrowed
  ;; from zenburn-theme.el, so this need to be work with zenburn.
  (set-face-attribute 'mode-line nil
                      :foreground "gray80" :background "IndianRed4"
                      :box '(:line-width 1 :style released-button))
  (set-face-attribute 'mode-line-inactive nil
                      :foreground "#5F7F5F" :background "#383838"
                      :box '(:line-width 1 :style released-button)))

(load-zenburn)

(defun generic-set-default-font(f)
  (if (version< emacs-version "27")
      (set-default-font f)
    (set-frame-font f)))

;; Generic fonts
;; (cond (*linux*  (set-default-font "Inconsolata-8")))
;; (cond (*darwin* (set-default-font "Monaco-10")))
;; ;; Machine specifc fonts
;; (cond (*macprom1* (set-default-font "Monaco-11")))
;; (cond (*macpro15* (set-default-font "Monaco-10")))

;; Generic fonts
;; (cond (*linux*  (generic-set-default-font "Inconsolata-8"))) ;; This does not work on version > 27 since there is a emacs bug.
(cond (*linux* (generic-set-default-font "Ubuntu Mono-12")))
(cond (*darwin* (generic-set-default-font "Monaco-10")))
;; Machine specifc fonts
(cond (*macprom1* (generic-set-default-font "Monaco-11")))
;; (cond (*macpro15* (generic-set-default-font "Monaco-10")))


(provide 'init-theme)
