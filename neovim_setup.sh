#!/usr/bin/bash
echo "----------------------------------------------------"
echo "please update before running this setup"
echo "neovim will install the pluggins on its first launch"
echo "just reload neovim to use as normal"
echo "setting up neovim and vim-plug"
echo "----------------------------------------------------"
mkdir -p ~/.config/nvim
FILE=./init.vim
if [ -f "$FILE" ]; then
   cp ./init.vim ~/.config/nvim
else
   echo "there is no init.vim file, make sure it is placed in this folder."
fi
echo "done setting up neovim"
