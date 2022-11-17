let mapleader = ","

nmap <space>w <C-W>

nnoremap <silent> <leader>f :FZF<CR>

nnoremap <silent> <leader>vo :Vexplore<CR>
nnoremap <silent> <leader>ho :Hexplore<CR>
nnoremap <silent> <leader>to :Texplore<CR>
nnoremap <silent> <leader>o :bd<CR>Explore<CR>

" write and/or quit
noremap <silent> <leader>W :wa<CR>
noremap <silent> <leader>w :w<CR>
noremap <silent> <leader>x :wq<CR>
noremap <silent> <leader>Q :q!<CR>
noremap <silent> <leader>q :q<CR>

" buffer stuff
noremap <silent>,bd :bd<CR>

" language
nnoremap <silent> <leader>ar :set arabic!<CR>
nnoremap <silent> <leader>sp :set spell!<CR>

" clipboard
noremap <silent> <leader>y "+y
noremap <silent> <leader>p "+p
"noremap <silent> <leader>P :r! xclip -selection clipboard -o<CR>

