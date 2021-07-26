# Pyrotek45_neovim
My neovim config inspired by spacevim (but with a smaller footprint)

# how to install 

- without flatpak
> `git clone https://github.com/pyrotek45/pyrotek45_neovim.git && chmod +x pyrotek45_neovim/neovim_setup.sh && cd pyrotek45_neovim/ && ./neovim_setup.sh -n`
- with flatpak
> `git clone https://github.com/pyrotek45/pyrotek45_neovim.git && chmod +x pyrotek45_neovim/neovim_setup.sh && cd pyrotek45_neovim/ && ./neovim_setup.sh -a`
- only flatpak
> `git clone https://github.com/pyrotek45/pyrotek45_neovim.git && chmod +x pyrotek45_neovim/neovim_setup.sh && cd pyrotek45_neovim/ && ./neovim_setup.sh -f`

# basic usage

The `space` key is the leader for many of the added keybindings.

To understand how to use the keybindings here, just remember `->` means followed. 

So, for example`space -> w` means pressing space (then letting go) and then quickly (within a second) pressing w.

- Main keybindings
  - save : `space -> w`
  - quit : `space -> q` (this will not exit neovim unless you have saved your project)
  - force quit : `space -> Q` (this will force neovim to quit regardless if you have saved your file or not)
  - new tab : `space -> n` (this will create an emtpy new tab)
  - read : `space -> r` (this will prompt you for a command (ls for example) and the output of that command will be added to your text)
  - terminal command : `space -> t` (this will prompt you for a command to run in your terminal)
 
- Edit keybindings
  - edit config : `space -> e -> c` (this will open your neovim configuration)
  - source config : `space -> s -> c` (this will source your config to take immediate effect)
  - open a file : `space -> . ` (this will open a browser to select a file to edit)
  - open a file in a tab : `space -> e -> n` ( this will open a new tab and a browser to select a file to edit)
  - open file tree : `space -> tab` (this will open a new panel on the left with a file tree)

- Window movement ( Useful for switching between splits and the file tree)
  - move left : `space -> h`
  - move up : `space -> k`
  - move down : `space -> j`
  - move right : `space -> l`
  - close all other windows : `space -> o`

- Splits and Tabs
  - move to the left tab : `space -> (`
  - move to the right tab : `space -> )`
  - close all other tabs : `space -> c `

