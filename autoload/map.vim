let mapleader = ","

nmap <S-H> <C-W>

nnoremap <silent> <leader>vf :vs<CR>FZF<CR>
nnoremap <silent> <leader>hf :sp<CR>FZF<CR>
nnoremap <silent> <leader>tf :tabnew<CR>FZF<CR>

nnoremap <silent> <leader>vo :Vexplore<CR>
nnoremap <silent> <leader>ho :Hexplore<CR>
nnoremap <silent> <leader>to :Texplore<CR>
nnoremap <silent> <leader>o :bd<CR>Explore<CR>
" write and/or quit
"nnoremap <silent> <leader>W :wq!<CR>
nnoremap <silent> <leader>w :w!<CR>
nnoremap <silent> <leader>Q :q<CR>
nnoremap <silent> <leader>q :bd<CR>
" language
nnoremap <silent> <leader>ar :set arabic!<CR>
nnoremap <silent> <leader>sp :set spell!<CR>
" clipboard
noremap <silent> <leader>y "+y
noremap <silent> <leader>p "+p
noremap <silent> <leader>P :r! xclip -selection clipboard -o<CR>

