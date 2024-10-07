#!/bin/bash

# Install neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz

# Configure shell
RC="$HOME/.bashrc"
if [ ! -f "$RC" ]; then
  echo '[INFO] no .bashrc found. create one.'
  touch "$RC"
fi
echo '' >> "$RC"
echo '# neovim path' >> "$RC"
echo 'export PATH="$PATH:/opt/nvim-linux64/bin"' >> "$RC"
