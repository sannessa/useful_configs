syntax on
"filetype plugin indent on
filetype plugin on
execute pathogen#infect()
set nocompatible
match Todo /\s\+$/
set paste
set ruler
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

autocmd BufWritePre *.py,*.js,*.rb,*.rake,*.yaml,*.yml,*.c,*.h,*.cpp,*.haml,*.css,*.sass,*.html,*.php,*.perl,*.pp,*.cfg,*.conf,*.clj,*.java,*.scala :call <SID>StripTrailingWhitespaces()

set ls=2

" this highlights all parts of the line longer than 120 chars
highlight OverLength ctermbg=darkred ctermfg=white guibg=#592929
match OverLength /\%121v.\+/

set autoindent
set cindent
set expandtab
set softtabstop=2
set shiftwidth=2

"this highlights all no-space characters and can be turned on and off by :set list
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
