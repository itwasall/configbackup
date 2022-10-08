# 	WELCOME TO MY COOL ALIAS' FILE
# 		- Where typing out full commands is for heckin morons

# Edit .zshrc
alias zshrc="nvim $HOME/.zshrc"

# Edit zshenvs
alias zshenvs="nvim $zshref/zshenvs.sh"

# Edit this file
alias aliasref="nvim $zshref/alias.sh" 

# List all alias'
alias aliaslist="cat $aliasref_ | grep alias | cut -c7-"

# Edit terminal config file
alias termconf="nvim $rcon/alacritty/alacritty.yml"
alias alaconf="nvim $rcon/alacritty/alacritty.yml"

# Edit vimrc
alias vimrc="nvim .vimrc"
alias nvimrc="nvim $rcon/nvim/init.vim"

# Package management
alias ppacman="sudo pacman"
alias ppacmanu="sudo pacman -Syu"
alias pacs="sudo pacman -Ss"
alias ya="yay -S"
alias ys="yay -Ss"

# Git
git_all(){
  git add -f .
  git commit -m $1
  git push -u origin main
}
alias gitc="git commit -a -m"
alias gitp="git push -u origin main"
alias gitall="git_all"

# melonDS
alias melonds="/home/refrshrs/romhack/NDS/melonds/build/melonDS"

# Bluetoothctl
alias btctl="bluetoothctl"

# yabridgectl
alias ybctl="yabridgectl"

# neofetch
alias neo="neofetch"

# foundryVTT
alias foundry="/home/refrshrs/Downloads/FoundryVTT/FoundryVTT-9.242/foundryvtt"

# man
alias m="man"

# skytemple
alias skytemple="python /home/refrshrs/.local/lib/python3.9/site-packages/skytemple/main.py"

# Python -m
alias py="python -m"

# ctrtool
alias ctrtool="/home/refrshrs/romhack/3DS/ctrtool/ctrtool"

# Bitwise operations
export refbitwise="$rpy/dumb_bitwise_idea/bitunwise.py"
alias bitop="python $refbitwise"
alias and="python $refbitwise AND"
alias nand="python $refbitwise NAND"
alias or="python $refbitwise OR"
alias nor="python $refbitwise NOR"
alias xor="python $refbitwise XOR"
alias xnor="python $refbitwise xnor"

# Prints total primary partition size + remaining space
alias driveinfo="pwsh /home/refrshrs/code/powershell/driveinfo.ps1"

# Clear
alias cls="clear"

# Fix Mesa
alias fixmesa="export MESA_GL_VERSION_OVERRIDE=3.3"

# Brightness adjust
alias brighton="xrandr --output eDP1 --brightness 1"
alias brightoff="xrandr --output eDP1 --brightness 0.55"

# Overall brightness adjust.
#     Max is 120_000, 30_000 is just about useable
brightness_set(){
  sudo intelbacklight -set $1
}
alias brightset="brightness_set"

# Wifi toggle
wifion(){
  sudo iwctl station wlan0 connect TP-Link_C0BA
  sudo iwctl station wlan1 connect TP-Link_C0BA
  echo "Connected"
  }
wifioff(){
  sudo iwctl station wlan0 disconnect
  sudo iwctl station wlan1 disconnect
  echo "Disconnected"
  }
alias wifion="wifion"
alias wifioff="wifioff"

# Update pacman, aur and flatpak packages a once
updater(){
  yay
  sudo flatpak update
}
alias upd="updater"

# Vim Cheatsheet stuff
alias vimtab="cat '$HOME/code/shell/vim/vimtab'"
alias vimsearch="cat '$HOME/code/shell/vim/vimsearch'"
alias vimundo="cat '$HOME/code/shell/vim/vimundo'"

# Vim Cheatsheet ref
alias vimref="cat '$HOME/code/shell/vim/vimref'"

# Edit reflib
alias editreflib="nvim '$HOME/.local/lib/python3.9/site-packages/reflib.py'"

# Steam launch
export steam_dir='/bin/steam'
steamLaunch(){
  if [$1 == "m"] 
  then
    export MESA_GL_VERSION_OVERRIDE=3.3
  fi 
  $steam_dir
}
alias steam=steamLaunch

# Set's mesa gl override to the version specified
mesaTest(){
  if [$1 == "4.5"]
  then
    export MESA_GL_VERSION_OVERRIDE=4.5
  elif [$1 == "4.6"]
  then
    export MESA_GL_VERSION_OVERRIDE=4.6
  elif [$1 == "3.3"]
  then
    export MESA_GL_VERSION_OVERRIDE=3.3
  fi
}

export mesat=mesaTest

# Converts argument from hex to decimal
#   If '-i' is specified, converts argument from decimal to hex
hex_(){
  if [ $# -eq 1 ]; then
    python $zshref/scripts/hex_.py $1
  elif [ $# -eq 2 ]; then
    python $zshref/scripts/hex_.py $1 $2
  fi
}

alias hex=hex_

# Discord launch
export discord_dir='/opt/discord/Discord'
discordLaunch(){
  export MESA_GL_VERSION_OVERRIDE=3.3
  $discord_dir
}
alias discord=discordLaunch

# Visual Studio Code launch
export code_dir='/bin/code'
VSSCodeLaunch(){
  export MESA_GL_VERSION_OVERRIDE=3.3
  $code_dir
}
alias code=VSSCodeLaunch

# Obsidian launch
export obsidian_dir='/var/lib/flatpak/app/md.obsidian.Obsidian/x86_64/stable/active/files/obsidian'
obsidianLaunch(){
export MESA_GL_VERSION_OVERRIDE=3.3
$obsidian_dir
}
alias obsidian=obsidianLaunch

# exa long form w/ headers + folder identifiers (+ hidden)
alias exaa="exa -l -F -h --group-directories-first"
alias exaaa="exa -l -F -h -a --group-directories-first"
alias exanew="exa -1 -s newest"

# Go to wine drive c
alias gowine="cd ~/.wine/drive_c"

# Loop through files in current working directory for search term
catloopsearch(){
  set catloopquery=$1
  for file in ./*; do sudo cat -n $file | grep -l $1; done 
}
alias catloop="catloopsearch"
# Recursive Variant
catloopsearchr(){
  for file in ./* ./**/*; do sudo cat -n $file | grep $1; done 
}
alias catloopr="catloopsearchr"

# OMZ
plugininfo(){
	pandoc ~/.oh-my-zsh/plugins/$1/README.md | lynx -stdin
  }

alias pinfo="plugininfo"
alias plist="omz plugin list"

# Calculating MD5 hashes
alias md5="rhash -M"
alias sha1="rhash -H"
alias crc="rhash --crc32c"

hashgetter(){
  echo MD5
  md5 $1
  echo SHA1
  sha1 $1
  echo CRC
  crc $1
  }

alias hashget="hashgetter"

testprintfunc(){
  echo "Doing me a test"
  if [$1 == "haha"]
  then 
    echo "this is funi"
  elif [$1 == "hoho"]
  then
    echo "this is christmas"
  else
    echo "no argument given"
  fi
  }

alias testprint="testprintfunc"

# Make directory and go into it function
mkcdir(){
	mkdir -p "$1" &&
	cd -P "$1"
  }

alias mkcd="mkcdir"

# Find all & grep query
findgrep(){
	find . 2>&1 | grep $1
}
# Find all & grep query - filenames only
findgrepf(){
  find . -printf "%f\n" 2>&1 | grep $1
}
alias fnd="findgrep"
alias fndf="findgrepf"

# Python Alias
alias make_npc="python /home/refrshrs/code/python/CharGen/CharGen/dnd_5e_data/make_npc_new.py"
