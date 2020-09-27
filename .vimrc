"For updates please check https://ererthon.com and https://github.com/erethon
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Visual stuff
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Turn syntax highlighting on
syntax on

"Masochism on
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"Paste yanked without loosing it
noremap <Leader>p "0p

"Insert 4 spaces when tab is pressed (if not softtabstop is set)
"set tabstop=4
set tabstop=2
"Insert space characters when tab is pressed
set expandtab
"Controls how many spaces are indented when > and < is used
"set shiftwidth=4
set shiftwidth=2

"Remove trailing whitespace for .py and .rst files
autocmd BufWritePre *.py :%s/\s\+$//e
autocmd BufWritePre *.rst %s/\s\+$//e

" highlight trailing spaces in annoying red
highlight ExtraWhitespace ctermbg=1 guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

au BufNewFile,BufRead *.go set filetype=go
autocmd BufNewFile,BufRead *.rs set filetype=rust

"Show line numbers
set number
"Show ruler on bottom of vim
"set ruler

"Ignore case when searching
set ignorecase
"Set smartcace on (aka step will find stepbrother and Steps, but Step wont
"find stepbrother)
set smartcase
"Highlight search results
set hlsearch

set showmatch
set mat=2
set cursorline                    " highlight current line
"


"Show a blue vertical line on the 80th character (pep8 compliant)
if exists('+colorcolumn')
	set colorcolumn=80
	highlight ColorColumn ctermbg=23
else
	au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

"Color
"colorscheme BlackSea


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mapping stuff
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Mapping 0 to go to first non-blank character of line
map 0 ^

"Use Ctrl + t for opening a new tab
" nnoremap <c-t> :tabnew <Enter>
"Use Ctrl + h/l for previous/next tab
nnoremap <c-h> gT
nnoremap <c-l> gt

"Use ';' instead of ':'
nnoremap ; :

map <C-n> :NERDTreeToggle<CR>

"Faster Normal Mode
"imap ii <Esc>

"Pep8 checking
map <F5> :!pep8 % <Enter>

map <F2> :tag <Space>

"Copy selected
map <C-c> :w ! pbcopy <CR><CR>

"Open function list
let Tlist_Use_Right_Window   = 1
map <C-f> :TlistToggle <Enter>

"Easy set paste and set nopaste
set pastetoggle=<F2>

"Enable mouse in vim
set mouse=a

"Common typos
"imap
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Random Stuff
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Enable pathogen add ons
"execute pathogen#infect()


filetype indent plugin on
filetype indent on

filetype plugin on
set omnifunc=syntaxcomplete#Complete

"Show currentfile
set modeline
set ls=2

"Vundle related stuff
"set nocompatible              " be iMproved, required
"filetype off                  " required
"
"" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdTree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'fatih/vim-go'
Plugin 'vim-scripts/taglist.vim'
Plugin 'rust-lang/rust.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-syntastic/syntastic'
Plugin 'hwayne/tla.vim'
Plugin 'lervag/vimtex'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set t_Co=256
let macvim_skip_colorscheme=1
