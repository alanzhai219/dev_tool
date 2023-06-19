""" Optixal's Neovim Init.vim

""" Vim-Plug
call plug#begin('~/.config/nvim/plugged')

" icon

" colorscheme
Plug 'dracula/vim'
Plug 'folke/tokyonight.nvim'
Plug 'bluz71/vim-nightfly-colors', { 'as': 'nightfly' }
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

" file explorer
Plug 'preservim/nerdtree'

" vim airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" git
Plug 'tpope/vim-fugitive'

" Plug vim-cpp-enhanced-highlight
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'scrooloose/syntastic'

Plug 'luochen1990/rainbow'
Plug 'rcarriga/nvim-notify'

" starify
Plug 'mhinz/vim-startify'

" tagbar
Plug 'preservim/tagbar'

call plug#end()

" fonts setting
set encoding=utf-8
set termencoding=utf-8
set guifont=?

set nu
set tabstop=4
set shiftwidth=4
set softtabstop=4
set ignorecase
set smartcase
set notimeout

let mapleader = "\<SPACE>" " defualt


" theme
" ==== dracula.nvim ====
syntax on
highlight Pmenu guibg=white guifg=black gui=bold
highlight Comment gui=bold
highlight Normal gui=none
highlight NonText guibg=none
" colorscheme dracula
" colorscheme onedarker
" colorscheme tokyonight-night
" colorscheme tokyonight-storm
" colorscheme tokyonight-day
" colorscheme tokyonight-moon
colorscheme nightfly
" colorscheme catppuccin-latte catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha

" nerdtree
nnoremap <LEADER>n : NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" airline
set showtabline=2
let g:airline#extensions#tabline#enabled = 1
" set AirlineTheme solarized
let g:airline_theme = 'solarized'
let g:airline_solarized_bg='dark'
nnoremap <LEADER>h : tabprevious<CR>
nnoremap <LEADER>l : tabnext<CR>

" fzf
nnoremap <LEADER>f : Files<CR>
nnoremap <LEADER>b : Buffers<CR>

" cpp highlight
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1

" rainbow
let g:rainbow_active = 1

" tagbar
nmap <LEADER>t :TagbarToggle<CR>
