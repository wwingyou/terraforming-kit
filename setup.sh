#!/bin/bash

DIR="$(cd "$(dirname "$0")" && pwd)"
RC="$HOME/.bashrc"

$DIR/install_nvim.sh
$DIR/install_fzf.sh
sudo apt-get install tree
sudo apt-get install tmux
sudo apt-get install nnn

# Configure shell
if [ ! -f "$RC" ]; then
  echo '[INFO] no .bashrc found. create one.'
  touch "$RC"
fi

# echo '' >> "$RC"
# echo '# neovim path' >> "$RC"
# echo 'export PATH="$HOME/neovim/bin:$PATH"' >> "$RC"

cat $DIR/bash_config >> "$RC"

rm $HOME/.tmux.conf
ln -s $DIR/tmux.conf $HOME/.tmux.conf
rm -rf $HOME/.config/nvim
ln -s $DIR/nvim $HOME/.config/nvim
