""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Vim Configuration
"
" By Ryan Orendorff
" 2013/05/01 23:54 UTC-7
"
" Uses Vundle to handle plugins.
"
" Parts are based on: http://amix.dk/vim/vimrc.html
"
" Notes:
" - <leader> is the default, '\'
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible             " Use all of vim's power


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           File Related Settings                            "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

filetype plugin on           " Required for Vundle
filetype indent on           " Automatically indent based on language syntax.

set history=300              " Number of history lines to remember.

set wildignore=*.o,*~,*.pyc  " Ignore compiled files

set autowrite                " Writes on make/shell commands
set autoread                 " Reload file when it is changed outside vim.
autocmd! bufwritepost vimrc source ~/.vimrc " When vimrc is edited, reload it

set hidden                   " Allow buffer change without saving.

" Store temporary files in central location instead of file's location.
if exists('+dir') && exists('+backupdir')
  set dir=~/.vim/tmp         " Temporary Files
  set backupdir=~/.vim/tmp   " Where to store file change log.
endif

" Move the viminfo file into the temp directory.
set viminfo+=n~/.vim/tmp/viminfo

" Persistent undo (Undo changes in a file even after it has been closed).
" Requires 7.3
if exists('+undodir') && exists('+undofile')
  set undodir=~/.vim/undo    " Set location for the undo stuff
  set undofile               " Turn it on!
endif

" This gives the end-of-line (<EOL>) formats that will be tried.
set fileformats=unix,dos,mac " Unix style defaults

" Sets the character encoding used inside Vim.
set encoding=utf-8           " Avoids unnecessary conversion overhead.

" Delete trailing white space on save.
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite * :call DeleteTrailingWS()

" Open a file under the cursor on a Mac
if has('mac')
  nnoremap gO :!open <cfile> <cr>
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                Set FileType                                "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" git
au BufRead,BufNewFile {COMMIT_EDITMSG}        set ft=gitcommit
" Markdown
au BufRead,BufNewFile {*.md,*.mkd,*.markdown} set ft=markdown
" Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Capfile,*.rake,config.ru} set ft=ruby
" Scons
au BufRead,BufNewFile {SConstruct,SConscript} set ft=python


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 Formatters                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use par for formatting text instead of built in options.
if executable("par")
  set formatprg=par\ -w78
endif

" Autoformatting of certain programming languages.
augroup CodeFormatters
  autocmd!

augroup end


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            Programming Settings                            "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set up omni completion, use with tabs.
set omnifunc=syntaxcomplete#Complete
set completeopt=menu,menuone


"""""""""""""
"  Go lang  "
"""""""""""""

if executable('Godoc')
  au FileType go map <buffer> K :Godoc<cr>
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                  Buffers and their interaction with files                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Close the current buffer
map <leader>bd :Bclose<cr>

" Close all the buffers
map <leader>ba :1,1000 bd!<cr>

" CWD to the directory of open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Quickly open a buffer for scripbble
map <leader>q :e ~/buffer<cr>

" Remove the Windows ^M
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

" Return to last edit position when opening files.
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                              Colour! And GUI                               "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set mouse=a     " Mouse support (scrollwheel as well)

set scrolloff=2     " Number of lines to keep above and below the cursor.
set sidescrolloff=5 " Number of cols to keep left/right of cursor when nowrap.

" Colour
syntax on       " Turn on the color!

if $TERM == "xterm-256color"
  colorscheme ir_black
endif

" Status
let g:Powerline_symbols = 'fancy'
if has('python')
  try
    set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

    " Fix terminal timeout when pressing escape
    if ! has('gui_running')
        set ttimeoutlen=10
        augroup FastEscape
            autocmd!
            au InsertEnter * set timeoutlen=0
            au InsertLeave * set timeoutlen=1000
        augroup END
    endif
  catch " Don't use powerline
    set statusline=%F%m%r%h%w\ FORMAT=%{&ff}\ TYPE=%Y\ POS=%04l,%04v\ \ %p%%\ LEN=%L
  endtry
end

set noshowmode   " Stop '-- INSERT --' from appearing in command line
set laststatus=2 " Always show the status line. Formating by Powerline.

" GUI options. If the GUI is not running these options will not be used.
if has('gui_running')
  silent! set guifont=PragmataPro:h11
  set guioptions-=T    " Disable toolbar
  set guioptions-=r    " Remove right hand scrollbar
  set guioptions-=R    " Remove right hand scrollbar during vertical splits
  set guioptions-=l    " Remove left hand scrollbar
  set guioptions-=L    " Remove left hand scrollbar during vertical splits
endif

" Bells off (these are the defaults)
set noerrorbells " Don't ring the bell for error messages.
set novisualbell " Don't use visual bell instead of beeping.
set t_vb=        " When the GUI starts, 't_vb' is reset to its default value.
                 " You might want to set it again in your |gvimrc|.

" Menu appears then pressing <tab> when completing in command mode (':')
set wildmenu                   " Set
set wildmode=list:longest,full " First list all options, then go through them.


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                       Searching, Matching, and Regex                       "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Searching
set ignorecase  " Ignore the case when searching
set smartcase   " except if at least one capital in the search string.

set hlsearch    " Highlight search items

set incsearch   " Start searching as soon as typing begins.

" Matching
set showmatch   " Show the matching brace when indicator is over them ...
set matchtime=2 " Number of tenths of a sec to show this match.

" Regex patterns
set magic " Changes the special characters that can be used in search patterns.

" Disable highlight from search related activities.
map <silent> <leader><cr> :noh<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                         Moving and Shakin (around)                         "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Influences the working of <BS>, <Del>, CTRL-W and CTRL-U in Insert mode
" Don't allow backspacing at all, preserve undo/jump lists.
set backspace=

" Wraps
set wrap         " Lines longer than the width of the window will wrap
set linebreak    " Wrap long lines at convenient breaks.

" Tabbing
set expandtab    " Use the appropriate number of spaces to insert a <Tab>
set tabstop=2    " Number of spaces that a <Tab> in the file counts for.
set shiftwidth=2 " Number of spaces to use for each step of (auto)indent
set shiftround   " > and < are limited to multiples of shiftwidth
set smarttab     " A <Tab> in front of line inserts 'shiftwidth' blanks.

" Indents
set autoindent	 " Copy indent from current line when starting a new line
set smartindent  " Do smart autoindenting when starting a new line.

" Changes the effect of the :mksession command. It is a comma separated list
" of words. Each word enables saving and restoring something
set sessionoptions+=resize,winpos

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Disable arrow keys
noremap  <up>    <nop>
noremap  <down>  <nop>
noremap  <left>  :bprevious<cr>
noremap  <right> :bnext<cr>
inoremap <up>    <nop>
inoremap <down>  <nop>
inoremap <left>  <nop>
inoremap <right> <nop>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                            Visual Mode Settings                            "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" pressing * or # searches for the current selection (Michael Naumann)
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  Spelling                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Attempt to set the spelling language
try
  lang en_US.utf8
catch
endtry

map <leader>ss :setlocal spell!<cr>

" Correct the first mispelled word behind the cursor to the first entry in the
" spell checker.
map <leader>sc [s1z==


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                             Support Functions                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Grab visual selection. Used for searching with */# in visual mode.
function! VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

" Don't close window when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete! ".l:currentBufNum)
   endif
endfunction

" Compile the code using either make or scons, depending on which is inside
" the current directory
map <F7> :call Compile()<CR>

function! Compile()
  let origcurdir = getcwd()
  let curdir     = origcurdir

  while curdir != "/"
  if filereadable("Makefile")
    break
  elseif filereadable("SConstruct")
    break
  endif
  cd ..
  let curdir= getcwd()
  endwhile

  if filereadable('Makefile')
    set makeprg=make -j3 -k
  elseif filereadable('SConstruct')
    set makeprg=scons
  else
    set makeprg=make
  endif
  echo "building ... wait please!"
  silent w
  silent make
  redraw!
  cc!
endfunction


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                         Bundles and their options                          "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

filetype off " Required for vundle to work (esp. with UltiSnips)

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" Required: Vundle manages Vundle
Bundle 'gmarik/vundle'


" UltiSnips: snipMate replacement that uses Python.
if has('python')
  Bundle 'SirVer/ultisnips'
  let g:UltiSnipsUsePythonVersion=2
  let g:UltiSnipsListSnippets="<c-k>"
end


" Supertab: Perform all your vim insert mode completions with Tab.
Bundle 'ervandew/supertab'
let g:SuperTabDefaultCompletionType='<c-x><c-o>'


" Surround: quoting/parenthesizing made simple
Bundle 'tpope/vim-surround'


" Numbertoggle: Change abs/rel numbers automatically. http://goo.gl/0ZHg2
Bundle 'jeffkreeftmeijer/vim-numbertoggle'
set relativenumber " A recent change made this required on startup. 51ddd633


" Tabular: Vim script for text filtering and alignment
Bundle 'godlygeek/tabular'


" YankRing: Maintains a history of previous yanks, changes and deletes
Bundle 'YankRing.vim'
nnoremap <silent> <leader>y :YRShow<cr>
let g:yankring_history_dir = "~/.vim/tmp"


" Repeat: enable repeating supported plugin maps with "."
Bundle 'tpope/vim-repeat'


" Speeddating: use CTRL-A/CTRL-X to increment dates, times, and more
Bundle 'tpope/vim-speeddating'


" NERD Commenter: Vim plugin for intensely orgasmic commenting
Bundle 'scrooloose/nerdcommenter'


" NERD Tree: A tree explorer plugin for vim
Bundle 'scrooloose/nerdtree'


" Syntastic: Syntax checking hacks for vim
Bundle 'scrooloose/syntastic'


" Markdown: Markdown syntax
Bundle 'Markdown'


" Fugitive: Git commands in vim
Bundle 'tpope/vim-fugitive'


" Gundo: Visualise the vim undo tree
Bundle 'sjl/gundo.vim'
nnoremap <F5> :GundoToggle<CR>


" Powerline: Awesome status bar
if has('python')
  Bundle 'Lokaltog/powerline'
end


" Abolish: search for, substitute, and abbreviate multiple variants of a word
Bundle 'tpope/vim-abolish'


" Golang: Plugin for syntax, filetype, indentation, and Godoc for Go.
Bundle 'jnwhiteh/vim-golang'


" Vimgocode: Allows for omni completion of go code.
Bundle 'Blackrush/vim-gocode'


" Pydoc: Makes 'K' bring up the relevant python documentation.
Bundle 'fs111/pydoc.vim'


" Easymotion: Simplifies movement commands.
Bundle 'Lokaltog/vim-easymotion'


" Moin: MoinMoin syntax file.
Bundle 'rdodesigns/vim-moin'


filetype plugin indent on " Required for Vundle
