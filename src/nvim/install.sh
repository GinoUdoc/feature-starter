#!/bin/sh
set -e

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo tar -C /opt -xzf nvim-linux64.tar.gz

sudo ln -s /opt/nvim-linux64/bin/nvim /usr/local/bin/nvim

# clone config_repo
git clone $CONFIG_REPO $_CONTAINER_USER_HOME/.config/nvim
