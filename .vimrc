set nu 			" Display line numbers
set cursorline		" Display line under current cursor location
set tabstop=4       " Tab = 4 Whitespaces         
set hlsearch		" Enable Highlighting when search
syntax on			" Enable Syntax Text-Highlighting
set laststatus=2	" Set status line to always on
set statusline+=%F	" Show full path of file in status line
" Show all charecters like tabs, end of line, etc. (custom command)
command ShowSpecChars set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:< | set list

" Statusline is red, if file is Read-Only
function ChangeStatusLineColorIfFileReadOnly()
     if &readonly
         hi StatusLine ctermbg=gray ctermfg=red
     endif
 endfunction
 au BufReadPost * call ChangeStatusLineColorIfFileReadOnly()
