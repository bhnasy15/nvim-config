let mapleader = ","

nmap <space>w <C-W>

nnoremap <silent> <C-+> :let g:neovide_scale_factor+=0.05<CR>
nnoremap <silent> <C--> :let g:neovide_scale_factor-=0.05<CR>
nnoremap <silent> <C-=> :let g:neovide_scale_factor=1<CR>

nnoremap <silent> <leader>f :FZF<CR>

nnoremap <silent> <leader>tn :tabnew<CR>
nnoremap <silent> <leader>vn :vs<CR>
nnoremap <silent> <leader>hn :sp<CR>

nnoremap <silent> <leader>vo :Vexplore<CR>
nnoremap <silent> <leader>ho :Hexplore<CR>
nnoremap <silent> <leader>to :Texplore<CR>
" nnoremap <silent> <leader>o :bd<CR>Explore<CR>

" write and/or quit
noremap <silent> <leader>W :wa<CR>
noremap <silent> <leader>w :w<CR>
noremap <silent> <leader>X :wqa<CR>
noremap <silent> <leader>x :wq<CR>
noremap <silent> <leader>Q :qa!<CR>
noremap <silent> <leader>q :q<CR>

" buffer stuff
noremap <silent>,bd :bd<CR>
noremap <silent>,bn :bn<CR>

" language
nnoremap <silent> <leader>ar :set arabic!<CR>
nnoremap <silent> <leader>sp :set spell!<CR>

" clipboard
noremap <silent> <leader>y "+y
noremap <silent> <leader>p "+p
"noremap <silent> <leader>P :r! xclip -selection clipboard -o<CR>

