let mapleader = ","

nmap <space>w <C-W>

nnoremap <silent> <leader>f :FzfLua files<CR>
nnoremap <silent> <leader>b :FzfLua buffers<CR>
nnoremap <silent> <leader>z :FzfLua<CR>

nnoremap <silent> <leader>tn :tabnew<CR>
nnoremap <silent> <leader>vn :vs<CR>
nnoremap <silent> <leader>hn :sp<CR>

nnoremap <silent> <leader>vo :Vexplore<CR>
nnoremap <silent> <leader>ho :Hexplore<CR>
nnoremap <silent> <leader>to :Texplore<CR>
" nnoremap <silent> <leader>o :bd<CR>Explore<CR>

" terminal
tnoremap <S-Esc> <C-\><C-n>
nnoremap <silent> <leader>tt :tabnew +term<CR>

" write and/or quit
noremap <silent> <leader>W :wa<CR>
noremap <silent> <leader>w :w<CR>
noremap <silent> <leader>X :wqa<CR>
noremap <silent> <leader>x :wq<CR>
noremap <silent> <leader>Q :qa!<CR>
noremap <silent> <leader>q :q<CR>
noremap <silent> <leader>dd :bd<CR>

" language
nnoremap <silent> <leader>ar :set arabic!<CR>
nnoremap <silent> <leader>sp :set spell!<CR>
