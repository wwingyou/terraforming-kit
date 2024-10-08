# 🌱 Terraforming Kit

Everything you need to terraform a brand new remote instance.

## Install

Just clone this repo on the remote instance and run the following commands.

```bash
./setup.sh
source ~/.bashrc
./cleanup.sh
```

## Package

- nvim
- tree
- tmux
- nnn
- fzf

## Features

- terminal-integrated `fzf` to find files and previous commands faster
- navigate between `nvim` and other `tmux` planes with `CTRL + h,j,k,l` key bindings
- easily view directory structure with `tree`
- easily move, copy, delete files with `nnn`
- easily edit files with `nvim`
