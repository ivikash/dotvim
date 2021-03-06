" vim:fdm=marker
" ----------- START VIM CONFIGURATION -----------
"
" Author : Vikash Agrawal <vikashagrawal1990@gmail.com>
" LICENSE : MIT
" Inpired from various sources.
" Paul Irish - https://github.com/paulirish/dotfiles
" Eduard Tsech - https://github.com/edtsech/dotvim
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
Bundle 'dracula/vim'
Bundle 'elixir-lang/vim-elixir'
Bundle 'ervandew/supertab'
Bundle 'garbas/vim-snipmate'
Bundle 'godlygeek/tabular'
Bundle 'honza/vim-snippets'
Bundle 'isruslan/vim-es6'
Bundle 'jiangmiao/auto-pairs'
Bundle 'junegunn/goyo.vim'
Bundle 'junegunn/limelight.vim'
Bundle 'junegunn/vim-easy-align'
Bundle 'kien/ctrlp.vim'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'kien/tabman.vim'
Bundle 'lokaltog/vim-easymotion'
Bundle 'marcweber/vim-addon-mw-utils'
Bundle 'markabe/bufexplorer'
Bundle 'mattesgroeger/vim-bookmarks'
Bundle 'mhinz/vim-grepper'
Bundle 'mhinz/vim-startify'
Bundle 'mxw/vim-jsx'
Bundle 'othree/javascript-libraries-syntax.vim'
" Bundle 'Quramy/tsuquyomi'
Bundle 'scrooloose/snipmate-snippets'
Bundle 'sirver/ultisnips'
Bundle 'tpope/vim-fugitive'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-sleuth'
Bundle 'valloric/youcompleteme'
Bundle 'vim-scripts/tlib'
Bundle 'vim-syntastic/syntastic'
Bundle 'w0rp/ale'
Bundle 'wakatime/vim-wakatime'
Bundle 'wycats/nerdtree'

" ----------- Map Leader -----------
let mapleader=","

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
let g:bookmark_highlight_lines = 0
let g:bookmark_no_default_key_mappings = 1
function! BookmarkMapKeys()
    nmap mm :BookmarkToggle<CR>
    nmap mi :BookmarkAnnotate<CR>
    nmap mn :BookmarkNext<CR>
    nmap mp :BookmarkPrev<CR>
    nmap ma :BookmarkShowAll<CR>
    nmap mc :BookmarkClear<CR>
    nmap mx :BookmarkClearAll<CR>
    nmap mkk :BookmarkMoveUp
    nmap mjj :BookmarkMoveDown
endfunction
function! BookmarkUnmapKeys()
    unmap mm
    unmap mi
    unmap mn
    unmap mp
    unmap ma
    unmap mc
    unmap mx
    unmap mkk
    unmap mjj
endfunction
autocmd BufEnter * :call BookmarkMapKeys()
autocmd BufEnter NERD_tree_* :call BookmarkUnmapKeys()

" ----------- Indent Line -----------
Bundle 'Yggdroot/indentLine'
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '¦'
let g:indentLine_concealcursor = 'niv' " (default 'inc')
let g:indentLine_conceallevel = 2  " (default 2)
let g:indentLine_fileTypeExclude = ['help', 'startify']

" ----------- Limeligt -----------
nmap <Leader>l <Plug>(Limelight)

" ----------- Snipmate -----------
imap <C-J> <esc>a<Plug>snipMateNextOrTrigger
smap <C-J> <Plug>snipMateNextOrTrigger

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" ----------- You Complete Me -----------
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:ycm_error_symbol = '..'
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
let g:ycm_server_use_vim_stdout = 1
let g:ycm_warning_symbol = '.'

" ----------- Language Specific Settings set -----------

" ------------ CSS ------------
Bundle 'groenewege/vim-less'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'skammer/vim-css-color'

" ----------- Coffeescript ------------
Bundle 'kchmck/vim-coffee-script'

" ----------- Go -----------
Bundle 'fatih/vim-go'

" ----------- Haskell -----------
Bundle 'lukerandall/haskellmode-vim'

" ----------- Javascript -----------
Bundle 'pangloss/vim-javascript'
autocmd BufReadPre *.js let b:javascript_lib_use_jquery = 1
autocmd BufReadPre *.js let b:javascript_lib_use_underscore = 1
autocmd BufReadPre *.js let b:javascript_lib_use_backbone = 1
autocmd BufReadPre *.js let b:javascript_lib_use_ramda = 1

" ----------- LaTeX ------------
Bundle 'lervag/vimtex'

" ------------ Markdown ------------
Bundle 'gabrielelana/vim-markdown'
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" ----------- Python -----------
" Bundle 'python-mode/python-mode'
" let g:pymode_rope=0


" ----------- Rails ------------
Bundle 'tpope/vim-rails'

" ------------ Ruby ------------
Bundle 'vim-ruby/vim-ruby'

" ------------ Typescript ------------
Bundle 'leafgarland/typescript-vim'
let g:typescript_indent_disable = 1
setlocal indentkeys+=0.
autocmd BufReadPre *.ts let b:javascript_lib_use_jquery = 1
autocmd BufReadPre *.ts let b:javascript_lib_use_underscore = 1
autocmd BufReadPre *.ts let b:javascript_lib_use_backbone = 1
autocmd BufReadPre *.ts let b:javascript_lib_use_ramda = 1


" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

au BufRead,BufNewFile {*.json} set ft=javascript

let &runtimepath.=',~/.vim/bundle/ale'
" ----------------------
filetype on

" ----------- END Package Management -----------


" ----------- Themes -----------
set t_Co=256
" set background=dark
syntax on
" colorscheme Tomorrow-Night-Eighties
" colorscheme dracula
colorscheme molokai

" ----------- Make Vim feel like home -----------
set nocompatible

" ----------- Local Directories -----------
" set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set undodir=~/.vim/undo

" ----------- Swap -----------
set noswapfile

" ----------- Basic -----------
set autoindent                                        " Copy indent from last line when starting new line
set cursorline
set backspace=indent,eol,start
set diffopt=filler                                    " Add vertical spaces to keep right and left aligned
set diffopt+=iwhite                                   " Ignore whitespace changes (focus on code changes)
set encoding=utf-8 nobomb                             " BOM often causes trouble
set esckeys                                           " Allow cursor keys in insert mode
set expandtab                                         " Expand tabs to spaces
set foldcolumn=0                                      " Column to show folds
set foldenable                                        " Enable folding
set foldlevel=2
set foldmethod=syntax                                 " Syntax are used to specify folds
set foldminlines=0                                    " Allow folding single lines
set foldnestmax=5                                     " Set max fold nesting level
set formatoptions+=c                                  " Format comments
set formatoptions+=r                                  " Continue comments by default
set formatoptions+=o                                  " Make comment when using o or O from comment line
set formatoptions+=q                                  " Format comments with gq
set formatoptions+=n                                  " Recognize numbered lists
set formatoptions+=2                                  " Use indent from 2nd line of a paragraph
set formatoptions+=l                                  " Don't break lines that are already long
set formatoptions+=1                                  " Break before 1-letter words
set gdefault                                          " By default add g flag to search/replace. Add g to toggle
set hidden                                            " When a buffer is brought to foreground, remember undo history and marks
set history=1000                                      " Increase history from 20 default to 1000
set hlsearch                                          " Highlight searches
set ignorecase                                        " Ignore case of searches
set incsearch                                         " Highlight dynamically as pattern is typed
set laststatus=2                                      " Always show status line
set lazyredraw                                        " Don't redraw when we don't have to
set list!
" set listchars=tab:>·,trail:~,extends:>,precedes:<
set listchars=tab:\ \ ,trail:·,extends:#,nbsp:.
set lispwords+=defroutes                              " Compojure
set lispwords+=defpartial,defpage                     " Noir core
set lispwords+=defaction,deffilter,defview,defsection " Ciste core
set lispwords+=describe,it                            " Speclj TDD/BDD
set magic                                             " Enable extended regexes
set mouse=a                                           " Enable mouse in all in all modes
set noerrorbells                                      " Disable error bells
set nojoinspaces                                      " Only insert single space after a '.', '?' and '!' with a join command
set noshowmode                                        " Don't show the current mode (airline.vim takes care of us)
set nostartofline                                     " Don't reset cursor to start of line when moving around
set nowrap                                            " Do not wrap lines
set nu                                                " Enable line numbers
" set relativenumber
set report=0                                          " Show all changes
set ruler                                             " Show the cursor position
set scrolloff=3                                       " Start scrolling three lines before horizontal border of window
set shell=/bin/sh                                     " Use /bin/sh for executing shell commands
set shiftwidth=2                                      " The # of spaces for indenting
set shortmess=atI                                     " Don't show the intro message when starting vim
set showtabline=2                                     " Always show tab bar
set sidescrolloff=3                                   " Start scrolling three columns before vertical border of window
set smartcase                                         " Ignore 'ignorecase' if search patter contains uppercase characters
set smarttab                                          " At start of line, <Tab> inserts shiftwidth spaces, <Bs> deletes shiftwidth spaces
set softtabstop=2                                     " Tab key results in 4 spaces
set splitbelow                                        " New window goes below
set splitright                                        " New windows goes right
set suffixes=.bak,~,.swp,.swo,.o,.d,.info,.aux,.log,.dvi,.pdf,.bin,.bbl,.blg,.brf,.cb,.dmg,.exe,.ind,.idx,.ilg,.inx,.out,.toc,.pyc,.pyd,.dll
set switchbuf=""
set tabstop=2
set title                                             " Show the filename in the window titlebar
set ttyfast                                           " Send more characters at a given time
" set ttymouse=xterm " Set mouse type to xterm
set undofile                                          " Persistent Undo
set visualbell                                        " Use visual bell instead of audible bell (annnnnoying)
set wildchar=<TAB>                                    " Character for CLI expansion (TAB-completion)
set wildignore+=.DS_Store
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj,*.min.js
set wildignore+=*/bower_components/*,*/node_modules/*
set wildignore+=*/smarty/*,*/vendor/*,*/.git/*,*/.hg/*,*/.svn/*,*/.sass-cache/*,*/log/*,*/tmp/*,*/build/*,*/ckeditor/*,*/doc/*,*/source_maps/*,*/dist/*
set wildmenu                                          " Hitting TAB in command mode will show possible completions above command line
set wildmode=list:longest                             " Complete only until point of ambiguity
set winminheight=0                                    " Allow splits to be reduced to a single line
set wrapscan                                          " Searches wrap around end of file


" ----------- Key Bindings -----------

" Copy OSX specific
vmap <C-c> :%w !pbcopy<cr><cr>
vmap <D-c> :%w !pbcopy<cr><cr>

" Copy to clipboard
set clipboard=unnamedplus


" Create splits
nmap <Leader>v :vnew<cr>
nmap <Leader>s :new<cr>

" Clear highlight
nnoremap <Leader>c :nohls<CR><C-L>

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

au BufWritePre * call RemoveTrailingSpaces()
au BufWritePre * call TrimEndLines()

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

" Eliminating Delay on pressing ESC key
set timeoutlen=1000 ttimeoutlen=0

" Highlight Search
highlight Search cterm=bold,italic,underline ctermfg=brown ctermbg=white
highlight CursorLine cterm=bold
" autocmd InsertEnter * highlight CursorLine cterm=NONE
" autocmd InsertLeave * highlight CursorLine cterm=bold

filetype plugin indent on

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

let g:syntastic_typescript_checkers = ['tslint']
let g:ale_emit_conflict_warnings = 0

:command -nargs=+ Ggr execute 'silent Ggrep!' <q-args> | cw | redraw!
" ----------- END VIM CONFIGURATION -----------
