#!/bin/bash

DIR="$(cd "$(dirname "$0")" && pwd)"

$DIR/install_nvim.sh
sudo apt-get install fzf
sudo apt-get install tree
sudo apt-get install tmux
sudo apt-get install nnn
