""Vim plugins
call plug#begin(stdpath('data') . '/plugged')

Plug 'ayu-theme/ayu-vim'
Plug 'fratajczak/one-monokai-vim'
Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

call plug#end()

"" Building and running code
autocmd filetype cpp nnoremap <F5> :w <bar> !g++ -std=c++17 -Wall -Wextra -Wno-unused-result -DLOCAL -O2   % -o %:r && ./%:r < ./inp.txt <CR>
autocmd filetype cpp nnoremap <F6> :w <bar> !g++ -std=c++17 -Wall -Wextra -Wno-unused-result -DLOCAL -O2   % -o %:r && ./%:r <CR>
autocmd BufNewFile  *.cpp 0r ~/.local/share/nvim/template/template.cpp


autocmd filetype python nnoremap <F5> :w <bar> !python3 % < ./inp.txt <CR>


set syntax
set number relativenumber      " show line numbers              
set wrap                        " wrap lines
set mouse=a                     " enable mouse support
set clipboard+=unnamedplus      " use the system clipboard for copy and paste
set wildmenu                    " visual autocomplete for command menu
set lazyredraw                  " redraw screen only when we need to                
set encoding=UTF-8              " set encoding to UTF-8      
set cursorline                  " highlight current line
set ruler                       " show line and column number of the cursor on right side of statusline
set title                       " Set the window’s title, reflecting the file currently being edited.
set visualbell                  " blink cursor on error, instead of beeping
set autoread                    " autoreload the file in Vim if it has been changed outside of Vim

set laststatus=2                " Status bar
set ttyfast                     " Speed up scrolling in Vim
set scrolloff=3                 " Display 3 lines above/below the cursor when scrolling with a mouse.
set backspace=indent,eol,start  " Fixes common backspace problems
set matchpairs+=<:> 


" Display options
set showmode
set showcmd

" move vertically by visual line (don't skip wrapped lines)
nmap j gj
nmap k gk

"" Tab settings
set tabstop=4           
set expandtab           
set shiftwidth=4        
set softtabstop=4       
set autoindent          
set smartindent         

"" Search Settings
set showmatch
set ignorecase
set smartcase
set incsearch           
set hlsearch        
nnoremap <CR> :nohlsearch<CR><CR>

"" Color Scheme
set t_Co=256
colorscheme gruvbox
set background=dark
set termguicolors       " enable true colors support
"let ayucolor="mirage"     " choose light, dark or mirage

let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1

"" Automatically closing braces
" inoremap {<CR> {<CR>}<Esc>ko<tab>
" inoremap [<CR> [<CR>]<Esc>ko<tab>
" inoremap (<CR> (<CR>)<Esc>ko<tab>
  
"" NerdTree settings
map <C-n> :NERDTreeToggle<CR>

