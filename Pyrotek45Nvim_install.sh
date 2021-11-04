#!/bin/bash

post_install() {
    echo "----------------------------------------------------"
    echo "Neovim will install the plugins on its first launch"
    echo "Just reload neovim to use as normal"
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

case "$option" in
    1)
        install_normal                                                         
        post_install                                                           
        ;;                                                                 
    2)
        install_flatpak                                                       
        post_install                                                          
        ;;                                                                 
    3)
        install_normal                                                         
        install_flatpak                                                        
        post_install                                                           
        ;;                                                                 
    *)
        echo "Unkown option. Please choose between 1, 2 and 3."
        ;;
esac 

