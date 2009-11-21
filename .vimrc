"
"========================================================================================
"
"       Filename:   .vimrc
"
"    Description:   vim config file 
"
"        Version:    4.0
"        Created:    2008-8-22 15:52
"
"         Author:     Hamo Bai
"
"========================================================================================
"

set nocompatible   

"""""""""""""""set encoding""""""""""""""""
set encoding=utf-8   
set fileencoding=utf-8  
set fileencodings=ucs-bom,utf-8,chinese,taiwan 

""""""""""""""""set language environment""""""""""""""
set helplang=en     
set langmenu=en_US.UTF-8    
language messages en_US.UTF-8    

filetype on 
filetype plugin indent on   
set autoindent  
set ruler    
set history=400 
set number 
set mouse=a 
set showmatch 
set matchtime=2  
set autoread 
set autochdir  
set backspace=2   
set incsearch  
set hlsearch  
set noignorecase  
set clipboard+=unnamed  

set noerrorbells
set novisualbell
set t_vb=

set expandtab 
set tabstop=4 
set shiftwidth=4 
set guioptions-=T 
set wrap   
"set spl=en spell  

set nobackup   
set noswapfile  

syntax enable
syntax on   

"""""""""Taglist""""""""""""""
let Tlist_Use_Right_Window=1  
let Tlist_File_Fold_Auto_Close=1 
let Tlist_Exit_OnlyWindow=1 

""""""""set leader"""""""""""
let mapleader = ","
let g:mapleader = ","

""""""""Netrw""""""""""""""
let g:netrw_winsize = 25
nmap <leader>fe :Sexplore!<cr>

if has("gui_running")
    colorscheme oceandeep
    set guifont=YaHei\ Consolas\ Hybrid\ 12 
else
    set background=dark
    colorscheme desert
endif
