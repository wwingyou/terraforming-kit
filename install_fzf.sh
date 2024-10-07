#!/bin/bash

curl -LO https://github.com/junegunn/fzf/releases/download/v0.55.0/fzf-0.55.0-linux_arm64.tar.gz
FZF="$HOME/fzf"
rm -rf "$FZF"
mkdir "$FZF"
tar -xf fzf-0.55.0-linux_arm64.tar.gz -C "$FZF"
