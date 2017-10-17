silent !stty -ixon > /dev/null 2>/dev/null

" color and scrolling "
set t_Co=256
set ttyfast
set background=dark
colorscheme mustang
let mapleader=","
inoremap jk <ESC>
filetype plugin indent on
set cinoptions+=(0,W1s
syntax on
set clipboard=unnamed
set number
set encoding=utf-8
set mouse=a
set tabstop=8
set expandtab
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4
set expandtab
set incsearch
" tell vim to keep a backup file
set backup

" tell vim where to put its backup files
set backupdir=/private/tmp

" tell vim where to put swap files
set dir=/private/tmp
" NERDTree config "

let NERDTreeShowHidden = 1
map <C-n> :NERDTreeFocus<CR>
set laststatus=2

" vim-latex-live-preview config "
 
autocmd FileType tex setl updatetime=1
let g:livepreview_previewer = 'zathura'
let g:tex_flavor='latex'
execute pathogen#infect()
" airline "

let g:airline_theme='jellybeans' 
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
highlight Pmenu ctermfg=255 ctermbg=16 guifg=#ffffff guibg=#626262

"indent line"
let g:indentLine_color_term = 256
let g:indentLine_enabled = 1
let g:indentLine_char = '┆'
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '·'

" syntastic "

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
function! HasConfig(file, dir)
    return findfile(a:file, escape(a:dir, ' ') . ';') !=# ''
endfunction
autocmd BufNewFile,BufReadPre *.js  let b:syntastic_checkers =
    \ HasConfig('.eslintrc', expand('<amatch>:h')) ? ['eslint'] :
    \ HasConfig('.jshintrc', expand('<amatch>:h')) ? ['jshint'] :
    \     ['standard']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers= ['eslint']
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'
let g:syntastic_html_checkers=['']

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn
" grep "

" annoyances "

let g:jsx_ext_required = 0

map <S-k> <Nop>
nmap oo o<Esc>k
nmap OO O<Esc>j
nmap <C-Q> :q<CR>
inoremap <C-w> <Esc>:w<CR>
noremap <C-w> :w<CR>
inoremap <C-d> <Esc>:q!<CR>
noremap <C-d> :q!<CR>
let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(exe|so|dll)$',
    \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
    \ }
" NERD Commenter "
let g:NERDCompactSexyComs = 1
let g:NERDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1

" Ag "
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
cnoreabbrev Ack Ack!
nnoremap <C-a> :Ack!<Space>

let g:ack_mappings = {
              \  'v':  '<C-W><CR><C-W>L<C-W>p<C-W>J<C-W>p',
              \ 'gv': '<C-W><CR><C-W>L<C-W>p<C-W>J' }
" redraw "
map <C-l> :!redraw<CR>

" ycm "
let g:ycm_autoclose_preview_window_after_completion=1
"auto reload" 
augroup reload_vimrc
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END
