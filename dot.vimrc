"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" configurations for python IDE in VIM
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" End of configurations for python IDE in VIM
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set expandtab
set tabstop=4
set shiftwidth=4

set smartindent

set nocompatible 

"turn off mouse in non-gui VIM if has("gui_running")
    "echo "yes, we have a GUI"
    set mouse=a
else
    "echo "Boring old console"
    set mouse=
endif
    
filetype plugin on 
syntax on 

set nu

set csprg=/usr/bin/cscope

let g:HAMMER_BROWSER='/usr/bin/chromium-browser'

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 



if !has("python")
    finish
endif

function! SayHello()
python << EOF
# -*- coding: utf-8 -*-

def SayHello():
    print("你好，李维!")
    print(MyVim.HELLO)

SayHello()
EOF
endfunction

python << EOF
# -*- coding: utf-8 -*-
import os
import sys
sys.path.append("%s/.vim/python/"%os.environ["HOME"])
import MyVim #try import
EOF

