"Settings {{{

" no backup
set nowritebackup

" No swap file
set noswapfile

" No show insert in statutsline
set noshowmode

" Command history
set history=100

" Always show cursor
set ruler

" Show incomplete commands
"set showcmd

" Incremental searching (search as you type)
set incsearch

" Highlight search matches
set hlsearch

" Ignore case in search
set smartcase

" Make sure any searches /searchPhrase doesn't need the \c escape character
set ignorecase

" A buffer is marked as ‘hidden’ if it has unsaved changes, and it is not currently loaded in a window
" if you try and quit Vim while there are hidden buffers, you will raise an error:
" E162: No write since last change for buffer “a.txt”
set hidden

" Turn word wrap on
set wrap breakindent linebreak

" Allow backspace to delete end of line, indent and start of line characters
set backspace=indent,eol,start

" Convert tabs to spaces
set expandtab

" Set tab size in spaces (this is for manual indenting)
set tabstop=2

" The number of spaces inserted for a tab (used for auto indenting)
set shiftwidth=2

" Turn on line numbers relatives
set number relativenumber

" Gutter column width
set numberwidth=3

" Get rid of the delay when pressing O (for example)
" http://stackoverflow.com/questions/2158516/vim-delay-before-o-opens-a-new-line
set timeout timeoutlen=1000 ttimeoutlen=100

" Always show status bar
set laststatus=2

" Set the status line to something useful
" set statusline=%f\ %=L:%l/%L\ %c\ (%p%%)

" Hide the toolbar
set guioptions-=T

" UTF encoding
set encoding=utf-8

" Autoload files that have changed outside of vim
set autoread

" Use system clipboard
" http://stackoverflow.com/questions/8134647/copy-and-paste-in-vim-via-keyboard-between-different-mac-terminals
set clipboard+=unnamed

" Don't show intro
set shortmess+=I

" Better splits (new windows appear below and to the right)
set splitbelow
set splitright

" Highlight the current line
set cursorline

" Ensure Vim doesn't beep at you every time you make a mistype
set visualbell

" Visual autocomplete for command menu (e.g. :e ~/path/to/file)
set wildmenu

" redraw only when we need to (i.e. don't redraw when executing a macro)
set lazyredraw

" highlight a matching [{()}] when cursor is placed on start/end character
set showmatch

" Set built-in file system explorer to use layout similar to the NER
"Tree plugin
let loaded_netrwPlugin = 1 " Disable netrw plugin
" let g:netrw_liststyle=3

" }}}

" Plugins {{{

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin() "{{{
Plugin 'VundleVim/Vundle.vim'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'w0rp/ale'
Plugin 'jszakmeister/vim-togglecursor'
Plugin 'honza/vim-snippets'
Plugin 'bkad/camelcasemotion'
Plugin 'frazrepo/vim-rainbow'
Plugin 'matze/vim-move'
Plugin 'axiaoxin/favorite-vim-colorscheme'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'neovimhaskell/haskell-vim'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'christoomey/vim-system-copy'
Plugin 'pangloss/vim-javascript'
Plugin 'jiangmiao/auto-pairs'
Plugin 'mattn/emmet-vim'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'isruslan/vim-es6'
Plugin 'mlaursen/vim-react-snippets'
Plugin 'SirVer/ultisnips'
Plugin 'ervandew/supertab'
Plugin 'Valloric/YouCompleteMe'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'machakann/vim-highlightedyank'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ap/vim-css-color'
Plugin 'prettier/vim-prettier'
Plugin 'elmcast/elm-vim'
Plugin 'yggdroot/indentline'
Plugin 'valloric/matchtagalways'
Plugin 'rrethy/vim-illuminate'
Plugin 'piiih/vim-ramda-import'
Plugin 'scrooloose/nerdtree'
Plugin 'matchit.zip'
"}}}
call vundle#end()
filetype plugin indent on
syntax on

let g:camelcasemotion_key = '<leader>' "{{{
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
map <silent> ge <Plug>CamelCaseMotion_ge
sunmap w
sunmap b
sunmap e
sunmap ge
"}}}
" move lines key
let g:move_key_modifier = 'C'
vmap <C-m> <Plug>MoveBlockUp
nmap <C-m> <Plug>MoveLineUp

" Ale config
let g:ale_linters = {
      \  'c': ['gcc'],
      \ 'cpp': ['gcc'],
      \ 'javascript': ['standard']
      \}
let g:ale_cpp_gcc_options="-Wall -std=c++2a"
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0
let g:ale_javascript_eslint_suppress_missing_config = 1
let g:ale_lint_on_save = 1
"let g:ale_fix_on_save = 1
"let b:ale_fixers = ['prettier', 'eslint', 'standard']
"let g:ale_fixers = {
      "\   '*': ['remove_trailing_lines', 'trim_whitespace'],
      "\   'javascript': ['eslint', 'prettier', 'standard'],
      "\}


" vim-javascript {{{
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
"}}}

" match tag always {{{
let g:mta_use_matchparen_group = 0
let g:mta_filetypes = {
      \ 'html' : 1,
      \ 'javascript' : 1,
      \}
"}}}

" make YCM compatible with UltiSnips (using supertab) {{{
let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:ycm_disable_signature_help = 1
let g:ycm_show_diagnostics_ui = 0
" let g:ycm_enable_diagnostic_signs = 0
" let g:ycm_enable_diagnostic_highlighting = 0
"}}}

" better key bindings for UltiSnipsExpandTrigger {{{
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
"}}}

" auto-close the preview window after the completion {{{
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_complete_in_comments = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_filetype_blacklist = {
      \ 'tagbar': 1,
      \ 'notes': 1,
      \ 'markdown': 1,
      \ 'netrw': 1,
      \ 'unite': 1,
      \ 'vimwiki': 1,
      \ 'pandoc': 1,
      \ 'infolog': 1,
      \ 'leaderf': 1,
      \ 'mail': 1
      \}
"}}}

" Theme {{{
set background=dark
colorscheme 256_noir
set t_Co=256   "  enable 256 colors in vim
"}}}

" CtrlP {{{
map <leader>t <C-p>
map <leader>y :CtrlPBuffer<cr>
let g:ctrlp_show_hidden=1
let g:ctrlp_working_path_mode=0
let g:ctrlp_max_height=30
" CtrlP -> override <C-o> to provide options for how to open files
let g:ctrlp_arg_map = 1
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'
" CtrlP -> files matched are ignored when expanding wildcards
"set wildignore+=*/.git/*,*/.hg/*,*/.svn/*.,*/.DS_Store

" CtrlP -> use Ag for searching instead of VimScript
" (might not work with ctrlp_show_hidden and ctrlp_custom_ignore)
"let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

" CtrlP -> directories to ignore when fuzzy finding

"}}}

" Ack (uses Ag behind the scenes)
let g:ackprg = 'ag --nogroup --nocolor --column'

" Airline (status line) {{{
let g:airline_theme= 'serene'
let g:airline_section_y = ''
"let g:airline_powerline_fonts = 1
let g:airline_section_y = ''
let g:airline#extensions#tabline#enabled = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline_section_z = '%3p%% %3l/%L:%3v'
"let g:airline_section_x = ''
let g:airline_skip_empty_sections = 1
"}}}

" haskell-vim {{{
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords
"}}}

" indentLine {{{
let g:indentLine_enabled = 0
" let g:indentLine_leadingSpaceEnabled = 1
" let g:indentLine_leadingSpaceChar = '·'
"}}}

" git gutter {{{
let g:gitgutter_enabled = 1
let g:gitgutter_eager = 0
let g:gitgutter_sign_column_always = 1
highlight clear SignColumn
"}}}

" NERDTree {{{
map <silent> <C-n> :NERDTreeToggle<CR>
let NERDTreeMinimalUI = 1
let NERDTreeShowLineNumbers=1
let NERDTreeQuitOnOpen=1
let NERDTreeHighlightCursorline=0
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.DS_Store$', '\.git$'] " ignore files in nerd tree"
"}}}

"}}}

" Mappings {{{

" ale jump next/prev errors
nmap <silent> <leader>aj :ALENext<cr>
nmap <silent> <leader>ak :ALEPrevious<cr>


" import function ramda
nnoremap <C-i> :call ImportFunction()<CR>

" Clear search buffer
nnoremap  <cr> :noh<CR>:<backspace>

" Clear command-line
nnoremap  <leader>l :<C-c>

" standardjs fix file
nnoremap  <leader>f :%w !npx standard --fix<CR>

" Buffers (runs the delete buffer command on all open buffers)
map <leader>bd :bufdo bd<cr>

" Run node
map <F2> :%w !node<CR>

" Run ruby
map <F3> :!ruby %<CR>


" }}}

" Macros {{{

let @a = "_i, \<Esc>\O"
let @q = "$F(a, \<Esc>\hi"

"}}}

" Commands {{{

" Disable automatic comment insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"css syntax {{{
augroup VimCSS3Syntax
  autocmd!

  autocmd FileType css setlocal iskeyword+=-
augroup END
"}}}

" specify syntax highlighting for specific files {{{
autocmd Bufread,BufNewFile *.elm set filetype=elm
autocmd Bufread,BufNewFile *.spv set filetype=php
autocmd Bufread,BufNewFile *.md set filetype=markdown " Vim interprets .md as 'modula2' otherwise, see :set filetype?
"}}}

" vim-elm {{{
let g:elm_jump_to_error = 0
let g:elm_make_output_file = "elm.js"
let g:elm_make_show_warnings = 0
let g:elm_syntastic_show_warnings = 0
let g:elm_browser_command = ""
let g:elm_detailed_complete = 0
let g:elm_format_autosave = 1
let g:elm_format_fail_silently = 0
let g:elm_setup_keybindings = 1
"}}}

" vim-rainbow {{{
let g:rainbow_active = 1
let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']
"}}}

" Folding {{{
augroup vimrc
  au BufReadPre * setlocal foldmethod=indent
  au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual |  endif
  au BufReadPre *.vimrc setlocal foldmethod=marker
  au BufReadPre jest.config.js setlocal foldmethod=expr foldexpr=getline(v:lnum)=~'^\\s*//'
augroup END
"}}}

" illuminatedWord
hi illuminatedWord cterm=underline gui=underline

" Highlight GitGutter {{{
highlight GitGutterAdd    guifg=#009900 guibg=black ctermfg=2 ctermbg=black
highlight GitGutterChange guifg=#bbbb00 guibg=black ctermfg=3 ctermbg=black
highlight GitGutterDelete guifg=#ff2222 guibg=black ctermfg=1 ctermbg=black
"}}}

" match paren highlight
hi MatchParen cterm=bold ctermbg=none ctermfg=magenta

" search matchs highlight
hi Search cterm=NONE ctermfg=white ctermbg=blue

"}}}
