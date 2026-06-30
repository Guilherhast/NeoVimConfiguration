" # Load plugins
" ## Loader

" Uncomment for allowing plugins
finish

call ExpandSource("plugins/plug.vim")

" ## Interface behaviour
call ExpandSource("plugins/coc.vim")
call ExpandSource("plugins/emmet.vim")
call ExpandSource("plugins/sneak.vim")
call ExpandSource("plugins/fuzzyfinder.vim")
call ExpandSource("plugins/fugitive.vim")

" ## Interface apearence
call ExpandSource("plugins/airline.vim")

" ## External tools
call ExpandSource("plugins/rg.vim")
call ExpandSource("plugins/instantMarkDown.vim")

" ## OS depedent configurations
call ExpandSource("plugins/osDependent.vim")

