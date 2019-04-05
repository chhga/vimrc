execute pathogen#infect()
call plug#begin('~/.vim/plugged')
Plug 'ngmy/vim-rubocop'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'jremmen/vim-ripgrep'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-endwise'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-fugitive'
Plug 'Valloric/YouCompleteMe'
call plug#end()

set dir=/tmp

set encoding=UTF-8
:set mouse=a
set backspace=indent,eol,start
set guifont=HackNerdFontComplete-Regular:h14

colorscheme atom-dark
syntax on
filetype plugin indent on
set number
filetype on
filetype indent on

let g:neocomplete#enable_at_startup = 1

let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }


let g:AutoPairsShortcutFastWrap = 'C-e'
let g:rg_highligh = 1

autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal expandtab shiftwidth=2 tabstop=2

nnoremap <silent> <C-z> :FZF<CR>

map <leader>r :RuboCop<CR>

map ` :NERDTreeToggle<CR> “ open/close nerdtree window
autocmd BufWinEnter * NERDTreeFind
map ] :NERDTreeFind<CR> “ pressing this inside any open file in vim will jump to the nerdtree and highlight where that file is -> very useful when you have multiple files open at once
