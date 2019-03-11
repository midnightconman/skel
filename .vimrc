
"Enable syntax highliting
filetype plugin indent on
syntax on

set t_BE=
set t_Co=256
colorscheme crayon

set tabstop=2
set shiftwidth=2
set expandtab

"Quicker gitgutter updates
set updatetime=300
" go specific settings:
autocmd FileType go set tabstop=4
autocmd FileType go set noexpandtab

" Highlight find results
set hlsearch
"hi Search ctermbg=54 ctermfg=0 cterm=NONE guibg=#D8C27A guifg=#101112 gui=NON

" IndentLine settings:
let g:indentLine_color_term = 91

" vim-gitgutter settings:
let g:gitgutter_sign_added = '●'
let g:gitgutter_sign_modified = '●'
let g:gitgutter_sign_removed = '●'
let g:gitgutter_sign_removed_first_line = '-'
let g:gitgutter_sign_modified_removed = '~'
