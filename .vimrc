set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" My PluginList
Plugin 'scrooloose/nerdtree'
Plugin 'nanotech/jellybeans.vim'
Plugin 'bling/vim-airline'
Plugin 'airBlade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'Raimondi/delimitMate'

call vundle#end() 

filetype plugin indent on    " required
if has("syntax")
    syntax on " syntax highlight
endif

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_python_checker=['pylint']
let g:syntastic_c_compiler = 'gcc'

" delimitMate
" let delimitMate_expand_cr=1

" NERDTree
map <Leader>nt <ESC>:NERDTree<CR>
let NERDTreeShowHidden=1
" let NERDTreeQuitOnOpen=1
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|vendor$',
    \ 'file': '\v\.(exe|so|dll)$'
\ }

colorscheme jellybeans " color scheme

set number " show line number
set relativenumber " show line number but 
set ruler " show current position
set hlsearch
set incsearch " Makes search act like search in modern browsers
set showmatch " Show matching brackets when text indicator is over them
set ignorecase
set cursorline

set tabstop=4 " 1 tab == 4 spaces
set softtabstop=4
set shiftwidth=4 " auto indent's tab size
set expandtab
set autoindent "auto indent
set smartindent " smart indent
autocmd FileType make setlocal noexpandtab " Makefile Option


set fileencodings=eur-kr,utf-8 " file encoding
set tenc=utf-8 " terminal encoding

set history=1000 " save vi edit recoding count
set autowrite " set to auto write on opening an other file
set mouse=a
set backspace=indent,eol,start
set splitbelow
set termwinsize=10x0
:
" fold function by indent or syntax.
" open a folded function using 'zo'
" clase a function using 'zc'
set foldmethod=indent
set foldnestmax=1

" last modified cursor location
au BufReadPost *
\ if line ("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g'\"" |
\ endif

" Font Setting
if has('gui_running')
    set guifont=Cascadia_Code:h15
endif

" show status bar
set laststatus=2
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
