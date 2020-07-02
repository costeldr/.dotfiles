" Install Vim-Plug if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
	  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
	      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-surround'
call plug#end()

" Lightline configuration
set laststatus=2
set noshowmode

" Lightline status bar colorscheme choice
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ }

" Gruvbox Configuration
" add other gruvbox options before the 'set colorscheme gruvbox' line
colorscheme gruvbox
