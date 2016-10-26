" backgroud-color & font config
colorscheme evening
set guifont=Lucida_Console:h18


" encoding config, support utf-8
if has("multi_byte") 
    set encoding=utf-8 
    set termencoding=utf-8 
    set formatoptions+=mM 
    set fencs=utf-8,gbk 
    if v:lang =~? '^/(zh/)/|/(ja/)/|/(ko/)' 
        set ambiwidth=double 
    endif 
    if has("win32") 
        source $VIMRUNTIME/delmenu.vim 
        source $VIMRUNTIME/menu.vim 
        language messages zh_CN.utf-8 
    endif 
else 
    echoerr "Sorry, this version of (g)vim was not compiled with +multi_byte" 
endif


" Tab Configuration
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab

" backspace config
set backspace=indent,eol,start
