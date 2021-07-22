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
Plug 'wjsetzer/freepascal-vim'  " freepascal jank
Plug 'morhetz/gruvbox'          " vim gruvbox color scheme
Plug 'sheerun/vim-polyglot'     " syntax highlight for more langs
call plug#end()

set nocompatible
syntax on
filetype on
colorscheme gruvbox

set inccommand=nosplit
set showcmd
set nohls
set wildmenu
set number
set smarttab
set expandtab
set noerrorbells
set shiftwidth=4
set tabstop=4 softtabstop=4
set nu
set nowrap
set smartcase
set noswapfile
set incsearch
set colorcolumn=80
set ignorecase

let g:netrw_banner = 0
let g:netrw_liststyle = 4


"exit terminal mode with escape"
tnoremap <esc> <C-\><C-n> 

"main helper functions"
noremap <space>w  :w <cr>
noremap <space>Q :q! <cr> 
noremap <space>q  :q <cr> 
noremap <space>n  :tabedit <cr> 
noremap <space>r  :read!  

"edit files"
noremap <space>ec :tabedit $MYVIMRC <cr> 
noremap <space>sc :source $MYVIMRC <cr> 
noremap <space>e. :e . <cr> 
noremap <space>en :tabedit . <cr> 
noremap <space><tab> :Lexplore <bar> :vertical resize 40 <cr> 

"window movement"
noremap <space>l <C-w>l 
noremap <space>k <C-w>k 
noremap <space>j <C-w>j 
noremap <space>h <C-w>h 
noremap <space>o <C-w>o 

"splits"
noremap <space>sv :vsplit <cr>
noremap <space>sh :split <cr>

"tab movement"
noremap <space>( gT
noremap <space>) gt
noremap <space>c :tabo <cr>

"tools"
"table"
vmap <space>t :!column -t <cr> gv

"indent"
vmap <space>l >gv
vmap <space>h <gv

"normal command highlight"
vmap <space>n :norm 

"auto groups for file handling"
augroup pascal_file
    autocmd!
    autocmd filetype pascal noremap <buffer> <F5> :w <bar> !fpc % && %:p:r <cr>
    autocmd filetype freepascal noremap <buffer> <F5> :w <bar> !fpc % && %:p:r <cr>
    autocmd filetype freepascal noremap <buffer> <space>ac :norm I// <cr>
    autocmd filetype freepascal noremap <buffer> <space>rc :norm 0f/xx <cr>
augroup END

augroup bash_script
    autocmd!
    autocmd filetype sh noremap <buffer> <F5> :w <bar> !%:p<cr>
augroup END

autocmd BufNewFile,BufRead *.nim :set filetype=nim
augroup nim_file
    autocmd!
    autocmd filetype nim noremap <buffer> <F5> :w <bar> !nim c -r %:p<cr>
augroup END

augroup python_file
    autocmd!
    autocmd filetype python noremap <buffer> <F5> :w <bar> !python3 %:p<cr>
augroup END
