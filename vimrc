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

autocmd BufWritePre *.py,*.js,*.rb,*.rake,*.yaml,*.yml,*.c,*.h,*.cpp,*.haml,*.css,*.sass,*.html,*.php,*.perl,*.pp,*.cfg,*.conf,*.clj,*.java :call <SID>StripTrailingWhitespaces()

set ls=2

highlight OverLength ctermbg=darkred ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

set autoindent
set cindent
set shiftwidth=2

"set list listchars=tab:\|\ 
"highlight Whitespace cterm=none gui=none ctermbg=grey guibg=NONE ctermfg=yellow guifg=yellow
"autocmd ColorScheme * highlight Whitespace gui=underline ctermbg=NONE guibg=NONE ctermfg=yellow guifg=yellow
"match Whitespace /^  \+/     
