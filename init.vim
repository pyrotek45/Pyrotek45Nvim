"auto-install vim-plug                                                                                                                
if empty(glob('~/.config/nvim/autoload/plug.vim'))                                                                                    
    silent !sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
                \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endif                       

autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

call plug#begin('~/.config/nvim/plugged')   
Plug 'wjsetzer/freepascal-vim'                      " freepascal jank
Plug 'morhetz/gruvbox'                              " vim gruvbox color scheme
Plug 'sheerun/vim-polyglot'                         " syntax highlight for more langs
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " fuzzy finder
call plug#end()

set nocompatible
syntax on
filetype on
colorscheme gruvbox

let tabsize = 2                                                                     
let &shiftwidth=tabsize                                                             
let &tabstop=tabsize                                                                
let &softtabstop=tabsize                                                            
set smarttab                                                                        
set expandtab                                                                       
                                                                                    
set inccommand=nosplit                                                              
set showcmd                                                                         
set nohls                                                                           
set wildmenu                                                                        
set number                                                                          
set noerrorbells                                                                    
set nu                                                                              
set nowrap                                                                          
set smartcase                                                                       
set noswapfile                                                                      
set incsearch                                                                       
set colorcolumn=80                                                                  
set ignorecase  

let g:netrw_banner = 0
let g:netrw_liststyle = 3

let mapleader = " "

"exit terminal mode with escape"
tnoremap <esc> <C-\><C-n> 

"main helper functions"
noremap <leader>w  :w <cr>
noremap <leader>Q :q! <cr> 
noremap <leader>q  :q <cr> 
noremap <leader>n  :tabedit <cr> 
noremap <leader>r  :read!  
noremap <leader>d  :cd %:h<cr>  

"edit files"
noremap <leader>ec :tabedit $MYVIMRC <cr> 
noremap <leader>sc :source $MYVIMRC <cr> 
noremap <leader><tab> :e . <cr> 
noremap <leader>en :tabedit . <cr> 

"window movement"
noremap <leader>l <C-w>l 
noremap <leader>k <C-w>k 
noremap <leader>j <C-w>j 
noremap <leader>h <C-w>h 
noremap <leader>o <C-w>o 

"splits"
noremap <leader>sv :vsplit <cr>
noremap <leader>sh :split <cr>

"tab movement"
noremap <leader>( gT
noremap <leader>) gt
noremap <leader>c :tabo <cr>

"terminal commands
noremap <leader>t :!

"table"
vmap <leader>t :!column -t <cr> gv

"indent"
vmap <leader>l >gv
vmap <leader>h <gv

"normal command highlight"
vmap <leader>n :norm 

"fuzzy finder"
nnoremap <leader>f :FZF<CR>
nnoremap <leader>F :FZF ~<CR>
