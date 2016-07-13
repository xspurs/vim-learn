" Duan Xiaoxing's VIM Configuration

" Tab Configuration
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab

set paste
set nu
" Auto Complete Configuration
" @See: Skill 32(P60)
" set wildmode=longest,list
set wildmode=full
set history=200
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
set hidden

" Mouse Configuration
" @See :h mouse
set mouse=a

" @See: P89
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" Use <C-l> to clear /search highlight
" @See: P189
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
" Auto Move Cusor
" @See: P190
set incsearch

" Allow Plugin
set nocompatible
filetype plugin on
runtime macros/matchit.vim
" Third-Party Plugin Installed
" vim-pathogen  @See: https://github.com/tpope/vim-pathogen
" supertab  @See: https://github.com/ervandew/supertab
" vim-surround  @See: https://github.com/tpope/vim-surround
" syntastic  @See: https://github.com/scrooloose/syntastic

" vim-pathogen Configuration
" @See: https://github.com/tpope/vim-pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on


"Use <Leader> / <leader> to Customize combo
"In normal mode, \ee Can load ~/.vimrc into the Buffer
map <silent> <leader>ee :e ~/.vimrc<cr>

" Set tabstop, softtabstop and shiftwidth to the same value
command! -nargs=* Stab call Stab()
function! Stab()
  let l:tabstop = 1 * input('set tabstop = softtabstop = shiftwidth = ')
  if l:tabstop > 0
    let &l:sts = l:tabstop
    let &l:ts = l:tabstop
    let &l:sw = l:tabstop
  endif
  call SummarizeTabs()
endfunction
nmap <C-S-Tab> :call SummarizeTabs()<CR>
function! SummarizeTabs()
  try
    echohl ModeMsg
    echon 'tabstop='.&l:ts
    echon ' shiftwidth='.&l:sw
    echon ' softtabstop='.&l:sts 
    if &l:et
      echon ' expandtab'
    else
      echon ' noexpandtab'
    end
  finally
    echohl None
  endtry
endfunction


