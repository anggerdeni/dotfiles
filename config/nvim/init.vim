" hello front end masters
set path+=**

" Nice menu when typing `:find *.py`
set wildmode=longest,list,full
set wildmenu
" Ignore files
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*

source /Users/fa-14764/.config/nvim/plugins.vim
source /Users/fa-14764/.config/nvim/settings.vim
source /Users/fa-14764/.config/nvim/mapping-default.vim
source /Users/fa-14764/.config/nvim/mapping-vim-snip.vim
source /Users/fa-14764/.config/nvim/autocommands.vim

:lua require'lspconf/treesitter'
:lua require'lspconf/completion'
