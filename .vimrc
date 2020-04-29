call plug#begin('~/.vim/plugged')



Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-json','coc-tsserver','coc-css','coc-emmet','coc-tslint']
Plug 'leafgarland/typescript-vim'
Plug 'wadackel/vim-dogrun'
Plug 'mileszs/ack.vim'
Plug 'rking/ag.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'alvan/vim-closetag'
Plug 'chrisbra/vim-commentary'
Plug 'ayu-theme/ayu-vim'
Plug 'preservim/nerdtree'

Plug 'morhetz/gruvbox'
Plug 'rakr/vim-one'
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }





call plug#end()

"colorscheme gruvbox

" use <tab> for trigger completion and navigate to the next complete item
" inoremap <silent><expr> <TAB>
" \ pumvisible() ? "\<C-n>" :
" \ <SID>check_back_space() ? "\<TAB>" :
" \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"


"neardtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

inoremap <expr> <TAB> pumvisible() ? "\<C-y>" : "\<CR>"

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
:nnoremap <Leader>w <C-w>
:nnoremap <C-S> :update<cr>
nnoremap <c-p> :FZF<cr>
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set ignorecase
set smartcase
set hlsearch
set incsearch
syntax enable
:map <space>s :update<CR>
:imap jj <Esc>
let mapleader=" "
let g:ag_working_path_mode="r"
" command! -nargs=0 Prettier :CocCommand prettier.formatFile
" vmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)


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
nmap <leader>ac  <Plug>(coc-codeaction)
nmap <leader>qf  <Plug>(coc-fix-current)

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

if (&term =~ '^xterm' && &t_Co == 256)
  set t_ut= 
endif

"slient
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=""




if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif


if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set background=dark " for the dark version
let ayucolor="dark"
colorscheme ayu
