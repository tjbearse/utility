(package-initialize)
(org-babel-load-file "~/.emacs.d/configuration.org")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#ece3cc" "#d2212d" "#489100" "#ad8900" "#0072d4" "#ca4898" "#009c8f" "#fbf3db"])
 '(compilation-message-face 'default)
 '(cua-global-mark-cursor-color "#009c8f")
 '(cua-overwrite-cursor-color "#ad8900")
 '(cua-read-only-cursor-color "#489100")
 '(custom-enabled-themes '(wombat))
 '(custom-safe-themes
   '("f5b6be56c9de9fd8bdd42e0c05fecb002dedb8f48a5f00e769370e4517dde0e8" "57a29645c35ae5ce1660d5987d3da5869b048477a7801ce7ab57bfb25ce12d3e" "d89e15a34261019eec9072575d8a924185c27d3da64899905f8548cbd9491a36" "4c56af497ddf0e30f65a7232a8ee21b3d62a8c332c6b268c81e9ea99b11da0d3" "2809bcb77ad21312897b541134981282dc455ccd7c14d74cc333b6e549b824f3" "13a8eaddb003fd0d561096e11e1a91b029d3c9d64554f8e897b2513dbf14b277" "51ec7bfa54adf5fff5d466248ea6431097f5a18224788d0bd7eb1257a4f7b773" "0fffa9669425ff140ff2ae8568c7719705ef33b7a927a0ba7c5e2ffcfac09b75" "830877f4aab227556548dc0a28bf395d0abe0e3a0ab95455731c9ea5ab5fe4e1" "285d1bf306091644fb49993341e0ad8bafe57130d9981b680c1dbd974475c5c7" "00445e6f15d31e9afaa23ed0d765850e9cd5e929be5e8e63b114a3346236c44c" "c433c87bd4b64b8ba9890e8ed64597ea0f8eb0396f4c9a9e01bd20a04d15d358" default))
 '(evil-undo-system 'undo-redo)
 '(fci-rule-color "#4F4F4F")
 '(global-whitespace-mode nil)
 '(helm-ag-base-command "rg --no-heading")
 '(helm-completion-style 'emacs)
 '(highlight-changes-colors '("#DC8CC3" "#bbb0cb"))
 '(highlight-symbol-colors
   '("#681063eb5999" "#54db645164d1" "#6098535f5323" "#5c2959a95fa1" "#4edf55f24ea4" "#64de597a525e" "#530160d26158"))
 '(highlight-symbol-foreground-color "#FFFFEF")
 '(highlight-tail-colors
   '(("#4F4F4F" . 0)
	 ("#488249" . 20)
	 ("#5dacaf" . 30)
	 ("#57a2a4" . 50)
	 ("#b6a576" . 60)
	 ("#ac7b5a" . 70)
	 ("#aa5790" . 85)
	 ("#4F4F4F" . 100)))
 '(hl-bg-colors
   '("#b6a576" "#ac7b5a" "#9f5c5c" "#aa5790" "#85749c" "#57a2a4" "#5dacaf" "#488249"))
 '(hl-fg-colors
   '("#3F3F3F" "#3F3F3F" "#3F3F3F" "#3F3F3F" "#3F3F3F" "#3F3F3F" "#3F3F3F" "#3F3F3F"))
 '(hl-paren-colors '("#93E0E3" "#F0DFAF" "#8CD0D3" "#bbb0cb" "#7F9F7F"))
 '(lsp-ui-doc-border "#3a4d53")
 '(nrepl-message-colors
   '("#CC9393" "#DFAF8F" "#F0DFAF" "#488249" "#95d291" "#57a2a4" "#93E0E3" "#DC8CC3" "#bbb0cb"))
 '(package-selected-packages
   '(fountain-mode haskell-mode lsp-pyright fiplr web-mode use-package evil))
 '(pos-tip-background-color "#4F4F4F")
 '(pos-tip-foreground-color "#FFFFEF")
 '(smartrep-mode-line-active-bg (solarized-color-blend "#7F9F7F" "#4F4F4F" 0.2))
 '(term-default-bg-color "#3F3F3F")
 '(term-default-fg-color "#DCDCCC")
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   '((20 . "#CC9393")
	 (40 . "#df52b97da1ae")
	 (60 . "#e83dcc9ba8b2")
	 (80 . "#F0DFAF")
	 (100 . "#cadbca379f51")
	 (120 . "#b7fbbf7a973e")
	 (140 . "#a52cb4cc8f40")
	 (160 . "#9260aa2e8755")
	 (180 . "#7F9F7F")
	 (200 . "#87dbb4dca003")
	 (220 . "#8b6fbfadb0a2")
	 (240 . "#8e96ca9fc17d")
	 (260 . "#914fd5b0d293")
	 (280 . "#93E0E3")
	 (300 . "#90c5da6cdd6f")
	 (320 . "#8f5dd736da39")
	 (340 . "#8df5d402d705")
	 (360 . "#8CD0D3")))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   '(unspecified "#3F3F3F" "#4F4F4F" "#9f5c5c" "#CC9393" "#488249" "#7F9F7F" "#b6a576" "#F0DFAF" "#57a2a4" "#8CD0D3" "#aa5790" "#DC8CC3" "#5dacaf" "#93E0E3" "#DCDCCC" "#6F6F6F"))
 '(xterm-color-names
   ["#4F4F4F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#fffff6"])
 '(xterm-color-names-bright
   ["#3F3F3F" "#DFAF8F" "#878777" "#6F6F6F" "#DCDCCC" "#bbb0cb" "#FFFFEF" "#FFFFFD"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
