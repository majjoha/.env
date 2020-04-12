" Enable Flow checking
let g:flow#enable = 0

" Do not add `//` on a new line when hitting `o` on a commented line
setlocal formatoptions-=o

" Use `node --check` to run syntax check
setlocal makeprg=node\ --check\ %
