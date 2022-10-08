cat << EOF
REFDOC
======================================
ALIAS		| ACTION
----------------|---------------------
refdoc		| sh $ZSHREF/refdoc.sh
refdoce		| nvim $ZSHREF/refdoc.shuu
zshrc		| nvim $HOME/.zshrc
alaisref	| nvim $ZSHREF/alias.zsh
termiteconf	| nvim $R_C/termite/config
ppacman		| sudo pacman
ya		| yay -S
ys		| yay -Ss
brighton	| xrandr --output LVDS-1 --brightness 1
brightoff	| xrandr --output LVDS-1 --brightness 0.55
[..] to [.....]	| [cd ..] to [cd .....]
exaa		| exa -l -F -h
exaaa		| exa -l -F -h -a
mkcd		| **FUNC** mkcdir
----		| Create directory and enter it
fnd		| **FUNC** findgrep
----		| Find all and grep query
EOF
