let mapleader = ' '
nnoremap <leader>f <cmd>Telescope find_files<cr>
nnoremap <leader>m <cmd>Telescope media_files<cr>
nmap <leader>e :Explore<cr>:e<cr>
nnoremap <leader>b <cmd>Telescope buffers<cr>
nnoremap <leader>a <cmd>Telescope live_grep<cr>
map <leader>s :norm "zyiw<cr> :%s/<C-r>z//g<left><left>
map <leader>vrc :vsplit ~/.config/nvim/init.vim<cr>
map <leader>vs :source ~/.config/nvim/init.vim<cr>
map <leader>md :Goyo 250<cr>

map qq <ESC>:q<cr>
nnoremap ss :w<cr>
nnoremap sa :wa<cr>
imap jj <ESC>
nnoremap zf zf%

nmap <leader>w <C-W>
map <C-h> <C-W>h
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l

map / <plug>(easymotion-sn)
omap / <plug>(easymotion-tn)
map  n <plug>(easymotion-next)
map  N <plug>(easymotion-prev)

nmap <silent> <leader>t :TestFile -strategy=kitty<cr>
nmap <silent> <leader>l :TestVisit<cr>

nmap <leader>g :G<cr>
nmap <leader>1 :diffget //1<cr>
nmap <leader>2 :diffget //2<cr>
nmap <leader>3 :diffget //3<cr>

nnoremap <silent> <Up> :resize +2<cr>
nnoremap <silent> <Down> :resize -2<cr>
nnoremap <silent> <Left> :vertical resize +2<cr>
nnoremap <silent> <Right> :vertical resize -2<cr>

vnoremap J :m '>+1<cr>gv=gv
vnoremap K :m '<-2<cr>gv=gv

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)

noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

language en_US.UTF-8

set termguicolors background=dark
set scrolloff=8
set sidescrolloff=8
set ruler
set nobackup nowritebackup noswapfile
set number relativenumber
set hidden " to prevent nagging 'No write since last change' message when switching buffers
set expandtab tabstop=2 softtabstop=2
set shiftwidth=2 " when indenting with '>', use 2 spaces width
set noshowmode " Hide mode (NORMAL, INSERT, REPLACE)
set encoding=utf-8 fileencoding=utf-8
set splitbelow splitright
set clipboard=unnamed " Use the system clipboard
set nowrap
set smartindent
set laststatus=2
set signcolumn=yes
set updatetime=300
set shortmess+=c

if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'wincent/terminus'
Plug 'tpope/vim-commentary'
Plug 'easymotion/vim-easymotion'
Plug 'editorconfig/editorconfig-vim'
Plug 'wincent/ferret', { 'on': ['Ack', 'Acks'] }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'lilydjwg/colorizer'
Plug 'vim-test/vim-test'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'tommcdo/vim-exchange'
Plug 'junegunn/vim-peekaboo'
Plug 'unblevable/quick-scope'
Plug 'terryma/vim-smooth-scroll'
Plug 'michaeljsmith/vim-indent-object'
call plug#end()

syntax enable
colorscheme gruvbox
filetype plugin indent on

let g:test#javascript#jest#executable = 'npm run test:watch'
let g:test#python#pytest#executable = 'make test'
let test#python#runner = 'pytest'
let g:test#preserve_screen = 1

let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_startofline = 0 " keep cursor column when JK motion
let g:EasyMotion_smartcase = 1 " Turn on case-insensitive feature

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <silent><expr> <c-space> coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

lua << EOF
require('telescope').setup{
  defaults = {
  }
}
