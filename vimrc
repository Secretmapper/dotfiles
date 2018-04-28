set nocompatible

call plug#begin('~/.vim/bundle')
Plug 'altercation/vim-colors-solarized'
Plug 'daylerees/colour-schemes', { 'rtp':'vim/' }

Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-vinegar'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-projectionist'
Plug 'junegunn/fzf'
Plug 'Shougo/vimshell.vim'
Plug 'bling/vim-airline'
"https://github.com/ryanoasis/vim-devicons#installation
Plug 'ryanoasis/vim-devicons'
Plug 'christoomey/vim-tmux-navigator'

Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'mileszs/ack.vim'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

Plug 'tpope/vim-surround'
Plug 'thinca/vim-quickrun'

Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'mattn/emmet-vim'

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'slashmili/alchemist.vim'
Plug 'mhartington/nvim-typescript'
Plug 'zchee/deoplete-clang'

" Plug 'Valloric/YouCompleteMe'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/syntastic'
Plug 'marijnh/tern_for_vim'
Plug 'flowtype/vim-flow'

Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rails'
Plug 'lambdatoast/elm.vim'
Plug 'darthmall/vim-vue'
Plug 'digitaltoad/vim-jade'
" Plug 'pangloss/vim-javascript'
Plug 'elixir-lang/vim-elixir'
Plug 'keith/swift.vim'
" Plug 'mxw/vim-jsx'
Plug 'jparise/vim-graphql'
Plug 'jdonaldson/vaxe'
Plug 'leafgarland/typescript-vim'
" Bundle 'clausreinke/typescript-tools.vim'
Plug 'Quramy/tsuquyomi'
Plug 'Shougo/vimproc.vim'
" Bundle 'lukaszkorecki/CoffeeTags'
Plug 'groenewege/vim-less'
Plug 'kchmck/vim-coffee-script'
Plug 'jeroenbourgois/vim-actionscript'
Plug 'wavded/vim-stylus'
Plug 'valloric/MatchTagAlways'
call plug#end()

set rnu
set number
set ruler
set title
set noswapfile
set clipboard=unnamed

set lazyredraw
set autoread
set autoindent
set cindent
set shiftwidth=2
set tabstop=2
set softtabstop=2
set smarttab
set expandtab
set hls

set mouse=a

syntax enable
set background=light
colorscheme solarized
filetype plugin indent on

set encoding=utf8
"powerline
let g:airline_powerline_fonts=1
set laststatus=2
set guifont=Consolas\ for\ Powerline
let g:Powerline_symbols="fancy"

let mapleader=" "
let NERDTreeMapOpenSplit='-'
let NERDTreeMapActivateNode='l'
let NERDTreeMapCloseDir='h'
let NERDSpaceDelims=1
set splitbelow
set splitright

nmap <leader>ft :NERDTreeToggle <CR>
nmap <leader>tag :TagbarToggle <CR>
nmap <leader>r :QuickRun <CR>

nmap <C-i> :call vaxe#ImportClass()<CR>

nmap <leader>l :set list!<CR>
set listchars=tab:▸\ ,eol:¬

"tab movement
map <C-1> 1gt
map <C-2> 2gt
map <C-3> 3gt
map <C-4> 4gt
map <C-5> 5gt
map <C-6> 6gt
map <C-7> 7gt
map <C-8> 8gt
map <C-9> 9gt
map <C-0> :tablast<CR>

"edit based on path
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

" ====
" start deoplete
" ====
let g:deoplete#enable_at_startup = 1

let g:deoplete#sources#ternjs#types = 1
let g:deoplete#sources#ternjs#depths = 1
let g:deoplete#sources#ternjs#docs = 1
let g:deoplete#sources#ternjs#filter = 0
let g:deoplete#sources#ternjs#case_insensitive = 0
let g:deoplete#sources#ternjs#guess = 1
let g:deoplete#sources#ternjs#sort = 1
let g:deoplete#sources#ternjs#expand_word_forward = 1
let g:deoplete#sources#ternjs#omit_object_prototype = 1
" ====
" end deoplete
" ====

let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

"ctrl+p
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|vendor\|tmp'
map <C-P> :FZF<CR>

let g:projectionist_heuristics = {
      \   "*": {
      \     "*.js": {
      \       "alternate": "{dirname}/__tests__/{basename}-test.js",
      \       "type": "source"
      \     },
      \     "**/__tests__/*-test.js": {
      \       "alternate": "{dirname}/{basename}.js",
      \       "type": "test"
      \     }
      \   }
      \ }

"use ag with ack.vim
let g:ackprg = 'ag --nogroup --nocolor --column'

"
" Syntastic
"
"syntastic: ctrl-w E for error check
let g:syntastic_cpp_checkers = ['cpplint']
let g:syntastic_cpp_cpplint_thres = 3 
let g:syntastic_cpp_cpplint_args = '--verbose=3'
let g:syntastic_php_checkers = ['php', 'phpcs']
let g:syntastic_javascript_checkers = ['standard', 'flow']
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <C-w>E :SyntasticCheck<CR>
"map <C-R> :!standard % --format<CR>:redraw<CR>

let g:flow#enable = 0

"" Ultisnips
"let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsListSnippets="<c-s-tab>"

let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]

"haxe
:set autowrite

"typescript
"autocmd FileType typescript setlocal completeopt+=menu,preview
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
" set ballooneval
autocmd FileType typescript setlocal balloonexpr=tsuquyomi#balloonexpr()
autocmd FileType typescript nmap <buffer> <Leader>t : <C-u>echo tsuquyomi#hint()<CR>

set nofoldenable    " disable folding

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'javascript' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \}

au BufNewFile,BufRead *.tag setlocal ft=javascript

" Required for operations modifying multiple buffers like rename.
set hidden

set runtimepath+=~/.vim/bundle/LanguageClient-neovim
let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ 'javascript': ['javascript-typescript-stdio']
    \ 'cpp': ['cquery', '--log-file=/tmp/cq.log'],
    \ 'c': ['cquery', '--log-file=/tmp/cq.log'],
    \ }

let g:LanguageClient_autoStart = 1

nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
