#!/bin/bash

# Install neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz

# Configure shell
RC="~/.bashrc"
if [ ! -f "$RC" ]; then
  echo '[INFO] no .bashrc found. create one.'
  touch "$RC"
end
echo 'export PATH="$PATH:/opt/nvim-linux64/bin"' >> "$RC"
