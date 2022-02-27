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
;; Generic fonts
(cond (*linux*  (set-default-font "Inconsolata-8")))
(cond (*darwin* (set-default-font "Monaco-10")))
;; Machine specifc fonts
(cond (*macair* (set-default-font "Monaco-11")))
(cond (*macpro* (set-default-font "Monaco-9")))


(provide 'init-theme)
