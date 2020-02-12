
call plug#begin('~/.vim/plugged')


Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-json','coc-tsserver','coc-emmet','coc-tslint','coc-prettier']
Plug 'leafgarland/typescript-vim'
Plug 'wadackel/vim-dogrun'
Plug 'mileszs/ack.vim'
Plug 'rking/ag.vim'
nnoremap <c-p> :FZF<cr>
call plug#end()


" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction




set number
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set clipboard=unnamed
colorscheme dogrun
:nnoremap <Leader>w <C-w>
:nnoremap <C-S> :update<cr>
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set ignorecase
set smartcase
set hlsearch
set incsearch
syntax enable
:map <space>s :update<CR>
let g:ag_working_path_mode="r"



