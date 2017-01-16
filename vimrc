" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

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


