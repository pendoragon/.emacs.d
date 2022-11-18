(require-package 'rust-mode)
(require 'rust-mode)

(add-hook 'rust-mode-hook
          (lambda () (setq indent-tabs-mode nil)))

(provide 'init-rust-mode)
