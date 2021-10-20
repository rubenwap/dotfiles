" Automatic vim plug install if needed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

" Aesthetics - Main
Plug 'morhetz/gruvbox' " Theme
Plug 'vim-airline/vim-airline' " Status bar
Plug 'vim-airline/vim-airline-themes' " Themes for airline
Plug 'ryanoasis/vim-devicons' " Adds glyphs to some plugins
Plug 'junegunn/rainbow_parentheses.vim' " Highlight parenthesis
Plug 'tpope/vim-fugitive' " Git client
Plug 'preservim/nerdtree' " NerdTree
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } " Golang
Plug '907th/vim-auto-save' " AutoSave
Plug 'Raimondi/delimitMate' " auto close paren
Plug 'tpope/vim-rhubarb' " GitHub compatibility
" Plug 'kien/ctrlp.vim' " Ctrlp search. Disabling while testing fzf
Plug 'neovim/nvim-lspconfig' " language server protocol
Plug 'junegunn/fzf.vim' " search everything

call plug#end()

lua << EOF
require'lspconfig'.gopls.setup{}
EOF

let g:auto_save = 1  " enable AutoSave on Vim startup
let g:auto_save_silent = 1  " do not display the auto-save notification
set termguicolors

" Go syntax highlighting
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1
let g:go_fmt_autosave = 1

""" Coloring
let g:gruvbox_italic=1
syntax on
color gruvbox
highlight Pmenu guibg=white guifg=black gui=bold
highlight Comment gui=bold
highlight Normal gui=none
highlight NonText guibg=none

" Opaque Background (Comment out to use terminal's profile)
set termguicolors

""" Other Configurations
filetype plugin indent on
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
set incsearch ignorecase smartcase hlsearch
set ruler laststatus=2 showcmd showmode
" Uncomment the following to make hidden chars visible
" set list listchars=trail:»,tab:»-
" set fillchars+=vert:\ 
set wrap breakindent
set encoding=utf-8
set number
set title

""" Nerdtree specific
nnoremap <C-n> :NERDTreeToggle<CR>

""" Shorcuts for split resizing
:nnoremap <silent> <c-k> :resize -10<CR>
:nnoremap <silent> <c-j> :resize +10<CR>
:nnoremap <silent> <c-h> :vertical resize -10<CR>
:nnoremap <silent> <c-l> :vertical resize +10<CR>

""" Call FZF file search like Ctrlp
:nnoremap <C-p> :Files<CR>

""" Call FZF code search 
:nnoremap <Tab> :Rg<CR>

""" Abbreviations
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

""" Autocommands
autocmd BufWritePost *.go :silent GoImports

""" Don't display line number on terminal opening
autocmd TermOpen * setlocal nonumber norelativenumber
" Make escape work in the Neovim terminal.
tnoremap <Esc> <C-\><C-n>

""" fzf
set rtp+=/usr/local/opt/fzf
set rtp+=/opt/homebrew/opt/fzf
