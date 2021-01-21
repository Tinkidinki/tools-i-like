" vim options
set number
highlight EndOfBuffer ctermfg=black ctermbg=black

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set breakindent
set formatoptions=l
set lbr
set display+=lastline
set ignorecase
set smartcase
set clipboard=unnamedplus
set encoding=utf8

"set cursorline
"set cursorcolumn
highlight CursorColumn ctermbg=Grey

imap jj <esc>
imap kk <esc>
imap hh <esc>
imap ii <esc> 

" Change cursor according to mode
let &t_SI = "\<esc>[5 q"  " blinking I-beam in insert mode
let &t_SR = "\<esc>[3 q"  " blinking underline in replace mode
let &t_EI = "\<esc>[ q"  " default cursor (usually blinking block) otherwise

nnoremap <CR> G
"source /home/tinkidinki/.vim/plugged/vim-code-dark/codedark

"source /home/tinkidinki/.vim/plugged/vim-code-dark/monokai
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tmsvg/pear-tree'
Plug 'tomasiser/vim-code-dark'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'preservim/nerdtree'
Plug 'tibabit/vim-templates'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" pear-tree options
let g:pear_tree_repeatable_expand = 0

" syntax highlight options
let g:cpp_experimental_template_highlight = 1

" Nerdtree options
map <F2> :NERDTreeToggle<CR>

" Latex options
let g:livepreview_previewer = 'okular'

