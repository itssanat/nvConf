set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.local/share/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'tmhedberg/SimpylFold'
Plug 'morhetz/gruvbox'
Plug 'Valloric/YouCompleteMe'
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'Yggdroot/indentLine'
Plug 'thaerkh/vim-indentguides'

Plug 'tpope/vim-fugitive'

"Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()

let g:loaded_python_provider = 0
let g:python3_host_prog = '/home/itssanat/anaconda3/bin/python3'
"let g:python_host_prog  = '/home/itssanat/anaconda3/bin/python'


"" general setting
set nu
set ai
set tabstop=4
set shiftwidth=4
set ls=2
set autoindent
set background=dark
set mouse=a
set clipboard+=unnamedplus
set guicursor=
set guicursor=a:blinkon100
"" searching in vim
set incsearch
nnoremap <C-s> :split term://bash<CR>



" adding color scheme
colo gruvbox
let g:gruvbox_italic='1'
let gruvbox_contrast_dark='soft'



" Enable floding
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
set completeopt-=preview


" `my_snippets` is the directory we created before
let g:UltiSnipsSnippetDirectories=["UltiSnips", "my_snippets"]



"let g:indentguides_spacechar = '┆'
let g:indentguides_tabchar = '┆'
