#!/bin/bash

post_install() {
    echo "----------------------------------------------------"
    echo "Neovim will install the plugins on its first launch"
    echo "Just reload neovim to use as normal"
    echo "Setting up neovim and vim-plug"
    echo "----------------------------------------------------"
}

install_normal() {
    mkdir -p ~/.config/nvim
    curl https://raw.githubusercontent.com/pyrotek45/Pyrotek45Nvim/main/init.vim -o ~/.config/nvim/init.vim
}
install_flatpak() {
    mkdir -p ~/.var/app/io.neovim.nvim/config/nvim
    curl https://raw.githubusercontent.com/pyrotek45/Pyrotek45Nvim/main/init.vim -o ~/.var/app/io.neovim.nvim/config/nvim/init.vim
}


if [ "$1" = "" ]
then
    echo "Welcome to the Pyrotek45Nvim installer!"
    echo "You can use the options as commandline arguments to this script"
    echo "1. Install to normal installation"
    echo "2. Install to flatpak installation"
    echo "3. Install to both normal and flatpak installations"

    printf "(1,2,3)"
    read option
else
    option="$1"
fi

while true; do
   case "$option" in
      1) # display Help
         post_install
         install_normal
         install_flatpak
         exit;;
      2) # display Help
          post_install
          install_normal
         exit;;
      3) # display Help
         post_install
         install_flatpak
         exit;;
   esac
   break;
done 
