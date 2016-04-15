set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'
Plugin 'daylerees/colour-schemes', { 'rtp':'vim/' }

Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Shougo/vimshell.vim'
Plugin 'bling/vim-airline'
"https://github.com/ryanoasis/vim-devicons#installation
Plugin 'ryanoasis/vim-devicons'
Plugin 'christoomey/vim-tmux-navigator'

Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

Plugin 'mileszs/ack.vim'
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'

Plugin 'tpope/vim-surround'
Plugin 'thinca/vim-quickrun'

Plugin 'honza/vim-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'mattn/emmet-vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/syntastic'
Plugin 'marijnh/tern_for_vim'

Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rails'
Plugin 'lambdatoast/elm.vim'
Plugin 'darthmall/vim-vue'
Plugin 'slim-template/vim-slim.git'
Plugin 'digitaltoad/vim-jade'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'jdonaldson/vaxe'
Plugin 'leafgarland/typescript-vim'
Bundle 'clausreinke/typescript-tools.vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'Shougo/vimproc.vim'
Bundle 'lukaszkorecki/CoffeeTags'
Plugin 'groenewege/vim-less'
Plugin 'kchmck/vim-coffee-script'
Plugin 'jeroenbourgois/vim-actionscript'
Plugin 'wavded/vim-stylus'
Plugin 'valloric/MatchTagAlways'

call vundle#end()            " required
filetype plugin indent on    " required

syntax on
set rnu
set number
set ruler
set title
set noswapfile
set clipboard=unnamed

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
"set guifont=Meslo\ for\ Powerline\ Nerd\ Font\ Complete
set guifont=Meslo\ LG\ M\ DZ\ Regular\ for\ Powerline\ Nerd\ Font\ Complete

let mapleader=" "
let NERDTreeMapOpenSplit='-'
let NERDTreeMapActivateNode='l'
let NERDTreeMapCloseDir='h'
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

let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

"ctrl+p
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|vendor\|tmp'

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
let g:syntastic_javascript_checkers = ['standard']
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>
"map <C-R> :!standard % --format<CR>:redraw<CR>

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
set ballooneval
autocmd FileType typescript setlocal balloonexpr=tsuquyomi#balloonexpr()
autocmd FileType typescript nmap <buffer> <Leader>t : <C-u>echo tsuquyomi#hint()<CR>

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
