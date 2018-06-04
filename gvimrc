set background=dark
syntax on
colorscheme gruvbox
set guioptions=
set guifont=Meslo\ LG\ S\ for\ Powerline:h14

let &colorcolumn=join(range(81,999),",")
" highlight ColorColumn ctermbg=235 guibg=#2c2d27

set lines=24
set columns=90

autocmd! GUIEnter * set vb t_vb=
