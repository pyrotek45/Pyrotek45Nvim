#!/bin/bash

post_install() {
    echo " ----------------------------------------------------"
    echo "| Pyrotek45Nvim has been installed! The plugins will |"
    echo "| get installed on first launch and your old config  |"
    echo "| and data have been moved to nvim_old.              |"
    echo " ----------------------------------------------------"
}

install_normal() {
    mkdir -p ~/.config/nvim
    curl https://raw.githubusercontent.com/pyrotek45/Pyrotek45Nvim/main/init.vim -o ~/.config/nvim/init.vim
}
install_flatpak() {
    mkdir -p ~/.var/app/io.neovim.nvim/config/nvim
    curl https://raw.githubusercontent.com/pyrotek45/Pyrotek45Nvim/main/init.vim -o ~/.var/app/io.neovim.nvim/config/nvim/init.vim
}

backup_normal() {
    if [ -e ~/.config/nvim ]
    then
        mv ~/.config/nvim ~/.config/nvim_old
    fi
    if [ -e ~/.local/share/nvim ]
    then
        mv ~/.local/share/nvim ~/.local/share/nvim_old
    fi
}
backup_flatpak() {
    if [ -e ~/.var/app/io.neovim.nvim]
    then
        mv ~/.var/app/io.neovim.nvim ~/.var/app/io.neovim.nvim_old
    fi
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
        backup_normal
        install_normal                                                         
        post_install                                                           
        ;;                                                                 
    2)
        backup_flatpak
        install_flatpak                                                       
        post_install                                                          
        ;;                                                                 
    3)
        backup_normal
        backup_flatpak
        install_normal                                                         
        install_flatpak                                                        
        post_install                                                           
        ;;                                                                 
    *)
        echo "Unkown option. Please choose between 1, 2 and 3."
        ;;
esac 

