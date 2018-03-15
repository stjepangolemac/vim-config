set expandtab
set shiftwidth=2
set softtabstop=2
set laststatus=2
set updatetime=250
set noshowmode
set ignorecase
set smartcase
syntax on

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
Plugin 'mxw/vim-jsx'
Plugin 'ianks/vim-tsx'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'kien/ctrlp.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'airblade/vim-gitgutter'
Plugin 'mhinz/vim-startify'
Plugin 'morhetz/gruvbox'
Plugin 'fatih/vim-go'
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}

call vundle#end()
filetype plugin indent on
" Vundle plugins end

" Powerline
let g:Powerline_symbols = 'fancy'
" Powerline

" ALE configuration
let g:ale_fixers = { 'javascript': ['eslint'], 'typescript': ['tslint'] }
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_sign_error = '●' 
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0
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
let g:ctrlp_map = '<C-s>'
let g:ctrlp_custom_ignore = 'node_modules\|git\|DS_Store'
" CtrlP configuration

" Indent guides configuration
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
" Indent guides configuration

" Theme configuration
let g:gruvbox_contrast_dark = 'soft'
let g:gruvbox_improved_strings = '1'
let g:gruvbox_improved_warnings = '1'
" Theme configuration

" Remaps
noremap % v%
noremap [[ :ALEGoToDefinition<CR>
inoremap jj <Esc>
map <C-n> :NERDTreeToggle<CR>
map <S-f> :ALEFix<CR>
" Remaps end

" This need to be at the end
packloadall
silent! helptags ALL
