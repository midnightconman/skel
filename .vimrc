let g:go_code_completion_enabled = 0
let g:go_gopls_enabled = 0

" Disable go fmt at file write
"let g:go_fmt_autosave = 0

set viminfo='1000,<1000,s500

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

augroup autoformat_settings
  autocmd FileType bzl AutoFormatBuffer buildifier
  "autocmd FileType c,cpp,proto,javascript AutoFormatBuffer clang-format
  "autocmd FileType dart AutoFormatBuffer dartfmt
  "autocmd FileType go AutoFormatBuffer gofmt
  "autocmd FileType gn AutoFormatBuffer gn
  "autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
  "autocmd FileType java AutoFormatBuffer google-java-format
  "autocmd FileType python AutoFormatBuffer yapf
  " Alternative: autocmd FileType python AutoFormatBuffer autopep8
  "autocmd FileType rust AutoFormatBuffer rustfmt
  "autocmd FileType vue AutoFormatBuffer prettier
augroup END

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
