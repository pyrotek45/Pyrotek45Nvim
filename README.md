# Pyrotek45_neovim
My neovim config inspired by spacevim (but with a smaller footprint)

# how to install 

- without flatpak
> `git clone https://github.com/pyrotek45/Pyrotek45Nvim.git && chmod +x Pyrotek45Nvim/neovim_setup.sh && cd Pyrotek45Nvim/ && bash neovim_setup.sh -n`
- with flatpak
> `git clone https://github.com/pyrotek45/Pyrotek45Nvim.git && chmod +x Pyrotek45Nvim/neovim_setup.sh && cd Pyrotek45Nvim/ && bash neovim_setup.sh -a`
- only flatpak
> `git clone https://github.com/pyrotek45/Pyrotek45Nvim.git && chmod +x Pyrotek45Nvim/neovim_setup.sh && cd Pyrotek45Nvim/ && bash neovim_setup.sh -f`

# basic usage

The `space` key is the leader for many of the added keybindings.
You can change the leader key in the init.vim file anytime.

To understand how to use the keybindings here, just remember `->` means followed. 

So, for example`space -> w` means pressing space (then letting go) and then quickly (within a second) pressing w.

- Main keybindings
  - Save : `space -> w`
  - Quit : `space -> q` (this will not exit neovim unless you have saved your project)
  - Force quit : `space -> Q` (this will force neovim to quit regardless if you have saved your file or not)
  - New tab : `space -> n` (this will create an emtpy new tab)
  - Read : `space -> r` (this will prompt you for a command (ls for example) and the output of that command will be added to your text)
  - Terminal command : `space -> t` (this will prompt you for a command to run in your terminal)
  - Set current directory : `space -> d` (this will set the current dir for the file you have open) 
  - Open file explorer : `space -> tab` ( this will open a new panel on the left with a file tree )
  - Open a file in a tab : `space -> e -> n` ( this will open a new tab and a browser to select a file to edit )
 
- Edit Keybindings
  - Edit config : `space -> e -> c` ( this will open your neovim configuration )
  - Source config : `space -> s -> c` ( this will source your config to take immediate effect )

- Window Movement ( Useful for switching between splits and the file tree )
  - Move left : `space -> h`
  - Move up : `space -> k`
  - Move down : `space -> j`
  - Move right : `space -> l`
  - Close all other windows : `space -> o`

- Splits and Tabs
  - Move to the left tab : `space -> (`
  - Move to the right tab : `space -> )`
  - Close all other tabs : `space -> c `

- Table
  - In visual mode press : `space -> t` : ( this will take the currently highlighted lines and run them through column )

- Indenting
  - In visual mode press : `space -> l` : ( this will indent the currently highlighted lines and indent them together to the right )
  - In visual mode press : `space -> h` : ( this will indent the currently highlighted lines and indent them together to the left )

- Normal Mode
  - In visual mode press : `space -> n` : ( this will enter you in normal mode where your commands will affect every highlighted line ) 

- Fuzzy Finder
  - Activate the fuzzy finder in the current folder : `space -> f`
  - Activate the fuzzy finder in the home folder : `space -> F`
