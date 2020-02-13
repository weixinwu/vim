
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

" coc
" " Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
"
" " Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
"
" " Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
let g:coc_user_config = {}
let g:coc_user_config['coc.preferences.jumpCommand'] = 'split'
"
" " Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
"
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
      execute 'h '.expand('<cword>')
  else
      call CocAction('doHover')
  endif
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



