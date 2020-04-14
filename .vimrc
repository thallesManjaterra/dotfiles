" Settings {{{
" Switch syntax highlighting on, when the terminal has colors
syntax on

" Use vim, not vi api
set nocompatible

" let base16colorspace=256  " Access colors present in 256 colorspace
set termguicolors

" No backup files
set nobackup

" No write backup
set nowritebackup

" No swap file
set noswapfile

" No show insert statutsline
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

" Disable auto comment
autocmd BufNewFile,BufRead * setlocal formatoptions-=cro

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
set tabstop=4

" The number of spaces inserted for a tab (used for auto indenting)
set shiftwidth=4

" Turn on line numbers relatives
set number relativenumber

" Gutter column width
set numberwidth=3

" Highlight tailing whitespace
" See issue: https://github.com/Integralist/ProVim/issues/4
" set list listchars=tab:\ \ ,trail:·

" Get rid of the delay when pressing O (for example)
" http://stackoverflow.com/questions/2158516/vim-delay-before-o-opens-a-new-line
set timeout timeoutlen=1000 ttimeoutlen=100

" Always show status bar
set laststatus=2

" Set the status line to something useful
set statusline=%f\ %=L:%l/%L\ %c\ (%p%%)

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

" Set built-in file system explorer to use layout similar to the NERDTree plugin
let loaded_netrwPlugin = 1
" let g:netrw_liststyle=3

" }}}

" Plugins {{{

filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin() "{{{
Plugin 'VundleVim/Vundle.vim'
Plugin 'matze/vim-move'
Plugin 'axiaoxin/favorite-vim-colorscheme'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'neovimhaskell/haskell-vim'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'christoomey/vim-system-copy'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-fugitive'
Plugin 'jszakmeister/vim-togglecursor'
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
Plugin 'yggdroot/indentline'
Plugin 'valloric/matchtagalways'
Plugin 'rrethy/vim-illuminate'
Plugin 'piiih/vim-ramda-import'
Plugin 'elmcast/elm-vim'
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'scrooloose/nerdtree'
Plugin 'ryanoasis/vim-devicons'
" Plugin 'betoharres/vim-react-ultisnips'
" Plugin 'kien/rainbow_parentheses.vim'
call vundle#end() "}}}
filetype plugin indent on    " required


" move lines key
let g:move_key_modifier = 'C'

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
"let g:ctrlp_show_hidden=1
let g:ctrlp_working_path_mode=0
let g:ctrlp_max_height=30
" CtrlP -> override <C-o> to provide options for how to open files
let g:ctrlp_arg_map = 1
" CtrlP -> files matched are ignored when expanding wildcards
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*.,*/.DS_Store

" CtrlP -> use Ag for searching instead of VimScript
" (might not work with ctrlp_show_hidden and ctrlp_custom_ignore)
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

" CtrlP -> directories to ignore when fuzzy finding
let g:ctrlp_custom_ignore = '\v[\/]((node_modules)|\.(git|svn|grunt|sass-cache))$'

let g:ctrlp_custom_ignore = {
      \'dir' : '\.git$\|build$\|bower_components\|node_modules\|dist\|target' ,
      \'file' : '\v\.(exe|dll|lib)$'
      \}
"}}}


" Ack (uses Ag behind the scenes)
let g:ackprg = 'ag --nogroup --nocolor --column'

" Airline (status line) {{{
let g:airline_theme= 'serene'
let g:airline_section_y = ''
let g:webdevicons_enable_airline_statusline_fileformat_symbols = 0
let g:airline_powerline_fonts = 1
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline_section_z = '%3p%% %3l/%L:%3v'
let g:airline_section_x = ''
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

" gist authorisation settings {{{
let g:github_user = $github_user
let g:github_token = $github_token
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1
" related plugins:
" https://github.com/mattn/webapi-vim
" https://github.com/vim-scripts/gist.vim
" https://github.com/tpope/vim-fugitive
"
" html generation using 'emmet-vim'
let g:user_emmet_leader_key=','
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
" let g:NERDTreeWinPos = "right"
" let NERDTreeDirArrows = 1
let NERDTreeShowLineNumbers=1
" let g:WebDevIconsUnicodeDecorateFolderNodes = v:false
let NERDTreeQuitOnOpen=1
"}}}

"css syntax {{{
augroup VimCSS3Syntax
  autocmd!

  autocmd FileType css setlocal iskeyword+=-
augroup END
"}}}

"}}}

" Mappings {{{

" Notes... {{{
"
" :map     j gg (j will be mapped to gg)
" :map     Q j  (Q will also be mapped to gg, because j will be expanded -> recursive mapping)
" :noremap W j  (W will be mapped to j not to gg, because j will not be expanded -> non recursive)
"
" These mappings work in all modes. To have mappings work in only specific
" modes then denote the mapping with the mode character.
"
" e.g.
" to map something in just NORMAL mode use :nmap or :nnoremap
" to map something in just VISUAL mode use :vmap or :vnoremap
"}}}


" import function ramda
nnoremap <C-i> :call ImportFunction()<CR>

" Clear search buffer
nnoremap  <cr> :noh<CR>:<backspace>

" Clear command-line
nnoremap  <leader>l :<C-c>

" Command to use sudo when needed
cmap w!! %!sudo tee > /dev/null %

" Buffers (runs the delete buffer command on all open buffers)
map <leader>bd :bufdo bd<cr>

" Make handling vertical/linear Vim windows easier {{{
map <leader>w- <C-W>- " decrement height
map <leader>w+ <C-W>+ " increment height
map <leader>w] <C-W>_ " maximize height
map <leader>w[ <C-W>= " equalize all windows
"}}}


" Make splitting Vim windows easier
map <leader>; <C-W>s
map <leader>` <C-W>v

" map run node
map <F2> :%w !node<CR>

" }}}

" Commands {{{

" Disable automatic comment insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" file formats {{{
autocmd Filetype gitcommit setlocal spell textwidth=72
autocmd Filetype markdown setlocal wrap linebreak nolist textwidth=0 wrapmargin=0 " http://vim.wikia.com/wiki/Word_wrap_without_line_breaks
autocmd FileType sh,cucumber,ruby,yaml,zsh,vim setlocal shiftwidth=2 tabstop=2 expandtab
"}}}

" specify syntax highlighting for specific files {{{
autocmd Bufread,BufNewFile *.elm set filetype=elm
autocmd Bufread,BufNewFile *.spv set filetype=php
autocmd Bufread,BufNewFile *.md set filetype=markdown " Vim interprets .md as 'modula2' otherwise, see :set filetype?
"}}}

" Create a 'scratch buffer' which is a temporary buffer Vim wont ask to save
" http://vim.wikia.com/wiki/Display_output_of_shell_commands_in_new_window {{{
command! -complete=shellcmd -nargs=+ Shell call s:RunShellCommand(<q-args>)
function! s:RunShellCommand(cmdline)
  echo a:cmdline
  let expanded_cmdline = a:cmdline
  for part in split(a:cmdline, ' ')
    if part[0] =~ '\v[%#<]'
      let expanded_part = fnameescape(expand(part))
      let expanded_cmdline = substitute(expanded_cmdline, part, expanded_part, '')
    endif
  endfor
  botright new
  setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
  call setline(1, 'You entered:    ' . a:cmdline)
  call setline(2, 'Expanded Form:  ' .expanded_cmdline)
  call setline(3,substitute(getline(2),'.','=','g'))
  execute '$read !'. expanded_cmdline
  setlocal nomodifiable
  1
endfunction
"}}}

" Folding {{{
augroup vimrc
  au BufReadPre * setlocal foldmethod=indent
  au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
  au BufReadPre *.vimrc setlocal foldmethod=marker
augroup END
"}}}

" Reset spelling colours when reading a new buffer
" This works around an issue where the colorscheme is changed by .local.vimrc {{{
fun! SetSpellingColors()
  highlight SpellBad cterm=bold ctermfg=white ctermbg=red
  highlight SpellCap cterm=bold ctermfg=red ctermbg=white
endfun
autocmd BufWinEnter * call SetSpellingColors()
autocmd BufNewFile * call SetSpellingColors()
autocmd BufRead * call SetSpellingColors()
autocmd InsertEnter * call SetSpellingColors()
autocmd InsertLeave * call SetSpellingColors()
"}}}

" Change colourscheme when diffing {{{
fun! SetDiffColors()
  highlight DiffAdd    cterm=bold ctermfg=white ctermbg=DarkGreen
  highlight DiffDelete cterm=bold ctermfg=white ctermbg=DarkGrey
  highlight DiffChange cterm=bold ctermfg=white ctermbg=DarkBlue
  highlight DiffText   cterm=bold ctermfg=white ctermbg=DarkRed
endfun
autocmd FilterWritePre * call SetDiffColors()
"}}}

" Disable cursor line highlight
hi CursorLine ctermbg=NONE cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE

" illuminatedWord
hi illuminatedWord cterm=underline gui=underline
"hi link illuminatedWord Visual

hi CursorLineNr gui=none cterm=none guifg=yellow guibg=black

" Highlight GitGutter {{{
highlight GitGutterAdd    guifg=#009900 guibg=black ctermfg=2 ctermbg=black
highlight GitGutterChange guifg=#bbbb00 guibg=black ctermfg=3 ctermbg=black
highlight GitGutterDelete guifg=#ff2222 guibg=black ctermfg=1 ctermbg=black
"}}}

" Highlight match paren
hi MatchParen guibg=NONE guifg=yellow

" CursorLine number highlight
hi CursorLineNr gui=none cterm=none guifg=yellow guibg=black

" Custom CtrlP highlight {{{
let g:ctrlp_buffer_func = { 'enter': 'BrightHighlightOn', 'exit':  'BrightHighlightOff', }

function BrightHighlightOn()
  hi CursorLine guibg=darkred
endfunction

function BrightHighlightOff()
  hi CursorLine guibg=#191919
endfunction
"}}}

"}}}

