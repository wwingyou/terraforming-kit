#!/bin/bash

# Install neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz

# Configure shell
RC="~/.bashRC"
if [ ! -f "$RC" ]; then
  touch "$RC"
end
echo 'export PATH="$PATH:/opt/nvim-linux64/bin"' > "$RC"
