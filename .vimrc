" Note: Skip initialization for vim-tiny or vim-small.
 if 0 | endif

 if has('vim_starting')
   if &compatible
     set nocompatible               " Be iMproved
   endif

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!
 NeoBundle 'bling/vim-airline'
 NeoBundle 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}
 NeoBundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}

 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck

 " Remove search highlight by pressing <esc><esc>
 nnoremap <silent> <Esc><Esc> :let @/=""<CR>



 " turn on tabline when using buffers
 let g:airline#extensions#tabline#enabled = 1
 
 " color scheme
 syntax enable
 colorscheme molokai

 "let g:airline_powerline_fonts = 1




 set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

 " Always show statusline
 set laststatus=2

 " Use 256 colours (Use this setting only if your terminal supports 256
 " colours)
 set t_Co=256

 " Show line numbers
 set number

 " Show the matching when doing a search
 set showmatch

 " Ignore case when doing a search as well as highlight it as it is typed
 set ignorecase smartcase
 set hlsearch
 set incsearch

 " Use smarter defaults
 set smartindent
 set smarttab

 "set wildmode=longest,list,full

 set encoding=utf-8
