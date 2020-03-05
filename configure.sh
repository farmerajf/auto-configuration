#!/bin/bash

# Check if the vim-go package is installed
[ ! -d "$HOME/.vim/pack/plugins/start/vim-go/" ] && echo "⏬  downloading vim-go" && git clone https://github.com/fatih/vim-go.git ~/.vim/pack/plugins/start/vim-go || echo "✅  vim-go already downloaded"

echo "⚙️  installing go tools for vim"
vim -c ":GoInstallBinaries" -c ":q"

echo "⚙️  adding vim config"
[ "$HOME/.vimrc" ] && mv "$HOME/.vimrc" "$HOME/.vimrc.bak.$RANDOM"
cp "./vimrc" "$HOME/.vimrc"
