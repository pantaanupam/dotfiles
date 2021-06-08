syntax on

set splitbelow splitright               " Splits and Tabbed Files

set noerrorbells                        " no error messages
set tabstop=4 softtabstop=4             " One tab == four spaces
set shiftwidth=4                
set expandtab                           " Use spaces instead of tabs.
set smartindent
set nu                                  " Show line numbers
set relativenumber                      " set relative number on
set nowrap                              " Spill long text on to new line
set smartcase                           " case insensitivity search 
set noswapfile                          " no swap files
set nobackup                            
set undodir=~/.vim/undodir              " requires undodir in ~/.vim/undodir
set undofile                            
set incsearch                           " incremental search.. get result while typing
set clipboard=unnamedplus               " Copy/paste between vim and other programs.



call plug#begin('~/.vim/plugged')
Plug 'mbbill/undotree'                  " Undo tree
call plug#end()

