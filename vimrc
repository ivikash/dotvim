" vim:fdm=marker
"
" Author : Vikash Agrawal <vikashagrawal1990@gmail.com>
" LICENSE : MIT
" Inpired from various sources.
" Paul Irish - https://github.com/paulirish/dotfiles
" Eduard Tsech - https://github.com/edtsech/dotvim
"

" ========== Settings ===========
"
" ----------- START Package Management -----------

" ----------- Vundle -----------
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" ----------- Vim -----------
" Bundle 'altercation/vim-colors-solarized'
Bundle 'bling/vim-airline'
Bundle 'ervandew/supertab'
Bundle 'jiangmiao/auto-pairs'
Bundle 'kien/ctrlp.vim'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'kien/tabman.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'markabe/bufexplorer'
Bundle 'MattesGroeger/vim-bookmarks'
Bundle 'mhinz/vim-startify'
Bundle 'mhinz/vim-grepper'
" Bundle 'scrooloose/syntastic'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tpope/vim-endwise'
Bundle 'wycats/nerdtree'

" ----------- Airline -----------
let g:airline_left_sep = ''
let g:airline_right_sep = ''

let g:numbers_exclude = ['tagbar', 'gundo', 'minibufexpl', 'nerdtree']
let g:EasyMotion_leader_key = '<leader>'

" ----------- NERDTree -----------
imap <Leader>d :NERDTreeToggle<CR>
nmap <Leader>d :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.rbc$', '\~$']
let g:NERDTreeDirArrows=0

" ----------- Bookmark -----------
highlight BookmarkSign ctermbg=NONE ctermfg=160
highlight BookmarkLine ctermbg=194 ctermfg=NONE
let g:bookmark_sign = '♥'
let g:bookmark_highlight_lines = 1


"
" ----------- Language Specific Settings set -----------
"

" ----------- Haskell -----------
Bundle 'lukerandall/haskellmode-vim'

" ----------- Javascript -----------
Bundle 'pangloss/vim-javascript'
let g:javascript_plugin_flow = 1
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1

let g:javascript_conceal_arrow_function = "⇒"
let g:javascript_conceal_function       = "ƒ"
let g:javascript_conceal_NaN            = "ℕ"
let g:javascript_conceal_null           = "ø"
let g:javascript_conceal_prototype      = "¶"
let g:javascript_conceal_return         = "⇚"
let g:javascript_conceal_static         = "•"
let g:javascript_conceal_super          = "Ω"
let g:javascript_conceal_this           = "@"
let g:javascript_conceal_undefined      = "¿"

" ----------- LaTeX ------------
Bundle 'lervag/vimtex'

" ----------- Python -----------
Bundle 'klen/python-mode'

" ----------- Rails ------------
Bundle 'tpope/vim-rails'

" ------------ Ruby ------------
Bundle 'vim-ruby/vim-ruby'


au BufRead,BufNewFile {*.json} set ft=javascript

" ----------------------
filetype on

"
" ----------- END Package Management -----------
"

" ----------- Themes -----------
set t_Co=256
set background=dark
syntax on
colorscheme Tomorrow-Night-Eighties


" ----------- Make Vim feel like home -----------
set nocompatible

" ----------- Map Leader -----------
let mapleader=","

" ----------- Local Directories -----------
" set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set undodir=~/.vim/undo

" ----------- Swap -----------
set noswapfile

" ----------- Basic -----------
set autoindent " Copy indent from last line when starting new line
set backspace=indent,eol,start
set diffopt=filler " Add vertical spaces to keep right and left aligned
set diffopt+=iwhite " Ignore whitespace changes (focus on code changes)
set encoding=utf-8 nobomb " BOM often causes trouble
set esckeys " Allow cursor keys in insert mode
set expandtab " Expand tabs to spaces
set foldcolumn=0 " Column to show folds
set foldenable " Enable folding
set foldlevel=0
set foldmethod=syntax " Syntax are used to specify folds
set foldminlines=0 " Allow folding single lines
set foldnestmax=5 " Set max fold nesting level
set formatoptions+=c " Format comments
set formatoptions+=r " Continue comments by default
set formatoptions+=o " Make comment when using o or O from comment line
set formatoptions+=q " Format comments with gq
set formatoptions+=n " Recognize numbered lists
set formatoptions+=2 " Use indent from 2nd line of a paragraph
set formatoptions+=l " Don't break lines that are already long
set formatoptions+=1 " Break before 1-letter words
set gdefault " By default add g flag to search/replace. Add g to toggle
set hidden " When a buffer is brought to foreground, remember undo history and marks
set history=1000 " Increase history from 20 default to 1000
set hlsearch " Highlight searches
set ignorecase " Ignore case of searches
set incsearch " Highlight dynamically as pattern is typed
set laststatus=2 " Always show status line
set lazyredraw " Don't redraw when we don't have to
set list!
set listchars=tab:>·,trail:~,extends:>,precedes:<
set lispwords+=defroutes " Compojure
set lispwords+=defpartial,defpage " Noir core
set lispwords+=defaction,deffilter,defview,defsection " Ciste core
set lispwords+=describe,it " Speclj TDD/BDD
set magic " Enable extended regexes
set mouse=a " Enable mouse in all in all modes
set noerrorbells " Disable error bells
set nojoinspaces " Only insert single space after a '.', '?' and '!' with a join command
set noshowmode " Don't show the current mode (airline.vim takes care of us)
set nostartofline " Don't reset cursor to start of line when moving around
set nowrap " Do not wrap lines
set nu " Enable line numbers
set relativenumber
set report=0 " Show all changes
set ruler " Show the cursor position
set scrolloff=3 " Start scrolling three lines before horizontal border of window
set shell=/bin/zsh " Use /bin/zsh for executing shell commands
set shiftwidth=2 " The # of spaces for indenting
set shortmess=atI " Don't show the intro message when starting vim
set showtabline=2 " Always show tab bar
set sidescrolloff=3 " Start scrolling three columns before vertical border of window
set smartcase " Ignore 'ignorecase' if search patter contains uppercase characters
set smarttab " At start of line, <Tab> inserts shiftwidth spaces, <Bs> deletes shiftwidth spaces
set softtabstop=2 " Tab key results in 2 spaces
set splitbelow " New window goes below
set splitright " New windows goes right
set suffixes=.bak,~,.swp,.swo,.o,.d,.info,.aux,.log,.dvi,.pdf,.bin,.bbl,.blg,.brf,.cb,.dmg,.exe,.ind,.idx,.ilg,.inx,.out,.toc,.pyc,.pyd,.dll
set switchbuf=""
set title " Show the filename in the window titlebar
set ttyfast " Send more characters at a given time
" set ttymouse=xterm " Set mouse type to xterm
set undofile " Persistent Undo
set viminfo=%,'9999,s512,n~/.vim/viminfo " Restore buffer list, marks are remembered for 9999 files, registers up to 512Kb are remembered
set visualbell " Use visual bell instead of audible bell (annnnnoying)
set wildchar=<TAB> " Character for CLI expansion (TAB-completion)
set wildignore+=.DS_Store
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj,*.min.js
set wildignore+=*/bower_components/*,*/node_modules/*
set wildignore+=*/smarty/*,*/vendor/*,*/.git/*,*/.hg/*,*/.svn/*,*/.sass-cache/*,*/log/*,*/tmp/*,*/build/*,*/ckeditor/*,*/doc/*,*/source_maps/*,*/dist/*
set wildmenu " Hitting TAB in command mode will show possible completions above command line
set wildmode=list:longest " Complete only until point of ambiguity
set winminheight=0 " Allow splits to be reduced to a single line
set wrapscan " Searches wrap around end of file

" ----------- Key Bindings -----------
" ESC
imap <Leader>q <Esc>

" Create splits
nmap <Leader>v :vsplit <cr>
nmap <Leader>s :split <cr>

" Clear highlight
nnoremap <Leader>c :nohls<CR><C-L>

" Navigate between splits
map <Leader>h <C-w>h
map <Leader>n <C-w>j
map <Leader>e <C-w>k
map <Leader>i <C-w>l

" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" --------------------

function TrimEndLines()
    let save_cursor = getpos(".")
    :silent! %s#\($\n\s*\)\+\%$##
    call setpos('.', save_cursor)
endfunction

function RemoveTrailingSpaces()
    :%s/\s\+$//e
endfunction

au BufWritePre * call TrimEndLines()
au BufWritePre * call RemoveTrailingSpaces()


map <leader>ts :%s/\s\+$//e<CR>

" Retain cursor position
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Ignore files from CtrlP
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'

" Rainbow Parenthesis
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
