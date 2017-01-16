"Display line number
set number
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

"Set cscopetag
set cscopetag
set csto=1
if filereadable("cscope.out")
	cs add cscope.out
 elseif $CSCOPE_DB !=""
	cs add $CSCOPE_DB
endif
set cscopeverbose

"Set cscopetag hot key
"?
nnoremap <F4> :cs find t <C-R>=expand("<cword>")<CR><CR>
"Find flags from global
nnoremap <F5> :cs find s <C-R>=expand("<cword>")<CR><CR>
"Find function or variable definition
nnoremap <F6> :cs find g <C-R>=expand("<cword>")<CR><CR>
"Find function or variable used
nnoremap <F7> :cs find c <C-R>=expand("<cword>")<CR><CR>
"Find function or variable definition in this function
nnoremap <F8> :cs find d <C-R>=expand("<cword>")<CR><CR>


"Set Taglist
nnoremap <F9> :TlistToggle<CR><CR>
let Tlist_Show_One_File=0
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1
let Tlist_File_Fold_Auto_Close=1
