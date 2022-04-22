" This line makes pacman-installed global Arch Linux vim packages work.
source /usr/share/nvim/archlinux.vim

set ic
set relativenumber
set number
autocmd BufRead ~/.config/i3/* setlocal ft=i3config
let g:airline_powerline_fonts = 1
let g:airline_theme='deus'

call plug#begin()
Plug 'chrisbra/Colorizer'
Plug 'Mofiqul/dracula.nvim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'

call plug#end()
colorscheme dracula
