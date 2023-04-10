""" Optixal's Neovim Init.vim

""" Vim-Plug
call plug#begin('~/.config/nvim/plugged')
" Plug '<GITHUB-USERNAME>/<REPOSITORY-NAME>'

" theme
Plug 'dracula/vim'

" file explorer
Plug 'preservim/nerdtree'

" vim airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

" fonts setting
set encoding=utf-8
set termencoding=utf-8

set nu
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set ignorecase
set smartcase
set notimeout

let mapleader = "\<SPACE>" " defualt

" ==== dracula.nvim ====
syntax on
color dracula
highlight Pmenu guibg=white guifg=black gui=bold
highlight Comment gui=bold
highlight Normal gui=none
highlight NonText guibg=none

" ==== 
nnoremap <LEADER>n : NERDTreeToggle<CR>

" airline
set showtabline=2
let g:airline#extensions#tabline#enabled = 1
nnoremap <LEADER>h : tabprevious<CR>
nnoremap <LEADER>l : tabnext<CR>

" fzf
nnoremap <LEADER>f : Files<CR>
nnoremap <LEADER>b : Buffers<CR>
