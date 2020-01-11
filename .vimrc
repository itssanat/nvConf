set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ctrlpvim/ctrlp.vim'
" Track the engine.
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
Plugin 'jiangmiao/auto-pairs'
"" for auto inserting braces etc


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" general setting
set nu
set ai
set tabstop=4
set shiftwidth=4
set ls=2
set autoindent
set guioptions -=m
set background=dark
set mouse=a


"" searching in vim
set incsearch  "" to perform incremental search
"set hlsearch  "" to highlight search 
" use noincsearch , nohlsearch to reset 


"" tab configuration 
"map <C-tab> :tabn<CR>


"" adding color scheme
colo gruvbox
let g:gruvbox_italic='1'
let gruvbox_contrast_dark='soft'


"" Enable floding
set foldenable
set foldmethod=syntax
set foldlevelstart=99 "" make everything unfolded at start   


"" nerd tree
map <F2> :NERDTreeToggle<CR>
let NERDTreeWinSize=25
let NERDTreeWinPos="left"
let NERDTreeShowHidden=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeAutoDeleteBuffer=1


"" key mapping for movement
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <C-p> :CtrlP<CR>


"" YouCompleteMe
"let g:ycm_key_list_previous_completion=['<Up>']


" UltiSnips Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<c-tab>"
"let g:UltiSnipsListSnippets="<c-s-tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
let g:SuperTabDefaultCompletionType    = '<C-n>'
let g:SuperTabCrMapping                = 0
let g:UltiSnipsExpandTrigger           = '<tab>'
let g:UltiSnipsJumpForwardTrigger      = '<tab>'
let g:UltiSnipsJumpBackwardTrigger     = '<s-tab>'
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']


