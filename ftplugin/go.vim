if executable('Godoc')
  map <buffer> K :Godoc<cr>
endif

setlocal tabstop=4    " Number of spaces that a <Tab> in the file counts for.
setlocal shiftwidth=4 " Number of spaces to use for each step of (auto)indent

" For some reason the gocode bundle has this in it and yet does not work.
if executable('Fmt')
  au BufWritePre <buffer> :keepjumps Fmt
endif
