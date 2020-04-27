"---------------------------------------------
" Basic options 
"---------------------------------------------
filetype indent plugin on "detect ft, load ftpfile and indent
syntax on " syntax highlighting on

set langmenu=en_US
set hidden " be able to switch buffers without file save
set showcmd " shows command in the last line
set nostartofline " some command move to the first non-blank line
set number " line number on
set clipboard=unnamedplus " allow copy paste system <-> nvim

set exrc " enable project specific .nvimrc files
set secure " disable write/shell commands in those files

set splitbelow " put the new window below the current one
set splitright " put the new window right of the current one

" Snazzy theme settings
set termguicolors
set t_Co=256
set background=dark
colorscheme snazzy
let g:SnazzyTransparent = 1
color snazzy

set autoindent " copy indent from current line when starting a new line
set smarttab " <Tab> in front of a line inserts blanks according to 'shiftwidth'
set expandtab " spaces instead of tabs
set softtabstop=2 " the number of spaces to use when expanding tabs
set shiftwidth=2 " the number of spaces to use when indenting -- or de-indenting -- a line
set tabstop=2 " the number of spaces that a tab equates to

" Folding
set foldmethod=syntax " fold is defined by syntax
set foldcolumn=1 " width of fold column
set foldlevelstart=99 " don't close folds

" Autocomplete
"set completeopt=menu,preview
set completeopt=menuone,preview
autocmd CompleteDone * pclose

set conceallevel=0

" Disable unused provider
let g:loaded_ruby_provider = 0
let g:loaded_perl_provider = 0
let g:loaded_python_provider = 0

"---------------------------------------------
" Python provider
"---------------------------------------------
let g:python3_host_prog = '{{ python3_venv_path | expanduser }}/bin/python'

"---------------------------------------------
" Nodejs provider
"---------------------------------------------
let g:node_host_prog = '~/node_modules/neovim/bin'

"---------------------------------------------
" Nerd tree
"---------------------------------------------
let NERDTreeShowHidden=1 " show hidden files
let g:NERDTreeAutoDeleteBuffer = 1 " delete buffer when delete file

"---------------------------------------------
" Airline options for tabs
"---------------------------------------------
let g:airline_section_c = '%t'
let g:airline#extensions#branch#enabled = 0
let g:airline#extensions#hunks#enabled=0

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#tab_min_count = 2
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#tabs_label = ''
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tab_count = 0
let g:airline#extensions#tabline#show_close_button = 0


"---------------------------------------------
" Autopair
"---------------------------------------------
let g:AutoPairsShortcutToggle = ''


"---------------------------------------------
" Git
"---------------------------------------------
set updatetime=500 " update time for git gutter