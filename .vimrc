syntax on

set guicursor=
set noshowmatch
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set ignorecase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set laststatus=2 " To make the lightline work
set noshowmode " To remove duplication of mode
set cmdheight=1
set updatetime=50
set shortmess+=c

set colorcolumn=90
highlight ColorColumn ctermbg=0 guibg=lightgrey

" VIM-PLUG AUTO-INSTALL

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" PLUGINS TO INSERT

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'gruvbox-community/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
call plug#end()

colorscheme gruvbox
set termguicolors " Add True Color Support
set bg=dark

map <silent> <leader><leader> :nohlsearch<cr>

let loaded_matchparen = 1
let mapleader = " "

let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25

nnoremap <leader>h :winc h<CR>
nnoremap <leader>j :winc j<CR>
nnoremap <leader>k :winc k<CR>
nnoremap <leader>l :winc l<CR>

nnoremap <leader>prr :CocSearch <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>phw :h <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <Leader>ps :Rg<SPACE>
nnoremap <leader>pw :Rg <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <Leader>pf :Files<CR>
nnoremap <Leader>pd :Files ~/<CR>
nnoremap <Leader><CR> :so ~/.vimrc<CR>
" nnoremap <leader>w :w<CR>
nnoremap <leader>9 :bd<CR>
nnoremap <leader>e :clo<CR>

nnoremap <A-v> :vs<bar>:winc l<CR>
nnoremap <A-h> :sp<bar>:winc k<CR>
nnoremap <leader>= :vertical res +10<CR>
nnoremap <leader>- :vertical res -10<CR>

nnoremap <leader>1 :bp<CR>
nnoremap <leader>2 :bn<CR>
nnoremap <leader>3 :tabp<CR>
nnoremap <leader>4 :tabn<CR>
nnoremap <leader>5 :Buffers<CR>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" vim ToDo
nmap <C-Q> <Plug>BujoChecknormal
nmap <C-S> <Plug>BujoAddnormal
nnoremap <C-T> :Todo <CR>

let g:bujo#todo_file_path = $HOME . "/.cache/bujo"

" Vim with me
nnoremap <leader>ox :colorscheme gruvbox<bar>:set background=dark<CR>
nnoremap <leader>mk :colorscheme monokai_pro<bar>:set background=dark<CR>
nmap <leader>vtm :highlight Pmenu ctermbg=gray guibg=gray

vnoremap X "_d
inoremap <C-c> <esc>

function! s:check_back_space() abort
        let col = col('.') - 1
            return !col || getline('.')[col - 1]  =~# '\s'
        endfunction

        inoremap <silent><expr> <TAB>
                    \ pumvisible() ? "\<C-n>" :
                    \ <SID>check_back_space() ? "\<TAB>" :
                    \ coc#refresh()

command! -nargs=0 Prettier :CocCommand prettier.formatFile
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
noremap <silent><expr> <C-space> coc#refresh()

" GoTo code navigation.
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>rr <Plug>(coc-rename)
nmap <leader>rpr :CocSearch <C-R>=expand("<cword>")<CR><CR>
nmap <leader>g[ <Plug>(coc-diagnostic-prev)
nmap <leader>g] <Plug>(coc-diagnostic-next)
nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev-error)
nmap <silent> <leader>gn <Plug>(coc-diagnostic-next-error)
nnoremap <leader>cr :CocRestart

" Vim Fugitive
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>

fun! TrimWhitespace()
        let l:save = winsaveview()
            keeppatterns %s/\s\+$//e
                call winrestview(l:save)
endfun

augroup highlight_yank
        autocmd!
            autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank("IncSearch", 50)
        augroup END

        autocmd BufWritePre * :call TrimWhitespace()

let g:user_emmet_leader_key=','
let g:user_emmet_mode='n'

