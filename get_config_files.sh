mkdir -p -- ./alacritty
mkdir -p -- ./zsh_files

find /home/refrshrs/.config/alacritty/ -maxdepth 1 -type f -exec cp -t ./alacritty/ '{}' +
find /home/refrshrs/code/shell/zshref/ -maxdepth 1 -type f -exec cp -t ./zsh_files/ '{}' +
