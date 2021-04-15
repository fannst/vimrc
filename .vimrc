" Plugins Install

call plug#begin('~/.vim/plugged')

Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/dracula/vim'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'https://github.com/enricobacis/vim-airline-clock'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/ycm-core/YouCompleteMe'

call plug#end()

" Configures VIM

:colorscheme dracula

:set autoindent
:set number
:set cursorline
:set showcmd
:set wildmenu
:set lazyredraw
:set showmatch
:set foldenable
:set foldlevelstart=10
:set foldnestmax=10
:set foldmethod=indent
:set mouse=a
:set shiftwidth=4
:set relativenumber
:set tabstop=4

" NerdTree Shit

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" Airline Shit

let g:airline#extensions#tabline#enabled = 1

" Airline Clock

let g:airline#extensions#clock#format = '%H:%M:%S'
let g:airline#extensions#clock#updatetime = 1000