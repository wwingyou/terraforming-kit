#!/bin/bash

DIR="$(cd "$(dirname "$0")" && pwd)"
RC="$HOME/.bashrc"

$DIR/install_nvim.sh
sudo apt-get install fzf
sudo apt-get install tree
sudo apt-get install tmux
sudo apt-get install nnn

cat $DIR/bash_config >> "$RC"
