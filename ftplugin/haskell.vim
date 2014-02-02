" Tab specific option
set expandtab                   "Always uses spaces instead of tabs
set softtabstop=4               "Insert 4 spaces when tab is pressed
set shiftwidth=4                "An indent is 4 spaces
set smarttab                    "Indent instead of tab at start of line
set shiftround                  "Round spaces to nearest shiftwidth multiple
set nojoinspaces                "Don't convert spaces to tabs

setlocal omnifunc=necoghc#omnifunc

if executable('ghc-mod')
  map <buffer> K :GhcModInfoPreview<cr>
endif

" Not quite so helpful in fucking around code.
"autocmd BufWritePost *.hs GhcModCheckAndLintAsync
