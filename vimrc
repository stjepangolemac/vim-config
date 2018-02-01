set expandtab
set shiftwidth=2
set softtabstop=2

let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27

set number
set relativenumber

" Vundle plgins
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'w0rp/ale'
Plugin 'leafgarland/typescript-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'kien/ctrlp.vim'

call vundle#end()
filetype plugin indent on
" Vundle plugins end

" ALE configuration
let g:ale_fixers = { 'javascript': ['eslint'] }
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
" ALE configuration end

" Javascript configuration
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
" javascript configuration end

" NerdTree configuration
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = '⇲'
" NerdTree configuration end

" CtrlP configuration
let g:ctrlp_map = '<c-s>'
let g:ctrlp_custom_ignore = 'node_modules\|git\|DS_Store'
" CtrlP configuration

" Remaps
noremap % v%
imap jj <Esc>
map <C-n> :NERDTreeToggle<CR>
map <S-f> :ALEFix<CR>
" Remaps end

" This need to be at the end
packloadall
silent! helptags ALL
