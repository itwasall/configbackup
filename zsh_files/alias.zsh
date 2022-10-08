# 	WELCOME TO MY COOL ALIAS' FILE
# 		- Where typing out full commands is for retards
# Edit .zshrc
alias zshrc="nvim $HOME/.zshrc"
#
# Open reference document
# alias panref = "nvim /home/refrshrs/code/shell/zshref/refdoc.md"
# alias lynref = "lynx -stin"
alias refdoc="sh $zshref/refdoc.sh"
# Edit reference document
# alias refdoce = "nvim $zshref/refdoc.md"
alias refdoce="nvim $zshref/refdoc.sh"
#
# alias x = "echo test"
# Edit alias file
alias aliasref="nvim $zshref/alias.zsh"
# 
# Edit termite config file
alias termiteconf="nvim $rcon/termite/config"
#
# Ez install
alias ppacman="sudo pacman"
alias ya="yay -S"
alias ys="yay -Ss"
#
# Brightness adjust
alias brighton="xrandr --output LVDS-1 --brightness 1"
alias brightoff="xrandr --output LVDS-1 --brightness 0.55"
#
# Lazy folder navigation
alias ..="cd .."
alias ...="cd ..."
alias ....="cd ...."
alias .....="cd ....."
alias ~="cd"
#
# exa long form w/ headers + folder identifiers (+ hidden)
alias ls="exaa"
alias exaa="exa -l -F -h"
alias exaaa="exa -l -F -h -a"

# Make directory and go into it function
mkcdir(){
	mkdir -p "$1" &&
	cd -P "$1"
}
# Alias for mkdir + cd combo
alias mkcd="mkcdir"

# Find all & grep query
findgrep(){
	find . | grep $1
}
alias fnd="findgrep"
#
#
