call pathogen#infect()
syntax on
filetype plugin indent on

autocmd vimenter * if !argc() | NERDTree | endif
