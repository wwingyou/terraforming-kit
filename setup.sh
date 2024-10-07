#!/bin/bash

DIR="$(cd "$(dirname "$0")" && pwd)"

$DIR/install_nvim.sh
apt-get install fzf
apt-get install tree
apt-get install tmux
apt-get install nnn
