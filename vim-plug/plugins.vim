 " auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " One dark theme
    Plug 'joshdick/onedark.vim'
    " Stable version of coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Keeping up to date with master
    Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
    " Airline themes for neovim
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Ranger plugin
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
    " Install commentary
    Plug 'tpope/vim-commentary'
    " vim-rooter and FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    " Project management with startify
    Plug 'mhinz/vim-startify'

call plug#end()