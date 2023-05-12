(require 'package)
(add-to-list 'package-archives '("gnu"   . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(dirvish-override-dired-mode)
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(tab-bar-mode 1)
(ido-mode 1)
(require 'auto-complete)
(global-auto-complete-mode t)
(global-display-line-numbers-mode 1)
(setq-default c-basic-offset 4
	      c-default-style '((java-mode . "java")
                                (awk-mode . "awk")
                                (other . "bsd")))
(global-set-key (kbd "M-x") 'smex)
(tool-bar-mode 0)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#c0c0c0" "#336c6c" "#806080" "#0f2050" "#732f2c" "#23733c" "#6c1f1c" "#232333"])
 '(company-quickhelp-color-background "#b0b0b0")
 '(company-quickhelp-color-foreground "#232333")
 '(custom-enabled-themes '(gruber-darker))
 '(custom-safe-themes
   '("94adc319e207c4e9fc5fcec552387dbd4a999fa30081b2a98dfa6430ac4f75dd" "bd82c92996136fdacbb4ae672785506b8d1d1d511df90a502674a51808ecc89f" "33ea268218b70aa106ba51a85fe976bfae9cf6931b18ceaf57159c558bbcd1e6" "27b97024320d223cbe0eb73104f2be8fcc55bd2c299723fc61d20057f313b51c" "e3c41651565cb624f772d25fbf12752b31610800041968d96c9aef5a3e8ead8e" "e7820b899036ae7e966dcaaec29fd6b87aef253748b7de09e74fdc54407a7a02" "de8f2d8b64627535871495d6fe65b7d0070c4a1eb51550ce258cd240ff9394b0" "bddf21b7face8adffc42c32a8223c3cc83b5c1bbd4ce49a5743ce528ca4da2b6" "e13beeb34b932f309fb2c360a04a460821ca99fe58f69e65557d6c1b10ba18c7" default))
 '(fci-rule-color "#c7c7c7")
 '(frame-brackground-mode 'dark)
 '(global-display-line-numbers-mode t)
 '(nrepl-message-colors
   '("#336c6c" "#205070" "#0f2050" "#806080" "#401440" "#6c1f1c" "#6b400c" "#23733c"))
 '(package-selected-packages
   '(theme-changer avk-emacs-themes dirvish neotree whitespace-cleanup-mode gruvbox-theme auto-complete auto-complete-c-headers 2048-game adwaita-dark-theme el-fetch smex gruber-darker-theme))
 '(pdf-view-midnight-colors '("#232333" . "#c7c7c7"))
 '(red "#ffffff")
 '(tab-bar-mode t)
 '(tool-bar-mode nil)
 '(vc-annotate-background "#d4d4d4")
 '(vc-annotate-color-map
   '((20 . "#437c7c")
     (40 . "#336c6c")
     (60 . "#205070")
     (80 . "#2f4070")
     (100 . "#1f3060")
     (120 . "#0f2050")
     (140 . "#a080a0")
     (160 . "#806080")
     (180 . "#704d70")
     (200 . "#603a60")
     (220 . "#502750")
     (240 . "#401440")
     (260 . "#6c1f1c")
     (280 . "#935f5c")
     (300 . "#834744")
     (320 . "#732f2c")
     (340 . "#6b400c")
     (360 . "#23733c")))
 '(vc-annotate-very-old-color "#23733c")
 '(widget-image-enable nil)
 '(x-underline-at-descent-line t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "JetBrains Mono NL" :foundry "outline" :slant normal :weight normal :height 113 :width normal)))))
;; original height = 108
