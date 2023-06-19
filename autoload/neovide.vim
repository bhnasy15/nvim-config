if exists("g:neovide")
  set guifont=Fira\ Mono,Kawkab\ Mono:h14
  nnoremap <silent> <C-=> :let g:neovide_scale_factor+=0.05<CR>
  nnoremap <silent> <C--> :let g:neovide_scale_factor-=0.05<CR>
  nnoremap <silent> <C-0> :let g:neovide_scale_factor=1<CR>
endif
