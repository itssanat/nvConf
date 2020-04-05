set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.local/share/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'tmhedberg/SimpylFold'
Plug 'morhetz/gruvbox'
Plug 'Valloric/YouCompleteMe'
Plug 'ctrlpvim/ctrlp.vim'
"Plug 'Yggdroot/indentLine'
Plug 'thaerkh/vim-indentguides'

"Plug 'Townk/vim-autoclose'
Plug 'cohama/lexima.vim'  " auto complete

Plug 'tpope/vim-fugitive'

Plug 'preservim/nerdcommenter'

"Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" multiple cursors in neovim
Plug 'terryma/vim-multiple-cursors'
"Plug 'severin-lemaignan/vim-minimap'

" powerline theme
"Plug 'vim-airline/vim-airline-themes'
" show file icon
" Plug 'ryanoasis/vim-devicons'

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
set cursorline
set signcolumn=yes
set encoding=utf8
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
let NERDTreeMapOpenInTab='t'
autocmd VimEnter * NERDTree
autocmd BufWinEnter * NERDTreeMirror



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


"ycm settings
let g:ycm_enable_diagnostic_signs = 1
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_show_diagnostics_ui = 1
let g:ycm_global_ycm_extra_conf = '~/.config/nvim/.ycm_extra_conf.py'
let g:ycm_key_list_select_completion   = ['<C-j>', '<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<C-p>', '<Up>']
set completeopt-=preview
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"

" `my_snippets` is the directory we created before
let g:UltiSnipsSnippetDirectories=["UltiSnips", "my_snippets"]



"let g:indentguides_spacechar = '┆'
let g:indentguides_tabchar = '┆'


function! Multiple_cursors_before()
  if exists(':YouCompleteMeLock')==2
    exe 'YouCompleteMeLock'
  endif
endfunction

function! Multiple_cursors_after()
  if exists(':YouCompleteMeUnlock')==2
    exe 'YouCompleteMe'
  endif
endfunction

let g:multi_cursor_use_default_mapping=0
" Default mapping
let g:multi_cursor_start_word_key      = '<C-d>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-d>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-d>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'


highlight LineNr ctermfg=grey ctermbg=234

"hi clear CursorLine
"augroup CLClear
"    autocmd! ColorScheme * hi clear CursorLine
"augroup END
"
"hi CursorLineNR cterm=bold
"augroup CLNRSet
"    autocmd! ColorScheme * hi CursorLineNR cterm=bold
"augroup END


" tab bar coloring
hi TabLineFill ctermfg=234 ctermbg=234
hi TabLine ctermfg=black ctermbg=grey
hi TabLineSel ctermfg=black ctermbg=DarkBlue
hi Title ctermfg=DarkRed ctermbg=grey


"let g:airline#extensions#tabline#enabled = 1
let g:AutoPairsFlyMode = 0

" NERDCommenter
nmap // <leader>c<space>
""vmap // <leader>cs
let g:NERDDefaultAlign = 'left'
let g:NERDSpaceDelims = 1
nmap <C-/> <leader>cu


set guifont=DroidSansMono\ Nerd\ Font\ 11
" set macligatures
" set guifont=Fira\ Code:h12
" airline theme
let g:airline_theme='simple'

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''



