call plug#begin('{{ plug_path }}')
" General
Plug 'editorconfig/editorconfig-vim'
Plug 'connorholyday/vim-snazzy'

Plug 'vim-scripts/LargeFile'

" Tmux
Plug 'christoomey/vim-tmux-navigator'

" File explorer and tabs
Plug 'scrooloose/nerdtree'

" Comments
Plug 'preservim/nerdcommenter'

" Git
Plug 'tpope/vim-fugitive' " git commands
Plug 'junegunn/gv.vim' " git commit browser
Plug 'airblade/vim-gitgutter' " git diff sign

" Linters / Formatters
Plug 'w0rp/ale'

" Status line and Tabs
Plug 'bling/vim-airline'

" Search and Navigation
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'

" Autocomplete
function! BuildYCM(info)
  if a:info.status == 'installed' || a:info.force
    !python3 ./install.py --clang-completer --go-completer --ts-completer 
  endif
endfunction

Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
" Plug 'neovim/nvim-lsp'

" Quoting / Parenthesizing
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'

" Repeating
Plug 'tpope/vim-repeat'

" JavaScript
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'MaxMEllon/vim-jsx-pretty', { 'for': 'javascript' }
Plug 'HerringtonDarkholme/yats.vim', { 'for': ['typescript', 'typescriptreact'] }
Plug 'peitalin/vim-jsx-typescript', { 'for': 'typescript' }
" Plug 'styled-components/vim-styled-components', { 'branch': 'main',
"   \ 'for': ['typescript', 'typescriptreact'] }
Plug 'posva/vim-vue', { 'for': 'javascript' }
Plug 'jxnblk/vim-mdx-js', { 'for': 'markdown.mdx' }
Plug 'jparise/vim-graphql'

call plug#end()