set t_Co=265

set mouse=a

set guifont=Fira\ Mono,Kawkab\ Mono:h14

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

set wrap

set spelllang=ar,en

colorscheme tender

runtime autoload/map.vim
runtime autoload/netrw-config.vim

command ReqCmp lua require("luasnip.loaders.from_vscode").lazy_load()

command ReqLsp lua require("lsp")

command NoIgnore lua require("fzf")

