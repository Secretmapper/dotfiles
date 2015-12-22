set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'
Plugin 'daylerees/colour-schemes', { 'rtp':'vim/' }

Plugin 'scrooloose/nerdtree'
Plugin 'Shougo/vimshell.vim'
Plugin 'bling/vim-airline'
Plugin 'christoomey/vim-tmux-navigator'

Plugin 'tpope/vim-fugitive'

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

Plugin 'lambdatoast/elm.vim'
Plugin 'darthmall/vim-vue'
Plugin 'slim-template/vim-slim.git'
Plugin 'digitaltoad/vim-jade'
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

let mapleader=" "
let NERDTreeMapOpenSplit='-'
let NERDTreeMapActivateNode='l'
let NERDTreeMapCloseDir='h'

nmap <leader>ft :NERDTreeToggle <CR>
nmap <leader>tag :TagbarToggle <CR>
nmap <leader>r :QuickRun <CR>

nmap <C-i> :call vaxe#ImportClass()<CR>

"powerline
let g:airline_powerline_fonts=1
set laststatus=2
set guifont=Meslo\ for\ Powerline

let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

"syntastic: ctrl-w E for error check
let g:syntastic_cpp_checkers = ['cpplint']
let g:syntastic_cpp_cpplint_thres = 3 
let g:syntastic_cpp_cpplint_args = '--verbose=3'
let g:syntastic_php_checkers = ['php', 'phpcs']
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>

"" Ultisnips
"let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsListSnippets="<c-s-tab>"

let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]

"haxe
:set autowrite

"typescript
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
