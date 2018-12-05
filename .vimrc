"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/junichi_wakasa/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/junichi_wakasa/.cache/dein')
  call dein#begin('/Users/junichi_wakasa/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/junichi_wakasa/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')
  call dein#add('cocopon/iceberg.vim')
  call dein#add('AndrewRadev/switch.vim')
  call dein#add('alpaca-tc/alpaca_tags')
  call dein#add('tpope/vim-rails')
  call dein#add('alpaca-tc/vim-endwise.git')
  call dein#add('basyura/unite-rails')
  call dein#add('tpope/vim-dispatch')
  call dein#add('thoughtbot/vim-rspec')
  call dein#add('thoughtbot/vim-rspec')
  call dein#add('scrooloose/syntastic')
  call dein#add('ruby-formatter/rufo-vim')
  call dein#add('scrooloose/nerdtree')
  call dein#add('ryanoasis/vim-devicons')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

colorscheme iceberg

let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['ruby'] }
let g:syntastic_ruby_checkers=['rubocop', 'mri']

set autoindent smartindent
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=0

let g:rufo_auto_formatting = 1

nnoremap <silent><C-e> :NERDTreeToggle<CR>
let NERDTreeShowHidden = 1

nnoremap <C-n> gt
nnoremap <C-p> gT
nnoremap <C-c> :tabclose<CR>


" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------
