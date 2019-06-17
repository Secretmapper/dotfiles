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
" Plug 'SirVer/ultisnips'
Plug 'mattn/emmet-vim'

Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
Plug 'neoclide/coc-snippets', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-tslint', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-css', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-lists', {'do': 'yarn install --frozen-lockfile'} " mru and stuff
Plug 'neoclide/coc-highlight', {'do': 'yarn install --frozen-lockfile'} " color highlighting
" Plug 'slashmili/alchemist.vim'
" Plug 'zchee/deoplete-clang'

Plug 'majutsushi/tagbar'
Plug 'scrooloose/syntastic'
Plug 'flowtype/vim-flow'

Plug 'nathanaelkane/vim-indent-guides'
Plug 'tpope/vim-bundler'
Plug 'tpope/vim-rails'
Plug 'lambdatoast/elm.vim'
Plug 'darthmall/vim-vue'
Plug 'digitaltoad/vim-jade'
" Plug 'pangloss/vim-javascript'
Plug 'elixir-lang/vim-elixir'
Plug 'sudar/vim-arduino-syntax'
Plug 'coddingtonbear/neomake-platformio'
Plug 'keith/swift.vim'
" Plug 'mxw/vim-jsx'
Plug 'jparise/vim-graphql'
Plug 'jdonaldson/vaxe'
Plug 'leafgarland/typescript-vim'
" Bundle 'clausreinke/typescript-tools.vim'
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

let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

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

"map <C-R> :!standard % --format<CR>:redraw<CR>

let g:flow#enable = 0

"" Ultisnips
"let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsListSnippets="<c-s-tab>"

"haxe
:set autowrite

"typescript
"autocmd FileType typescript setlocal completeopt+=menu,preview
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
" set ballooneval

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

"start coc"
" if hidden not set, TextEdit might fail.
set hidden

" Better display for messages
set cmdheight=2

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> for trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> for confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` for navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Setup formatexpr specified filetype(s).
augroup mygroup
  autocmd!
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
vmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)

" Use `:Format` for format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` for fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)


" Add diagnostic info for https://github.com/itchyny/lightline.vim
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status'
      \ },
      \ }



" Shortcuts for denite interface
" Show extension list
nnoremap <silent> <space>e  :<C-u>Denite coc-extension<cr>
" Show symbols of current buffer
nnoremap <silent> <space>o  :<C-u>Denite coc-symbols<cr>
" Search symbols of current workspace
nnoremap <silent> <space>t  :<C-u>Denite coc-workspace<cr>
" Show diagnostics of current workspace
nnoremap <silent> <space>a  :<C-u>Denite coc-diagnostic<cr>
" Show available commands
nnoremap <silent> <space>c  :<C-u>Denite coc-command<cr>
" Show available services
nnoremap <silent> <space>s  :<C-u>Denite coc-service<cr>
" Show links of current buffer
nnoremap <silent> <space>l  :<C-u>Denite coc-link<cr>
"end coc"
