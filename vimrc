call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
call pathogen#infect()

"Ctrlp
noremap <leader>o <Esc>:CtrlP<CR>
noremap <leader>m <Esc>:CtrlPMRU<CR>

"Powerline
"let g:Powerline_symbols = 'fancy'
"set guifont=Inconsolata-dz-Powerline
