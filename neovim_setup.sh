#!/usr/bin/bash
echo "----------------------------------------------------"
echo "neovim will install the pluggins on its first launch"
echo "just reload neovim to use as normal"
echo "setting up neovim and vim-plug"
echo "to use this script, make sure to use -n for normal install"
echo "or -f for flatpak install. use -a to install all formats"
echo "----------------------------------------------------"



normal_install () {
	mkdir -p ~/.config/nvim
	FILE=./init.vim
	if [ -f "$FILE" ]; then
	   cp ./init.vim ~/.config/nvim
	else
	   echo "there is no init.vim file, make sure it is placed in this folder."
	fi
	echo "done setting up neovim"
}

flatpak_install () {
	mkdir -p ~/.var/app/io.neovim.nvim/config/nvim
	FILE=./init.vim
	if [ -f "$FILE" ]; then
	   cp ./init.vim ~/.var/app/io.neovim.nvim/config/nvim
	else
	   echo "there is no init.vim file, make sure it is placed in this folder."
	fi
	echo "done setting up neovim for flatpak"
}

while true; do
   case "$1" in
      -a) # display Help
         normal_install
         flatpak_install
         exit;;
      -n) # display Help
         normal_install
         exit;;
      -f) # display Help
         flatpak_install
         exit;;
   esac
   break;
done
