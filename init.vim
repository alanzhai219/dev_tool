" mouse
set mouse=""
set clipboard=unnamed

" fonts setting
set encoding=utf-8
set termencoding=utf-8
set guifont=?

set number
set relativenumber
set tabstop=4
set shiftwidth=4
set softtabstop=4
set ignorecase
set smartcase
set notimeout

let mapleader = "\<SPACE>" " defualt

""" Optixal's Neovim Init.vim
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  :exe '!curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
              \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  au VimEnter * PlugInstall --sync | source $MYVIMRC
endif

""" Vim-Plug
call plug#begin('~/.config/nvim/plugged')

" UI
Plug 'rcarriga/nvim-notify'
Plug 'stevearc/dressing.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'

Plug 'folke/noice.nvim'
Plug 'MunifTanjim/nui.nvim'

" colorscheme
Plug 'dracula/vim'

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

" starify
Plug 'mhinz/vim-startify'

" tagbar
Plug 'preservim/tagbar'

call plug#end()

" UI
lua require("noice").setup()

" theme
" ==== dracula.nvim ====
syntax on
highlight Pmenu guibg=white guifg=black gui=bold
highlight Comment gui=bold
highlight Normal gui=none
highlight NonText guibg=none
colorscheme dracula
" colorscheme onedarker
" colorscheme tokyonight-night
" colorscheme tokyonight-storm
" colorscheme tokyonight-day
" colorscheme tokyonight-moon

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

" cpp syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
"
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_cpp_check_header = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_cpp_cpplint_exec = 'cpplint'
" let g:syntastic_cpp_checkers = ['cpplint', 'gcc', 'clang']
" 设置 cpplint 的错误级别阈值（默认是 5），级别低于这一设置的不会显示
" let g:syntastic_cpp_cpplint_thres = 5
" let syntastic_aggregate_errors = 1
" let g:syntastic_error_symbol = "✗"
" let g:syntastic_warning_symbol = "⚠"
" let g:syntastic_style_error_symbol = '!'
" let g:syntastic_style_warning_symbol = '?'
"
