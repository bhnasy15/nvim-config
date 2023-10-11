let g:loaded_python3_provider = 0
let g:loaded_node_provider = 0
let g:loaded_perl_provider = 0
let g:loaded_ruby_provider = 0
"set t_Co=265
set mouse=a

set showcmd
set wildmenu
set wildmode=longest:full:lastused
" set wildignore *.docx*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx,

set scrolloff=10
set backspace=indent,eol,start

set encoding=UTF-8
set nobackup
set noswapfile

set nofoldenable
set foldmethod=manual

set shiftwidth=4
set tabstop=4
set expandtab
set smartindent

set nohlsearch
set showmatch
set incsearch
set ignorecase
set smartcase

set statusline="" 
set statusline+=%F\ %M\ %Y\ %R%=\ (%l,%c)\ %p%%
set laststatus=2

set number
set relativenumber

set cursorline

set nowrap

set spelllang=ar,en

colorscheme tender

runtime autoload/map.vim
runtime autoload/neovide.vim
runtime autoload/netrw-config.vim

command ReqLsp lua require("lsp"); require("luasnip.loaders.from_vscode").lazy_load()
command NoIgnore lua require("fzf-setup")

